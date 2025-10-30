
getting something to render in both SDL and CAIRO is a ballache
because one uses float s, other uses ints
so think 1 1 1 1 is white but its actually blackk ,
cairo uses floats 0 to 1



(define (draw-frame3)
  (cairo-set-source-rgb *cr* 1  1  1)  ;; // white background
  (cairo-paint *cr*)
  
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
  (sdl-render-clear *render*)
  (sdl-render-copy *render* *texture* %null-pointer %null-pointer)
  (sdl-render-present *render*)
  )


;; ==================

(define (draw-frame)
  ;; draw sdl renderer gpu

  ;; green screen clear
  (sdl-set-render-draw-color *render* 0 255 100 0)  
  (sdl-render-clear *render*)
  
  ;; red square
  (let ((bv (make-bytevector (* 4 (size-int)) 0)))
    (bytevector-s32-native-set! bv 0 10)
    (bytevector-s32-native-set! bv 4 10)
    (bytevector-s32-native-set! bv 8 50)
    (bytevector-s32-native-set! bv 12 50)
    (sdl-set-render-draw-color *render* 255 100 0 255)
    (sdl-render-fill-rect *render* (bytevector->pointer bv)))
  
  ;; draw something
  (cairo-set-source-rgba *cr* 0 0 0 0) ;; transparent
  (cairo-set-operator *cr* *cairo-operator-source*)
  (cairo-paint *cr*)

  ;; something else
  (cairo-set-source-rgba *cr* 1 1 1 0.5)
  (cairo-rectangle *cr* 200 200 250 250)
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
  (sdl-render-present *render*)
  )


#|    
  (sdl-set-render-draw-color *render* 0 0 0 0)
  (sdl-render-clear *render*)

  ;; do i need to lock surface ?
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

  ;; finished with *cr*
  (cairo-surface-flush *cairo-surface*)
  (sdl-render-copy *render* *texture* %null-pointer %null-pointer)
  
  ;; draw a blue square where mouse is currently 
  (sdl-set-render-draw-color *render* #x00 #x00 #xFF #xFF)	   	   	   
  (let ((bv (make-bytevector (* 4 (size-int)) 0)))
    (bytevector-s32-native-set! bv 0 *mouse-x*)
    (bytevector-s32-native-set! bv 4 *mouse-y*)
    (bytevector-s32-native-set! bv 8 50)
    (bytevector-s32-native-set! bv 12 50)
    (sdl-render-fill-rect *render* (bytevector->pointer bv)))
  ;; render it !
  (sdl-render-present *render*))
|#



