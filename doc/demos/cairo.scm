; dependencies 
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
;; 
(use-modules (system foreign)) ;; %null-pointer
(use-modules (system foreign-library))
(use-modules (rnrs bytevectors))

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
	(screen-width 1024)
	(screen-height 768))
    

    ;;(pretty-print buffer)

    (define event-counter 0)
    
    (define mTexture %null-pointer)
    (define mTexture-width 0)
    (define mTexture-height 0)
    
    (define init-result (sdl-init *sdl-init-video*))
    (format #t "init-result ~a~%" init-result)
    
    (define image-init-result (image-init))
    (format #t "image-init-result ~a~%" image-init-result)

    (define ttf-init-result (ttf-init))
    (format #t "ttf-init-result ~a~%"  ttf-init-result)    
    (cond
     ((zero? ttf-init-result) 'ok)
     (#t (format #t "ttf-init error~%")))
    
    (define window (create-window "cairo demonstration window 0.1a" screen-width screen-height))
    (define render (create-renderer window))    
    (cond
     ((equal? render %null-pointer)   (format #t "create render failed !~%"))
     (#t (format #t "created render success !~%")))

    ;; why load texture?
    (define texture (load-texture "zxspectrum.png" render))
    (format #t "texture created ~a~%" texture)

    ;; why need surface?
    (define surface (sdl-get-window-surface window))

    ;; simple sdl2 + cairo tutorial
    ;; https://github.com/tsuu32/sdl2-cairo-example/blob/master/sdl2-cairo.c
    ;;(define tmp-surface (sdl-create-rgb-surface
    
    ;; (define tmp-surface (sdl-create-rgb-surface 0
    ;; 						screen-width
    ;; 						screen-height
    ;; 						(let ((pitch 32)) pitch)
    ;; 						0x00ff0000
    ;; 						0x0000ff00
    ;; 						0x000000ff
    ;; 						0))
    (define tmp-surface (create-rgb-surface screen-width screen-height))
    
    ;; error check tmp-surface
    (cond
     ((equal? tmp-surface %null-pointer)
      (format #t "tmp surface failed to be created!~%"))
     (#t (format #t "tmp surface ok~%")))

    ;; FIXME TODO
    ;;(sdl-create-rgb-surface
   
    ;; cairo_image_surface_create_for_data((unsigned char *)sdl_surface->pixels,
    ;;                                                                    CAIRO_FORMAT_RGB24,
    ;;                                                                    sdl_surface->w,
    ;;                                                                    sdl_surface->h,
    ;;                                                                    sdl_surface->pitch);    
    (define cairo-surface (cairo-image-surface-create-for-data (%sdl-surface-pixels tmp-surface)
							       *cairo-format-rgb24*
							       (%sdl-surface-width tmp-surface)
							       (%sdl-surface-height tmp-surface)
							       (%sdl-surface-pitch tmp-surface)))
    

    
    
    (format #t "surface pointer ptr ~a~%" surface)
    ;;(format #t "ptr->format ~a~%" (pixelformat (pointer-address surface)))
    (output-check)
    ;; 
    (define hello-bitmap %null-pointer)
    ;;(define loaded-surface (sdl-load-bmp "hello.bmp"))

    ;; image-load only loads jpg png web tif 
    (define loaded-surface (image-load "zxspectrum.png"))

    (define optimized-surface
      (let ((screen-format (pixelformat surface)))
	(sdl-convert-surface loaded-surface screen-format 0)))
    
    (cond
     ((equal? %null-pointer optimized-surface)
      (set! hello-bitmap loaded-surface)
      (format #t "unable to optimize image~%")
      ;;(error "unable to optimize image ~a" (sdl-get-error))
      ) ;; c-string -> scheme string required     
     (#t (set! hello-bitmap optimized-surface)
	 (format #t "created optimized surface ~a~%" optimized-surface)
	 (sdl-free-surface loaded-surface)))

    ;; your ttf-file goes here + point size
    ;; c char* not a guile string
    (define font %null-pointer)
    (let ((the-font "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf"))
      (set! font (ttf-open-font (string->pointer the-font) font-size))
      (cond
       ((equal? font %null-pointer)
	(format #t "ttf font error cannot open font {~a}~%" the-font))
       (#t (format #t "ttf ~a obtained ok~%" the-font))))
    
    
    (define quit #f)

    (sdl-show-cursor 0) ;; 0=false 1=truthy
    ;; poll
    ;; create a C union struct the size of SDL_Event
    ;; and then manually populate struct obviating advantages of
    ;; make SDL_Event which is 36 bytes in size
    (define event (let ((size 36)(fill 0))
		    (make-bytevector size fill)))

    (define first-run #t)
    
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
	   (sdl-set-render-draw-color render #xFF #xFF #xFF #xFF)
	   
	   ;; clear screen 
	   (sdl-render-clear render)

	   ;; display spectrum texture image
	   ;;(sdl-render-copy render texture %null-pointer %null-pointer)

	   
	   ;; red line - tracks mouse pointer
	   (sdl-set-render-draw-color render #xFF #x00 #x00 #xFF)

	   ;; draw-rect
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	     (bytevector-s32-native-set! bv 0 *mouse-x*)
	     (bytevector-s32-native-set! bv 4 *mouse-y*)
	     (bytevector-s32-native-set! bv 8 20)
	     (bytevector-s32-native-set! bv 12 20)
	     ;;(show-rect (bytevector->pointer bv))
	     
	     ;; dereference-pointer
	     ;; file:///usr/share/doc/guile-3.0.10/ref/Void-Pointers-and-Byte-Access.html
	     
	     ;;(format #t "bytevector pointer ~a ~%" (bytevector->pointer bv) 
	     (sdl-render-draw-rect render (bytevector->pointer bv)))
	   
	   

	   ;; red
	   (sdl-set-render-draw-color render #xFF #x00 #x00 #xFF)	   
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	     (bytevector-s32-native-set! bv 0 100)
	     (bytevector-s32-native-set! bv 4 100)
	     (bytevector-s32-native-set! bv 8 100)
	     (bytevector-s32-native-set! bv 12 100)
	     (sdl-render-fill-rect render (bytevector->pointer bv)))

	   #|
	   ;; green
	   (sdl-set-render-draw-color render #x00 #xFF #x00 #xFF)	   	   
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	   (bytevector-s32-native-set! bv 0 300)
	   (bytevector-s32-native-set! bv 4 100)
	   (bytevector-s32-native-set! bv 8 100)
	   (bytevector-s32-native-set! bv 12 100)
	   (sdl-render-fill-rect render (bytevector->pointer bv)))

	   ;; blue
	   (sdl-set-render-draw-color render #x00 #x00 #xFF #xFF)	   	   	   
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	   (bytevector-s32-native-set! bv 0 500)
	   (bytevector-s32-native-set! bv 4 100)
	   (bytevector-s32-native-set! bv 8 100)
	   (bytevector-s32-native-set! bv 12 100)
	   (sdl-render-fill-rect render (bytevector->pointer bv)))

	   ;; line from top left to mouse position
	   (sdl-set-render-draw-color render #xFF #x00 #x00 #xFF)	   	   	   
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	   (bytevector-s32-native-set! bv 0 *mouse-x*)
	   (bytevector-s32-native-set! bv 4 *mouse-y*)
	   (bytevector-s32-native-set! bv 8 20)
	   (bytevector-s32-native-set! bv 12 20)
	   (sdl-render-fill-rect render (bytevector->pointer bv)))
	   (sdl-render-draw-line render 0 0 *mouse-x* *mouse-y*)
	   
	   |#

	   ;; draw some random points
	   (sdl-set-render-draw-color render #x33 #x44 #x55 #xFF)	   
	   ;;(sdl-render-draw-point render 150 150)

	   ;; ;; update the blocks
	   ;; (update-blocks)
	   
	   ;; ;; show the blocks
	   ;; (show-blocks render)	   
	   
	   #|
	   ;; get lines that make up the buffer and append them together with a newline at end of each line
	   ;; 
	   (let ((position-x 64)
	   (position-y 64)
	   (screen-text (newline-concat buffer buffer-y buffer-x lines-per-screen 0)))
	   ;; some writing
	   ;; SDL_Surface* textSurface = TTF_RenderText_Solid( gFont, textureText.c_str(), textColor );
	   ;; should dfree old texture if still around
	   (when (not (equal? mTexture %null-pointer))
	   (sdl-destroy-texture mTexture))	   
	   (set! mTexture %null-pointer)
	   (set! mTexture-width 0)
	   (set! mTexture-height 0)
	   ;; r g b a = each uint8  (ie 2 hex characters making total 8 hex chars alpha FF)
	   ;; memory leak on string->pointer ?
	   ;; instead of 
	   (let* ((textColor #x000000FF) ;; black
	   (textSurface (ttf-render-utf8-blended-wrapped
	   font
	   ;;(string->pointer "this is line1\nthis is line2 \nthis is line3.")
	   (string->pointer screen-text)
	   textColor
	   (* 20 chars-per-line))))
	   (cond
	   ((equal? textSurface %null-pointer)
	   ;;(format #t "failed to render text ~%")
	   #f
	   )
	   (#t (set! mTexture (sdl-create-texture-from-surface render textSurface))
	   (set! mTexture-width (%sdl-surface-width textSurface))
	   (set! mTexture-height (%sdl-surface-height textSurface))
	   (sdl-free-surface textSurface))))

	   (when (not (equal? mTexture %null-pointer))
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	   (bytevector-s32-native-set! bv 0 position-x)
	   (bytevector-s32-native-set! bv 4 position-y)
	   (bytevector-s32-native-set! bv 8 mTexture-width)
	   (bytevector-s32-native-set! bv 12 mTexture-height)	       
	   (sdl-render-copy render mTexture %null-pointer (bytevector->pointer bv))))

	   (sdl-destroy-texture mTexture)
	   (set! mTexture %null-pointer)
	   );; a single texture dump 
	   |#

	   
	   #|
	   ;; how many lines of text are we computing ?
	   (let loop ((n 0))
	   (cond
	   ((> n lines-per-screen) #f)
	   (#t 

	   (let ((buffer-string (vector-ref buffer (+ n buffer-y)))
	   (position-x 0)
	   (position-y (* n font-size)))
	   
	   ;; some writing
	   ;; SDL_Surface* textSurface = TTF_RenderText_Solid( gFont, textureText.c_str(), textColor );
	   ;; should dfree old texture if still around
	   (when (not (equal? mTexture %null-pointer))
	   (sdl-destroy-texture mTexture))	   
	   (set! mTexture %null-pointer)
	   (set! mTexture-width 0)
	   (set! mTexture-height 0)
	   ;; r g b a = each uint8  (ie 2 hex characters making total 8 hex chars alpha FF)
	   ;; memory leak on string->pointer ?
	   (let* ((textColor #xFF00FFFF) 
	   (textSurface (ttf-render-text-solid font
	   (string->pointer buffer-string)
	   textColor)))
	   (cond
	   ((equal? textSurface %null-pointer)
	   ;;(format #t "failed to render text ~%")
	   #f
	   )
	   (#t (set! mTexture (sdl-create-texture-from-surface render textSurface))
	   (set! mTexture-width (%sdl-surface-width textSurface))
	   (set! mTexture-height (%sdl-surface-height textSurface))
	   (sdl-free-surface textSurface))))

	   (when (not (equal? mTexture %null-pointer))
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	   (bytevector-s32-native-set! bv 0 position-x)
	   (bytevector-s32-native-set! bv 4 position-y)
	   (bytevector-s32-native-set! bv 8 mTexture-width)
	   (bytevector-s32-native-set! bv 12 mTexture-height)	       
	   (sdl-render-copy render mTexture %null-pointer (bytevector->pointer bv))))

	   (sdl-destroy-texture mTexture)
	   (set! mTexture %null-pointer)
	   
	   (loop (+ n 1))
	   ;; text loop
	   ))))
	   |#

	   ;; show render
	   (sdl-render-present render)
	   
	   #|
	   //Clear screen
           SDL_RenderClear( gRenderer );

           //Render texture to screen
           SDL_RenderCopy( gRenderer, gTexture, NULL, NULL );

           //Update screen
           SDL_RenderPresent( gRenderer );
	   
	   
	   ;; clear the surface?
	   (sdl-fill-rect surface %null-pointer 0)	   
	   ;; apply image
	   ;;(sdl-blit-surface hello-bitmap %null-pointer surface %null-pointer)
	   ;;(applyStretchedImage surface screen-width screen-height)
	   (sdl-upper-blit-scaled hello-bitmap %null-pointer surface %null-pointer)
	   
	   ;; random rectangle somewhere
	   (sdl-fill-rect surface (make-sdl-rect-pointer 400 100 50 50) (make-sdl-color 255 0 0))
	   (sdl-fill-rect surface (make-sdl-rect-pointer 500 100 50 50) (make-sdl-color 0 0 255))
	   (sdl-fill-rect surface (make-sdl-rect-pointer 600 100 50 50) (make-sdl-color 0 255 0))
	   (sdl-fill-rect surface (make-sdl-rect-pointer (- *mouse-x* 25) (- *mouse-y* 25) 50 50) (make-sdl-color 0 0 255))
	   
	   ;; update surface
	   (sdl-update-window-surface window)
	   |#
	   
	   ) ;; while not quit 
    ;; cleanup
    (ttf-close-font font)	     
    (sdl-free-surface hello-bitmap)
    
    (sdl-destroy-renderer render)
    (sdl-destroy-window window)
    
    (ttf-quit)
    (img-quit)
    (sdl-quit)))

#|

(cairo)


|#
