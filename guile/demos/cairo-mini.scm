
;; how to run
;;
;; in terminal outside emacs and everything else do this
;;
;; > export LTDL_LIBRARY_PATH="$DEVELOPER/pixelformat/"
;;
;; this will enable guile to find the essential libpixelformat.so shared library we make
;; so we can then go on and dynamically load libSDL2.so the provided SDL2 shared library 
;;
;;  in gieser we set variable  { geiser-guile-init-file } to point to geiser-init-file.scm
;; at toplevel of this project
;;
;; in geiser  - just need to C-c C-z and geiser starts
;; > (cairo) ... eventually should have some graphics + cairo up and running ... 
;;
;; dependencies 
;; 1. libpixelformat.so   
;;  
;;
;; /opt/guile/lib/guile/3.0/extensions/
;; └── libpixelformat.so   <<--- this has %img-load which we need
;; 
;; 
;; macro files pre-installed at /opt/guile/share/guile/site/3.0/macros
;;  
;; /opt/guile/share/guile/site/3.0/macros
;; ├── fcase.scm
;; └── inc.scm
;;
;; sdl ffi files in graphics directory
;;  
;; ├── graphics
;; │   └── sdl2.scm
;; ├── demos
;; │   └── unix-less.scm
;;  
;; rlwrap guile -L ../ --
;; > (load "unix-less.scm")
;;
;; %load-compiled-path  -- where .go files go
;; %load-path --- where source code goes
;; GUILE_EXTENSIONS_PATH
;; (dirname (current-filename))
;; (add-to-load-path)
;; Variable: %load-path
;; List of directories which should be searched for Scheme modules and libraries. When Guile starts up, %load-path is initialized to the default load path (list (%library-dir) (%site-dir) (%global-site-dir) (%package-data-dir)). The GUILE_LOAD_PATH environment variable can be used to prepend or append additional directories (see Environment Variables).
;; (chdir "src")
;; (getcwd)
;; (load "demos/cairo.scm")
;;
(use-modules (ice-9 optargs)) ;; optional args
(use-modules (system foreign)) ;; %null-pointer
(use-modules (system foreign-library))
(use-modules (rnrs bytevectors))

;; add macros into load path
;; assuming not already in load path
;;(add-to-load-path (getenv "DEVELOPER"))
;;(add-to-load-path (string-append (getenv "DEVELOPER") "/pixelformat"))

;; enable (use-modules (macros inc))
;; enables (use-modules (macros fcase))

