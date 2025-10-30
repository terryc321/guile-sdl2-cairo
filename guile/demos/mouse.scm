;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; hello.scm
;; who   : terry cadd
;; what  : guile scheme 3.0 source code to show graphics using SDL and CAIRO
;; when  : Wed Oct 29 22:38:33 GMT 2025
;; where : home
;; why   : teaching myself about ffi using guile scheme and getting a graphical program
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; be brutal when writing code , anything not strictly required gets deleted - that rule got broke fast
;; a normal procedure definition in scheme allows user to jump to definition , rather than if use
;; foreign call , cant goto definition
;; also if anything goes wrong , may be able to trace it ? unlikely , but hey...
;; this allows user to see what is going on
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;coding rule if a definition starts at beginning of line , that terminates anything unfinished up to then 
;; and generates an error if previous s expression did not stop 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Q - how get guile scheme to add comments / documentation to symbols ?
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-modules (ice-9 optargs)) ;; optional args
(use-modules (system foreign)) ;; %null-pointer
(use-modules (system foreign-library))
(use-modules (rnrs bytevectors))
(use-modules (ice-9 format))
(use-modules (ice-9 rdelim))
(use-modules (ice-9 pretty-print)) 
(define pp pretty-print)

;; these modules are not in guile ecosystem they require an altered %load-path to make them visible
(use-modules (macros fcase))
(use-modules (macros inc))
(use-modules (graphics sdl2))  

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

;; documentation example to see how string after define gets displayed
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


