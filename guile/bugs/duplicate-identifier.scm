
BUG : Wed Oct 29 09:01:00 GMT 2025

-----------------
Compiling /home/terry/code/guile-scheme/guile-sdl2-cairo/guile/demos/cairo-all-scheme.scm ...

ice-9/boot-9.scm:1712:22: In procedure raise-exception:
Syntax error:
/home/terry/code/guile-scheme/guile-sdl2-cairo/guile/demos/cairo-all-scheme.scm:140:2: invalid or duplicate identifier in definition in form (let ((font-size 12) (lines-per-screen 44) (chars-per-line 80) (screen-width 640) (screen-height 480)) (define event-counter 0) (define init-result (sdl-init *sdl-init-video*)) (format #t "init-result ~a~%" init-result) (define window (create-window "cairo demonstration window 0.1a" screen-width screen-height)) (format #t "window = ~a~%" window) (define render (%sdl-create-renderer window -1 (logior *sdl-renderer-accelerated* *sdl-renderer-present-vsync*))) (cond ((equal? render %null-pointer) (format #t "create render failed !~%")) (#t (format #t "created render success : ~a !~%" render))) (define window-surface (sdl-get-window-surface window)) (format #t "window-surface ~a : pixelformat-format ~a : pixels ~a : width ~a : height ~a : pitch ~a ~%" window-surface (surface-pixelformat-format window-surface) (surface-pixels window-surface) (surface-width window-surface) (surface-height window-surface) (surface-pitch window-surface)) (format #t "window surface : pixelformat name ~a ~%" (pointer->string (sdl-get-pixelformat-name (surface-pixelformat-format window-surface)))) (define surface (create-rgb24-surface screen-width screen-height)) (cond ((equal? surface %null-pointer) (format #t "surface failed to be created!~%")) (#t (format #t "surface ok~%"))) (format #t "surface          ~a : pixelformat-format ~a : pixels ~a : width ~a : height ~a : pitch ~a ~%" surface (surface-pixelformat-format surface) (surface-pixels surface) (surface-width surface) (surface-height surface) (surface-pitch surface)) (format #t "surface : pixelformat name ~a ~%" (pointer->string (sdl-get-pixelformat-name (surface-pixelformat-format surface)))) (define stride (cairo-format-stride-for-width *cairo-format-rgb24* screen-width)) (define cairo-surface (cairo-image-surface-create-for-data (surface-pixels surface) *cairo-format-rgb24* (surface-width surface) (surface-height surface) stride)) (define cr (cairo-create cairo-surface)) (sdl-set-render-draw-color render 0 0 0 0) (sdl-render-clear) (cairo-set-source-rgba cr 1 1 1 1) (cairo-rectangle cr 0 0 640 480) (cairo-fill cr) (define xc 320.0) (define yc 240.0) (define radius 200.0) (define pi 3.1415926535898) (define angle (* 45 (/ pi 180))) (define angle (* 180 (/ pi 180))) (cairo-set-source-rgba cr 0 0 0 1) (sdl-set-render-draw-color render 0 0 255 255) (let ((bv (make-bytevector (* 4 (size-int)) 0))) (bytevector-s32-native-set! bv 0 500) (bytevector-s32-native-set! bv 4 100) (bytevector-s32-native-set! bv 8 100) (bytevector-s32-native-set! bv 12 100) (sdl-render-fill-rect render (bytevector->pointer bv))) (sdl-render-present render) (sleep 5) (sdl-destroy-renderer render) (sdl-destroy-window window) (sdl-quit))


[Debugging level: 2]
-----------------

what is the duplicate identifier talking about


(define issue '(let ((font-size 12) (lines-per-screen 44) (chars-per-line 80) (screen-width 640) (screen-height 480)) (define event-counter 0) (define init-result (sdl-init *sdl-init-video*)) (format #t "init-result ~a~%" init-result) (define window (create-window "cairo demonstration window 0.1a" screen-width screen-height)) (format #t "window = ~a~%" window) (define render (%sdl-create-renderer window -1 (logior *sdl-renderer-accelerated* *sdl-renderer-present-vsync*))) (cond ((equal? render %null-pointer) (format #t "create render failed !~%")) (#t (format #t "created render success : ~a !~%" render))) (define window-surface (sdl-get-window-surface window)) (format #t "window-surface ~a : pixelformat-format ~a : pixels ~a : width ~a : height ~a : pitch ~a ~%" window-surface (surface-pixelformat-format window-surface) (surface-pixels window-surface) (surface-width window-surface) (surface-height window-surface) (surface-pitch window-surface)) (format #t "window surface : pixelformat name ~a ~%" (pointer->string (sdl-get-pixelformat-name (surface-pixelformat-format window-surface)))) (define surface (create-rgb24-surface screen-width screen-height)) (cond ((equal? surface %null-pointer) (format #t "surface failed to be created!~%")) (#t (format #t "surface ok~%"))) (format #t "surface          ~a : pixelformat-format ~a : pixels ~a : width ~a : height ~a : pitch ~a ~%" surface (surface-pixelformat-format surface) (surface-pixels surface) (surface-width surface) (surface-height surface) (surface-pitch surface)) (format #t "surface : pixelformat name ~a ~%" (pointer->string (sdl-get-pixelformat-name (surface-pixelformat-format surface)))) (define stride (cairo-format-stride-for-width *cairo-format-rgb24* screen-width)) (define cairo-surface (cairo-image-surface-create-for-data (surface-pixels surface) *cairo-format-rgb24* (surface-width surface) (surface-height surface) stride)) (define cr (cairo-create cairo-surface)) (sdl-set-render-draw-color render 0 0 0 0) (sdl-render-clear) (cairo-set-source-rgba cr 1 1 1 1) (cairo-rectangle cr 0 0 640 480) (cairo-fill cr) (define xc 320.0) (define yc 240.0) (define radius 200.0) (define pi 3.1415926535898) (define angle (* 45 (/ pi 180))) (define angle (* 180 (/ pi 180))) (cairo-set-source-rgba cr 0 0 0 1) (sdl-set-render-draw-color render 0 0 255 255) (let ((bv (make-bytevector (* 4 (size-int)) 0))) (bytevector-s32-native-set! bv 0 500) (bytevector-s32-native-set! bv 4 100) (bytevector-s32-native-set! bv 8 100) (bytevector-s32-native-set! bv 12 100) (sdl-render-fill-rect render (bytevector->pointer bv))) (sdl-render-present render) (sleep 5) (sdl-destroy-renderer render) (sdl-destroy-window window) (sdl-quit)))

recursively go in find
(define WORD

  get a list WORDS
  find the ones which are DUPLICATES
  )

(define (recur xs)
  (cond
   ... ??
   ))


simply look for (define
		  
		  answer (define angle comes twice !!
			   