;; this actually works
;;(load-foreign-library (string-append (getenv "DEVELOPER") "/pixelformat/" "libpixelformat.so"))
;;(#:search-path (string-append (getenv "DEVELOPER") "/pixelformat")))
;; should hopefully enable use of (use-modules (graphics sdl2))


(use-modules (ice-9 format))
(use-modules (macros fcase))
(use-modules (macros inc))
;; use sdl graphics module
(use-modules (graphics sdl2))  
;; read-line
(use-modules (ice-9 rdelim))
;; pp pretty printer  
(use-modules (ice-9 pretty-print)) 
(define pp pretty-print)

(define (setup) #f)


(define *keyboard-fn-vector* (make-vector 516 #f)) ;; somewhat largeer than 512

(define (register-keyboard-fn i fn)
  (vector-set! *keyboard-fn-vector* i fn))

;; if there is a procedure at index i in keyboard-fn-vector then call that procedure of no args
(define (call-keyboard-fn i)
  (let ((fn (vector-ref *keyboard-fn-vector* i)))
    (when (procedure? fn)
      (fn))))


(define (make-sdl-rect x y w h)
  (let* ((size 16)
	 (bv (make-bytevector size 0)))
    (bytevector-s32-native-set! bv 0 x);; x
    (bytevector-s32-native-set! bv 4 y);; y
    (bytevector-s32-native-set! bv 8 w);; width
    (bytevector-s32-native-set! bv 12 h);; height
    bv))

(define (make-sdl-rect-pointer x y w h)
  (bytevector->pointer (make-sdl-rect x y w h)))


(define (make-sdl-color red green blue)  (logior (ash red 16) (ash green 8) blue))


(define *mouse-x* 0)
(define *mouse-y* 0)

;; 640 x 480
(define *screen-width* 640)
(define *screen-height* 480)


(define (simple-procedure x)
 " SDL_Surface* SDL_CreateRGBSurface
    (Uint32 flags, int width, int height, int depth,
     Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);
Function Parameters
Uint32	flags	the flags are unused and should be set to 0.
int	width	the width of the surface.
int	height	the height of the surface.
int	depth	the depth of the surface in bits.
Uint32	Rmask	the red mask for the pixels.
Uint32	Gmask	the green mask for the pixels.
Uint32	Bmask	the blue mask for the pixels.
Uint32	Amask	the alpha mask for the pixels."
  (+ x 2))


(define (cairo)  
  (let ((font-size 12)
	(lines-per-screen 44) ;; how many lines per screen do we have ??
	(chars-per-line 80) ;; wrapping 80 chars in 
	(screen-width 640)
	(screen-height 480))

    (define event-counter 0)
    
    (define init-result (sdl-init *sdl-init-video*))
    (format #t "init-result ~a~%" init-result)
    
    ;; (define image-init-result (image-init))
    ;; (format #t "image-init-result ~a~%" image-init-result)

    ;; (define ttf-init-result (ttf-init))
    ;; (format #t "ttf-init-result ~a~%"  ttf-init-result)    
    ;; (cond
    ;;  ((zero? ttf-init-result) 'ok)
    ;;  (#t (format #t "ttf-init error~%")))
    
    (define window (create-window "cairo demonstration window 0.1a" screen-width screen-height))
    (define render (%sdl-create-renderer window -1 
					 (logior *sdl-renderer-accelerated*  *sdl-renderer-present-vsync*)))
    (cond
     ((equal? render %null-pointer)   (format #t "create render failed !~%"))
     (#t (format #t "created render success !~%")))
    
    
    (define surface (create-rgb24-surface screen-width screen-height))
    (cond
     ((equal? surface %null-pointer)
      (format #t "surface failed to be created!~%"))
     (#t (format #t "surface ok~%")))

    (define cairo-surface (cairo-image-surface-create-for-data (surface-pixels surface)
							       *cairo-format-rgb24*
							       ;;*cairo-format-argb32* ;;
							       (surface-width surface)
							       (surface-height surface)
							       (surface-pitch surface)))

    (format #t "cairo surface ~a~%" cairo-surface)     
    (define cr cairo-surface) 

    ;; (define font %null-pointer)
    ;; (let ((the-font "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf"))
    ;;   (set! font (ttf-open-font (string->pointer the-font) font-size))
    ;;   (cond
    ;;    ((equal? font %null-pointer)
    ;; 	(format #t "ttf font error cannot open font {~a}~%" the-font))
    ;;    (#t (format #t "ttf ~a obtained ok~%" the-font))))
    
    (define quit #f)

    (sdl-show-cursor 0) ;; 0=false 1=truthy
    ;; poll
    ;; create a C union struct the size of SDL_Event
    ;; and then manually populate struct obviating advantages of
    ;; make SDL_Event which is 36 bytes in size
    (define event (let ((size 36)(fill 0))
		    (make-bytevector size fill)))

    (define first-run #t)

    (define cairo-texture %null-pointer)
    
    (while (not quit)
	   ;; poll for an event
	   (while (not (= 0 (sdl-poll-event (bytevector->pointer event))))
		  ;; if was new event then {event} itself will have the contents of it
		  ;; (endianness big)
	          ;; (endianness little)
	          (inc! event-counter)
		  (let ((type (bytevector-u32-native-ref event 0)))
		    (cond
		     ((= type *sdl-quit*) ;; ======== quit event ==================
		      (format #t "the user quit the application !~%")
		      ;; if we quit - set quit flag to true and exit
		      (let ((type (bytevector-u32-native-ref event 0))
			    (timestamp (bytevector-u32-native-ref event 4)))
			(set! quit #t)))
		     ((= type *sdl-window-event*) ;; ======== window event ==================
		      (let ((type (bytevector-u32-native-ref event 0))
			    (timestamp (bytevector-u32-native-ref event 4))
			    (windowid (bytevector-u32-native-ref event 8))
			    (event (bytevector-u8-ref event 12))
			    (padding1 (bytevector-u8-ref event 13))
			    (padding2 (bytevector-u8-ref event 14))
			    (padding3 (bytevector-u8-ref event 15 ))
			    (data1 (bytevector-s32-native-ref event 16 ))
			    (data2 (bytevector-s32-native-ref event 20 )))
			;; what is the original window id ??
			;;(format #t "window event ~a ~%" event)
			;;(case event			
			(fcase event
			       ((*sdl-window-event-none*) (format #t "window event ~a none~%" event-counter))
			       ((*sdl-window-event-shown*) (format #t "window event ~a shown ~%" event-counter))
			       ((*sdl-window-event-hidden*) (format #t "window event ~a hidden ~%" event-counter))
			       ((*sdl-window-event-moved*) (format #t "window event ~a moved ~a ~a~%" event-counter data1 data2))
			       ((*sdl-window-event-exposed*) (format #t "window event ~a exposed~%" event-counter ))
			       ((*sdl-window-event-resized*) (format #t "window event ~a resized~%" event-counter ))
			       ((*sdl-window-event-changed*) (format #t "window event ~a changed~%" event-counter ))
			       ((*sdl-window-event-minimized*) (format #t "window event ~a minimized~%" event-counter ))
			       ((*sdl-window-event-maximized*) (format #t "window event ~a maximized~%" event-counter ))
			       ((*sdl-window-event-restored*) (format #t "window event ~a restored~%" event-counter ))
			       ((*sdl-window-event-enter*) (format #t "window event ~a enter~%" event-counter ))
			       ((*sdl-window-event-leave*) (format #t "window event ~a leave~%" event-counter ))
			       ((*sdl-window-event-focus-gained*) (format #t "window event ~a focus gained~% " event-counter ))
			       ((*sdl-window-event-focus-lost*) (format #t "window event ~a focus lost~%" event-counter ))
			       ((*sdl-window-event-close*) (format #t "window event ~a close~%" event-counter ))
			       ((*sdl-window-event-take-focus*) (format #t "window event ~a take focus~%" event-counter ))
			       ((*sdl-window-event-hit-test*) (format #t "window event ~a hit test~%" event-counter ))
			       ((*sdl-window-event-icc-prof-changed*) (format #t "window event ~a icc prof changed ~%" event-counter ))
			       ((*sdl-window-event-display-changed*) (format #t "window event ~a display changed~%" event-counter ))
			       (else (format #t "window event ~a something else happended ~%" event-counter)))
			#t)) ;; ==== end of window event ===

		     ((= type *sdl-keydown*) ;; ======== keydown event ==================
		      (let ((type (bytevector-u32-native-ref event 0))
			    (timestamp (bytevector-u32-native-ref event 4))
			    (windowid (bytevector-u32-native-ref event 8))
			    (state (bytevector-u8-ref event 12))
			    (repeat (bytevector-u8-ref event 13))
			    (padding2 (bytevector-u8-ref event 14))
			    (padding3 (bytevector-u8-ref event 15 ))
			    (keysym-scancode (bytevector-u32-native-ref event 16 ))
			    (keysym-sym (bytevector-s32-native-ref event 20 ))
			    (keysym-mod (bytevector-u16-native-ref event 24 )))

			;; do something first time this is run
			(when first-run
			  ;; allows us to escape the gui event loop easily
			  (register-keyboard-fn *sdl-scancode-escape*
						(lambda () (set! quit #t)(format #t "user quit ! ~%")))
			  ;; do something press left right
			  (register-keyboard-fn *sdl-scancode-right* (lambda () #f))
			  (register-keyboard-fn *sdl-scancode-left*  (lambda () #f))
			  
			  (set! first-run #f))
			
			;; call relevant key handler
			(call-keyboard-fn keysym-scancode)
			#|
			(cond
			((= keysym-scancode *sdl-scancode-a*) (format #t "user pressed A key !~%"))
			((= keysym-scancode *sdl-scancode-b*) (format #t "user pressed B key !~%"))
			((= keysym-scancode *sdl-scancode-c*) (format #t "user pressed C key !~%"))
			((= keysym-scancode *sdl-scancode-d*) (format #t "user pressed D key !~%"))
			((= keysym-scancode *sdl-scancode-e*) (format #t "user pressed E key !~%"))
			(#t (format #t "user pressed key (scancode ~a) !~%" keysym-scancode)))
			|#
			
			))
		     ((= type *sdl-keyup*) ;; ======== keyup event ==================
		      ;;(format #t "the user released a key !~%")
		      #f
		      )
		     ((= type *sdl-mousemotion*) ;; ======== mouse motion event ==================
		      (let ((type (bytevector-u32-native-ref event 0 ))
			    (timestamp (bytevector-u32-native-ref event 4 ))
			    (windowid (bytevector-u32-native-ref event 8 ))
			    (state (bytevector-u32-native-ref event 12 ))
			    (x (bytevector-s32-native-ref event 20 ))
			    (y (bytevector-s32-native-ref event 24 ))
			    (xrel (bytevector-s32-native-ref event 28 ))
			    (yrel (bytevector-s32-native-ref event 32 )))
			;;(format #t "mouse move (~a ~a ~a ~a " type timestamp windowid state)
			;;(format #t " (pos:~a ~a) (rel:~a ~a) ~%" x y xrel yrel)
			(set! *mouse-x* x)
			(set! *mouse-y* y)))
		     (#t #f))))

	   ;; blue color
	   ;;(sdl-set-render-draw-color render #x00 #x00 #xFF #xFF)

	   ;; white
	   ;; (sdl-set-render-draw-color render #xFF #xFF #xFF #xFF)
	   (format #t "starting to clear screen ~%")

	   
	   ;; clear screen 
	   (sdl-render-clear render)
	   (format #t "screen render clear ~%")
	   
	   (format #t "setting source rgba ~%")
	   (cairo-set-source-rgba cr 1 1 1 1) ;; should be doubles ?
	   (format #t "set source rgba ~%")

	   (cairo-rectangle cr 200 200 50 100)
	   (format #t "cairo rectangle ~%")

	   (cairo-fill cr)
	   (format #t "cairo fill ~%")

	   ;; making texture from cairo-surface or surface ?
	   (set! cairo-texture (sdl-create-texture-from-surface render cairo-surface))
	   (when (not (equal? cairo-texture %null-pointer))
	     (sdl-render-copy render cairo-texture %null-pointer %null-pointer))  
	   ;; (format #t "cairo texture = ~a~%" cairo-texture)
	   
	   ;; free - what surface ??
	   
	   (sdl-render-present render)

	   (when (not (equal? cairo-texture %null-pointer))
	     (sdl-destroy-texture cairo-texture)
	     (set! cairo-texture %null-pointer))

	   (sleep 5)
	   (set! quit #t)
		      
	   
	   ) ;; while not quit 
    ;; cleanup
    ;; (ttf-close-font font)	     
    ;; (sdl-free-surface hello-bitmap)
    
    (sdl-destroy-renderer render)
    (sdl-destroy-window window)
    
    ;; (ttf-quit)
    ;; (img-quit)
    (sdl-quit)))

#|

(cairo)


|#