(define *quit* #f)

;; event is a union struct 36 bytes 
(define *event* (make-bytevector 36 0))


(define (cairo)  
    (format #t "cairo version ~a~%" (cairo-version-string))
        
    (define event-counter 0)
    (define init-result (sdl-init *sdl-init-video*))
    (format #t "init-result ~a~%" init-result)
    
    (define window (create-window "cairo demonstration window 0.1a" *screen-width* *screen-height*))
    (format #t "window = ~a~%" window)
    
    (define render (%sdl-create-renderer window -1 
					 (logior *sdl-renderer-accelerated*  *sdl-renderer-present-vsync*)))
    (cond
     ((equal? render %null-pointer)   (format #t "create render failed !~%"))
     (#t (format #t "created render success : ~a !~%" render)))

    ;;SDL_Surface * SDL_GetWindowSurface(SDL_Window * window);
    (define window-surface (sdl-get-window-surface window))    

    (format #t "window-surface ~a : pixelformat-format ~a : pixels ~a : width ~a : height ~a : pitch ~a ~%"
	    window-surface	    
	    (surface-pixelformat-format window-surface)
	    (surface-pixels window-surface)
	    (surface-width window-surface)
	    (surface-height window-surface)
	    (surface-pitch window-surface))
    
    (format #t "window surface : pixelformat name ~a ~%"
	    (pointer->string
	     (sdl-get-pixelformat-name
	      (surface-pixelformat-format window-surface))))

    (define surface (create-rgb24-surface *screen-width* *screen-height*))
    ;;(define surface window-surface)
    (cond
     ((equal? surface %null-pointer)
      (format #t "surface failed to be created!~%"))
     (#t (format #t "surface ok~%")))

    (format #t "surface          ~a : pixelformat-format ~a : pixels ~a : width ~a : height ~a : pitch ~a ~%"
	    surface
	    (surface-pixelformat-format surface)
	    (surface-pixels surface)
	    (surface-width surface)
	    (surface-height surface)
	    (surface-pitch surface))
    
    (format #t "surface : pixelformat name ~a ~%"
	    (pointer->string
	     (sdl-get-pixelformat-name
	      (surface-pixelformat-format surface))))

    ;; in ffi world all pointers are just pointers 
    ;; heres an example to get width height
    ;; pass some memory region to sdl-get-window-size and decode result using bytevector-s32-native-ref
    ;; bytevector signed 32 bit value 
    (let* ((bv (make-bytevector (* 2 (size-int)) 0))
	   (w-mem (bytevector->pointer bv 0))
	   (h-mem (bytevector->pointer bv 4)))
      (sdl-get-window-size window w-mem h-mem)
      (let ((width (bytevector-s32-native-ref bv 0))
	    (height (bytevector-s32-native-ref bv 4)))
	(format #t "window size is ~a by ~a ~%" width height)))
    
    ;; same again to get render width height
    ;;(sdl-get-renderer-output-size render &render-width &render-height) ??
    (let* ((bv (make-bytevector (* 2 (size-int)) 0))
	   (w-mem (bytevector->pointer bv 0))
	   (h-mem (bytevector->pointer bv 4)))
      (sdl-get-renderer-output-size render w-mem h-mem)
      (let ((width (bytevector-s32-native-ref bv 0))
	    (height (bytevector-s32-native-ref bv 4)))
	(format #t "render output size is ~a by ~a ~%" width height)))

    ;; stuck with rgb24 which means no alpha capability , which is just bizarre , almost like one hand
    ;; behind back 
    
    (define stride (cairo-format-stride-for-width *cairo-format-rgb24* *screen-width*))    
    (define cairo-surface (cairo-image-surface-create-for-data (surface-pixels surface)
							       *cairo-format-rgb24* ;;*cairo-format-argb32* 
							       (surface-width surface)
							       (surface-height surface)
							       stride))
    (define cr (cairo-create cairo-surface))

    (sdl-set-render-draw-color render 0 0 0 0)
    (sdl-render-clear render)
    (cairo-set-source-rgba cr 1 1 1 1)
    (cairo-rectangle cr 0 0 640 480)
    (cairo-fill cr)

    (define xc 320.0)
    (define yc 240.0)
    (define radius 200.0)
    (define pi (acos -1)) ;; 3.1415926535898.. ish 
    (define angle1 (* 45 (/ pi 180)))
    (define angle2 (* 180 (/ pi 180)))
    
    (cairo-set-source-rgba cr 0 0 0 1)
    (cairo-set-line-width cr 10)
    (cairo-arc cr xc yc radius angle1 angle2)
    (cairo-stroke cr)
    (cairo-set-source-rgba cr 1 0.2 0.2 0.6)    
    (cairo-set-line-width cr 6.0)
    (cairo-arc cr xc yc 10.0 0 (* 2 pi))
    (cairo-fill cr) 
    (cairo-arc cr  xc  yc  radius  angle1  angle1) 
    (cairo-line-to cr  xc  yc) 
    (cairo-arc cr  xc  yc  radius  angle2  angle2) 
    (cairo-line-to cr  xc  yc) 
    (cairo-stroke cr) 

    (cairo-surface-flush cairo-surface)

    (cairo-destroy cr)
    ;; (cairo-destroy cairo-surface)
    ;; cairo_surface_destroy(cr_surface)   
    ;; SDL_Texture *texture = SDL_CreateTextureFromSurface(renderer  sdl_surface) 
    ;; SDL_FreeSurface(sdl_surface) 
    ;; SDL_RenderCopy(renderer  texture  NULL  NULL) 
    (let ((cairo-texture (sdl-create-texture-from-surface render surface)))
      (when (not (equal? cairo-texture %null-pointer))
	(sdl-render-copy render cairo-texture %null-pointer %null-pointer)))  

    ;; IT WORKS !!!
    ;; a blue square somewhere on render surface
    (sdl-set-render-draw-color render #x00 #x00 #xFF #xFF)	   	   	   
    (let ((bv (make-bytevector (* 4 (size-int)) 0)))
      (bytevector-s32-native-set! bv 0 500)
      (bytevector-s32-native-set! bv 4 100)
      (bytevector-s32-native-set! bv 8 100)
      (bytevector-s32-native-set! bv 12 100)
      (sdl-render-fill-rect render (bytevector->pointer bv)))

    (sdl-render-present render)
    
    (sleep 5)

    (sdl-destroy-renderer render)
    (sdl-destroy-window window)
    
    (sdl-quit))






;;
;; usage
;; load using correct environment and %load-path
;; > (cairo)
;;
;; should see a nice picture of blue square and some sort of two thirds clock thing


