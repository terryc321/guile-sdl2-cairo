
;; tiny.scm -- smallest possible working sdl + cairo loop
;; no input-output requires window to be force-ibly closed


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
(define *screen-width* 640)
(define *screen-height* 480)
(define *quit* #f)

;; event is a union struct 36 bytes 
(define *event* (make-bytevector 36 0))

(define *first-run* #t)

(define *event-counter* 0)
(define *window* #f)
(define *render* #f)
(define *sdl-surface* #f)
(define *cairo-surface* #f)
(define *cr* #f)
(define *texture* #f)

;; =================================
(define (main-loop)  
  (draw-frame)
  (sleep 3)
  (set! *quit* #t))
  
;; =================================


(define (draw-frame)

  (sdl-set-render-draw-color *render* 0 0 255 0)
  (sdl-render-clear *render*)
  (sdl-set-render-draw-color *render* 255 255 0 255)
  ;; red square
  (let ((bv (make-bytevector (* 4 (size-int)) 0)))
    (bytevector-s32-native-set! bv 0 10)
    (bytevector-s32-native-set! bv 4 10)
    (bytevector-s32-native-set! bv 8 50)
    (bytevector-s32-native-set! bv 12 50)
    (sdl-set-render-draw-color *render* 255 0 255 255)
    (sdl-render-fill-rect *render* (bytevector->pointer bv)))

  ;; this clears the screen - slowly?
  ;; (cairo-set-source-rgb *cr* 1  1  1)  ;; // white background
  ;; (cairo-paint *cr*)
  
  (cairo-set-source-rgba *cr* 1 1 1 1)
  (cairo-rectangle *cr* 0 0 640 480)
  (cairo-fill *cr*)

  (define xc 320.0)
  (define yc 240.0)
  (define radius 200.0)
  (define pi (acos -1)) ;; 3.1415926535898.. ish 
  (define angle1 (* 45 (/ pi 180)))
  (define angle2 (* 180 (/ pi 180)))

  (cairo-set-source-rgba *cr* 0 0 0 1)
  (cairo-set-line-width *cr* 10)
  (cairo-arc *cr* xc yc radius angle1 angle2)
  (cairo-stroke *cr*)
  (cairo-set-source-rgba *cr* 1 0.2 0.2 0.6)    
  (cairo-set-line-width *cr* 6.0)
  (cairo-arc *cr* xc yc 10.0 0 (* 2 pi))
  (cairo-fill *cr*) 
  (cairo-arc *cr*  xc  yc  radius  angle1  angle1) 
  (cairo-line-to *cr*  xc  yc) 
  (cairo-arc *cr*  xc  yc  radius  angle2  angle2) 
  (cairo-line-to *cr*  xc  yc) 
  (cairo-stroke *cr*) 
  
  (cairo-surface-flush *cairo-surface*)
  (sdl-update-texture *texture* %null-pointer (surface-pixels *sdl-surface*) (surface-pitch *sdl-surface*))
  (sdl-render-copy *render* *texture* %null-pointer %null-pointer)    

    ;; red square
  (let ((bv (make-bytevector (* 4 (size-int)) 0)))
    (bytevector-s32-native-set! bv 0 10)
    (bytevector-s32-native-set! bv 4 10)
    (bytevector-s32-native-set! bv 8 50)
    (bytevector-s32-native-set! bv 12 50)
    (sdl-set-render-draw-color *render* 255 0 255 255)
    (sdl-render-fill-rect *render* (bytevector->pointer bv)))
  (sdl-render-present *render*))



;; ================


(define (demo)
  (set! *quit* #f)
  (set! *first-run* #t)  
  (sdl-init *sdl-init-video*)
  (set! *window* (create-window "cairo demonstration window 0.1a" *screen-width* *screen-height*))
  (set! *render* (%sdl-create-renderer *window* -1 
				       (logior *sdl-renderer-accelerated*  *sdl-renderer-present-vsync*)))

  ;;  (set! *surface* (create-rgb-surface 0 *screen-width* *screen-height*  ))
  (set! *sdl-surface* (sdl-create-rgb-surface 0 *screen-width* *screen-height* 32
					  #x00FF0000 #x0000FF00 #x000000FF #xFF000000))

  (set! *cairo-surface* (cairo-image-surface-create-for-data (surface-pixels *sdl-surface*)
							     *cairo-format-argb32*
							     *screen-width*
							     *screen-height*
							     (surface-pitch *sdl-surface*)))
  (set! *cr* (cairo-create *cairo-surface*))
  (set! *texture* (sdl-create-texture *render*
				      *sdl-pixelformat-argb8888*
				      *sdl-texture-streaming*
				      *screen-width*
				      *screen-height*))
  (format #t "texture ~a ~%" *texture*)
  
  (while (not *quit*)
    (main-loop))
  (cleanup))


;;=======================

;; why everything global ? so i can change it !
(define (cleanup)
  (cairo-destroy *cr*)
  (cairo-surface-destroy *cairo-surface*) 
  (sdl-free-surface *sdl-surface*)
  (sdl-destroy-texture *texture*)
  (sdl-destroy-renderer *render*)
  (sdl-destroy-window *window*)
  (sdl-quit))

;;
;; usage
;; load using correct environment and %load-path
;; > (demo)
;;
;; should see a nice pink square top right and sort of arc
;;



