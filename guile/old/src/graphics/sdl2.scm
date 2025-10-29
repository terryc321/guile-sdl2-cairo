
;; start guile with these modules in the load path using -L flag
;; make sure the load directory given contains graphics directory
;; which will set the module system up for success
;;
;; > guile -L ../ --
;; (use-modules (graphics sdl2))
;; (define init (sdl-init *init-everything*))
;; init => 0 ie success
;; (sdl-quit)
;;

;; (load "pixelformat/pixelformat.scm")
;; ;;(load "pixelformat.scm")

;; ;; create some quite useful macros
;; ;; the more macros we create
;; ;; the more the language will bend to the will of the developer
;; ;; 
;; (use-modules (macros fcase)) ;; fcase 
;; (use-modules (macros inc)) ;; inc! dec!

;; (use-modules (ice-9 rdelim)) ;; read-line - so we can read files
;; (use-modules (ice-9 pretty-print)) 
;; (define pp pretty-print)
;;(use-modules (rnrs bytevectors))



(define-module (graphics sdl2)
  #:export (*init-timer*
	    *init-audio*
	    *init-video*
	    *init-joystick*
	    *init-haptic*
	    *init-gamecontroller*
	    *init-events*
	    *init-sensor*
	    *init-parachute*
	    *init-everything*
	    sdl-init
	    sdl-quit))

(use-modules (system foreign-library)) ;; probably only need system foreign
(use-modules (system foreign))

(define *init-timer*             #x00000001)
(define *init-audio*             #x00000010)
(define *init-video*             #x00000020)
(define *init-joystick*          #x00000200)
(define *init-haptic*            #x00001000)
(define *init-gamecontroller*    #x00002000)
(define *init-events*            #x00004000)
(define *init-sensor*            #x00008000)
(define *init-parachute*         #x00100000)

;; guile uses logior to be logical inclusive or 
(define *init-everything*  (logior *init-timer*
				   *init-audio*
				   *init-video*
				   *init-events*
				   *init-joystick*
				   *init-haptic*
				   *init-gamecontroller*
				   *init-sensor*))


;; int SDL_Init(Uint32 flags);
;; (int) Returns 0 on success or a negative error code on failure
(define sdl-init
  (foreign-library-function "libSDL2" "SDL_Init"
                            #:return-type int
                            #:arg-types (list uint32)))

;; void SDL_Quit(void);
(define sdl-quit
  (foreign-library-function "libSDL2" "SDL_Quit"
                            #:return-type void
                            #:arg-types (list)))


(define *window-fullscreen* #x00000001)
(define *window-opengl* #x00000002)
(define *window-shown* #x00000004)
(define *window-hidden* #x00000008)
(define *window-borderless* #x00000010)
(define *window-resizeable* #x00000020)
(define *window-minimized* #x00000040)
(define *window-maximized* #x00000080)
(define *window-mouse-grabbed* #x000000100)
(define *window-input-focus* #x000000200)
(define *window-mouse-focus* #x000000400)
;; bitwise OR -- in guile called logical inclusive or (logior
(define *window-fullscreen-desktop* (logior *window-fullscreen* #x0001000))
(define *window-foreign* #x000000800)
(define *window-allow-highdpi* #x0000002000)
(define *window-mouse-capture* #x0000004000)
(define *window-always-on-top* #x0000008000)
(define *window-skip-taskbar* #x00000010000)
(define *window-utility* #x00000020000)
(define *window-tooltip* #x00000040000)
(define *window-popup-menu* #x00000080000)
(define *window-keyboard-grabbed* #x00100000)
(define *window-vulkan* #x10000000)
(define *window-metal*  #x20000000)

(define sdl-create-window 
  (foreign-library-function "libSDL2" "SDL_CreateWindow"
                            #:return-type '*
                            #:arg-types (list '* int int int int int)))


;; convenience middle of my screen 1920 x 1080 default resolution
(define (create-window title width height)
  (let ((x (floor (/ (- 1920 width) 2)))
	(y (floor (/ (- 1080 height) 2)))
	(flags (logior ;;*constant-sdl-window-fullscreen-desktop*
		        *constant-sdl-window-resizeable*
		        *constant-sdl-window-allow-highdpi*
			*constant-sdl-window-always-on-top*
			;;*constant-sdl-window-fullscreen*
		       ;;*constant-sdl-window-borderless*
		       *constant-sdl-window-shown*)))
    (sdl-create-window (string->pointer title) x y width height flags)))


(define sdl-get-window-surface 
  (foreign-library-function "libSDL2" "SDL_GetWindowSurface"
                            #:return-type '*
                            #:arg-types (list '* )))


(define sdl-quit
  (foreign-library-function "libSDL2" "SDL_Quit"
                            #:return-type void
                            #:arg-types '()))


;; void SDL_FreeSurface(SDL_Surface * surface)
(define sdl-free-surface
  (foreign-library-function "libSDL2" "SDL_FreeSurface"
                            #:return-type void
                            #:arg-types (list '*)))



;;SDL_Surface* SDL_LoadBMP_RW(SDL_RWops * src, int freesrc);
(define sdl-load-bmp-rw
  (foreign-library-function "libSDL2" "SDL_LoadBMP_RW"
                            #:return-type '*
                            #:arg-types (list '* int)))


;; SDL_RWops* SDL_RWFromFile(const char *file, const char *mode);
(define sdl-rw-from-file
  ;; " guile ffi need string->pointer "
  (foreign-library-function "libSDL2" "SDL_RWFromFile"
                            #:return-type '*
                            #:arg-types (list '* '*)))


;; convenience
;; #define SDL_LoadBMP(file)   SDL_LoadBMP_RW(SDL_RWFromFile(file, "rb"), 1)
(define (sdl-load-bmp filename)
  "SDL_LoadBMP is a macro in C land
 becomes two required routines
 SDL_RWFromFile(file, \"rb\")
 SDL_LoadBMP_RW
 "
  (sdl-load-bmp-rw (sdl-rw-from-file (string->pointer filename) (string->pointer "rb")) 1))


;; int SDL_ShowCursor(int toggle);
(define sdl-show-cursor
  (foreign-library-function "libSDL2" "SDL_ShowCursor"
                            #:return-type int
                            #:arg-types (list int)))

;; convenience
;; %img-load is in libpixelformat.so 
(define (load-texture path render)
  (define loaded-surface (%img-load (string->pointer path)))
  (cond
   ((equal? loaded-surface %null-pointer)
    (format #t "unable to load image ~a ~%" path)
    %null-pointer)
   (#t (let ((new-texture (sdl-create-texture-from-surface render loaded-surface)))
	 (cond
	  ((equal? new-texture %null-pointer)
	   (format #t "unable to create texture from image ~a ~%" path)
	   %null-pointer)
	  (#t (sdl-free-surface loaded-surface)
	      new-texture))))))


(define img-quit
  (foreign-library-function "libSDL2_image" "IMG_Quit"
                            #:return-type void
                            #:arg-types (list )))


;; usage
;;SDL_DestroyWindow( gWindow );
(define sdl-destroy-window
  (foreign-library-function "libSDL2" "SDL_DestroyWindow"
                            #:return-type void
                            #:arg-types (list '* )))


;;SDL_Texture * SDL_CreateTextureFromSurface(SDL_Renderer * renderer, SDL_Surface * surface);
(define sdl-create-texture-from-surface
  (foreign-library-function "libSDL2" "SDL_CreateTextureFromSurface"
                            #:return-type '*
                            #:arg-types (list '* '*)))


;;void SDL_DestroyTexture(SDL_Texture * texture);
(define sdl-destroy-texture
  (foreign-library-function "libSDL2" "SDL_DestroyTexture"
                            #:return-type void
                            #:arg-types (list '*)))



;;SDL_DestroyRenderer
;;void SDL_DestroyRenderer(SDL_Renderer * renderer);
(define sdl-destroy-renderer
  (foreign-library-function "libSDL2" "SDL_DestroyRenderer"
                            #:return-type void
                            #:arg-types (list '*)))


(define sdl-create-rgb-surface 
  (foreign-library-function "libSDL2" "SDL_CreateRGBSurface"
                            #:return-type '*
                            #:arg-types (list int int int int int int int int )))

;; convenience function
(define (create-rgb-surface width height)
  (let ((flags 0) ;;unused
	(depth 32) ;; only depth SDL and CAIRO agree on
	(rmask #x00FF0000) ;; red mask
	(gmask #x0000FF00) ;; green mask
	(bmask #x000000FF) ;; blue mask
	(amask #x0)) ;; alpha mask - unused	
    (sdl-create-rgb-surface flags width height depth rmask gmask bmask amask)))



;; guile (use-modules (system foreign)) exposes typical C types uint8 uint32 etc..
;; assuming NULL is just 0
;; Uint32 SDL_MapRGB(const SDL_PixelFormat * format,  Uint8 r, Uint8 g, Uint8 b);
(define sdl-map-rgb
  (foreign-library-function "libSDL2" "SDL_MapRGB"
                            #:return-type uint32
                            #:arg-types (list '* uint8 uint8 uint8)))


;; int SDL_FillRect (SDL_Surface * dst, const SDL_Rect * rect, Uint32 color);
;; returns 0 on success
(define sdl-fill-rect
  (foreign-library-function "libSDL2" "SDL_FillRect"
			    #:return-type int
                            #:arg-types (list '* '* uint32)))


;; int SDL_UpdateWindowSurface(SDL_Window * window);
(define sdl-update-window-surface
  (foreign-library-function "libSDL2" "SDL_UpdateWindowSurface"
			    #:return-type int
                            #:arg-types (list '*)))


#|
https://lazyfoo.net/tutorials/SDL/05_optimized_surface_loading_and_soft_stretching/index.php

SDL_Surface* SDL_ConvertSurface
(SDL_Surface * src, const SDL_PixelFormat * fmt, Uint32 flags;)
|#
(define sdl-convert-surface
  (foreign-library-function "libSDL2" "SDL_ConvertSurface"
			    #:return-type '*
                            #:arg-types (list '* '* uint32)))


#|
cairo_surface_t *cairosurf = cairo_image_surface_create_for_data (
									    (unsigned char*)sdlsurf->pixels,
									    CAIRO_FORMAT_RGB24,
									    sdlsurf->w,
									    sdlsurf->h,
									    sdlsurf->pitch);
	  

#define SDL_BlitSurface SDL_UpperBlit
int SDL_UpperBlit
    (SDL_Surface * src, const SDL_Rect * srcrect,
     SDL_Surface * dst, SDL_Rect * dstrect);

|#
(define sdl-blit-surface 
  (foreign-library-function "libSDL2" "SDL_UpperBlit"
			    #:return-type int
                            #:arg-types (list '* '* '* '*)))


;; render-clear
;; int SDL_RenderClear(SDL_Renderer * renderer);
(define sdl-render-clear
  (foreign-library-function "libSDL2" "SDL_RenderClear"
			    #:return-type int
                            #:arg-types (list '*)))

;; int SDL_RenderCopy(SDL_Renderer * renderer,
;;                    SDL_Texture * texture,
;;                    const SDL_Rect * srcrect,
;;                    const SDL_Rect * dstrect);
(define sdl-render-copy
  (foreign-library-function "libSDL2" "SDL_RenderCopy"
			    #:return-type int
                            #:arg-types (list '* '* '* '*)))

;; void SDL_RenderPresent(SDL_Renderer * renderer);
(define sdl-render-present
  (foreign-library-function "libSDL2" "SDL_RenderPresent"
			    #:return-type int
                            #:arg-types (list '*)))


;; int SDL_RenderDrawLine(SDL_Renderer * renderer,
;;                        int x1, int y1, int x2, int y2);
(define sdl-render-draw-line
  (foreign-library-function "libSDL2" "SDL_RenderDrawLine"
			    #:return-type int
                            #:arg-types (list '* int int int int)))

;; int SDL_RenderDrawRect(SDL_Renderer * renderer,   const SDL_Rect * rect);
(define sdl-render-draw-rect
  (foreign-library-function "libSDL2" "SDL_RenderDrawRect"
			    #:return-type int
                            #:arg-types (list '* '*)))

;; int SDL_RenderFillRect(SDL_Renderer * renderer,
;;                        const SDL_Rect * rect);
(define sdl-render-fill-rect
  (foreign-library-function "libSDL2" "SDL_RenderFillRect"
			    #:return-type int
                            #:arg-types (list '* '*)))


;; int SDL_RenderDrawPoint(SDL_Renderer * renderer,
;;                         int x, int y);
(define sdl-render-draw-point
  (foreign-library-function "libSDL2" "SDL_RenderDrawPoint"
			    #:return-type int
                            #:arg-types (list '* int int)))


;; int TTF_Init(void);
(define ttf-init
  (foreign-library-function "libSDL2_ttf" "TTF_Init"
			    #:return-type int
                            #:arg-types (list)))

;; void TTF_Quit(void);
(define ttf-quit
  (foreign-library-function "libSDL2_ttf" "TTF_Quit"
			    #:return-type void
                            #:arg-types (list)))

;; SDL_Surface * TTF_RenderText_Solid(TTF_Font *font,   const char *text, SDL_Color fg);
;; what do if structure was just as a parameter , not a pointer , how cope if structure bigger than 64bit ?
;; does scheme do the integer conversion implicitly then ?
(define ttf-render-text-solid
  (foreign-library-function "libSDL2_ttf" "TTF_RenderText_Solid"
			    #:return-type '*
                            #:arg-types (list '* '* uint32)))



;; typedef struct SDL_Color
;; {
;;     Uint8 r;
;;     Uint8 g;
;;     Uint8 b;
;;     Uint8 a;
;; } SDL_Color;
;; SDL_Color is just an unsigned 32 bit uint32  (4 * 8 = 32)

;;SDL_Surface * TTF_RenderUTF8_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength);
(define ttf-render-utf8-blended-wrapped
  (foreign-library-function "libSDL2_ttf" "TTF_RenderUTF8_Blended_Wrapped"
			    #:return-type '*
                            #:arg-types (list '* '* uint32 uint32)))



;; gFont = TTF_OpenFont( "16_true_type_fonts/lazy.ttf", 28 );
;; TTF_Font * TTF_OpenFont(const char *file, int ptsize);
(define ttf-open-font
  (foreign-library-function "libSDL2_ttf" "TTF_OpenFont"
			    #:return-type '*
                            #:arg-types (list '* int)))

;; void TTF_CloseFont(TTF_Font *font);
(define ttf-close-font
  (foreign-library-function "libSDL2_ttf" "TTF_CloseFont"
			    #:return-type void
                            #:arg-types (list '*)))






(define *constant-cairo-format-rgb24* 1)

(define cairo-image-surface-create-for-data
  (foreign-library-function "libcairo" "cairo_image_surface_create_for_data"
                            #:return-type '*
                            #:arg-types (list '* int int int int)))


(define cairo-rectangle
  (foreign-library-function "libcairo" "cairo_rectangle"
                            #:return-type void
                            #:arg-types (list '* int int int int)))

(define cairo-set-source-rgb
  (foreign-library-function "libcairo" "cairo_set_source_rgb"
                            #:return-type void
                            #:arg-types (list '* double double double)))




;;
;; cairo_t *cairo_create( cairo_surface_t *)
;; cairo_t is cairo context
;; cairo_surface_t is a surface compatible with cairo 24 bit 
(define cairo-create
  (foreign-library-function "libcairo" "cairo_create"
                            #:return-type '*
                            #:arg-types (list '*)))


(define cairo-fill
  (foreign-library-function "libcairo" "cairo_fill"
                            #:return-type void
                            #:arg-types (list '*)))


;;void cairo_surface_flush (cairo_surface_t *surface);
(define cairo-surface-flush
  (foreign-library-function "libcairo" "cairo_surface_flush"
                            #:return-type void
                            #:arg-types (list '*)))


;; int SDL_PollEvent(SDL_Event * event);
(define sdl-poll-event
  (foreign-library-function "libSDL2" "SDL_PollEvent"
			    #:return-type int
                            #:arg-types (list '*)))

(define *constant-sdl-quit* #x100)
(define *constant-sdl-keydown* #x300)
(define *constant-sdl-keyup* #x301)
(define *constant-sdl-mousemotion* #x400)
(define *constant-sdl-window-event* #x200) 


(define *constant-sdl-scancode-unknown* 0) 
(define *constant-sdl-scancode-a* 4) 
(define *constant-sdl-scancode-b* 5) 
(define *constant-sdl-scancode-c* 6) 
(define *constant-sdl-scancode-d* 7) 
(define *constant-sdl-scancode-e* 8) 
(define *constant-sdl-scancode-f* 9) 
(define *constant-sdl-scancode-g* 10) 
(define *constant-sdl-scancode-h* 11) 
(define *constant-sdl-scancode-i* 12) 
(define *constant-sdl-scancode-j* 13) 
(define *constant-sdl-scancode-k* 14) 
(define *constant-sdl-scancode-l* 15) 
(define *constant-sdl-scancode-m* 16) 
(define *constant-sdl-scancode-n* 17) 
(define *constant-sdl-scancode-o* 18) 
(define *constant-sdl-scancode-p* 19) 
(define *constant-sdl-scancode-q* 20) 
(define *constant-sdl-scancode-r* 21) 
(define *constant-sdl-scancode-s* 22) 
(define *constant-sdl-scancode-t* 23) 
(define *constant-sdl-scancode-u* 24) 
(define *constant-sdl-scancode-v* 25) 
(define *constant-sdl-scancode-w* 26) 
(define *constant-sdl-scancode-x* 27) 
(define *constant-sdl-scancode-y* 28) 
(define *constant-sdl-scancode-z* 29) 
(define *constant-sdl-scancode-1* 30) 
(define *constant-sdl-scancode-2* 31) 
(define *constant-sdl-scancode-3* 32) 
(define *constant-sdl-scancode-4* 33) 
(define *constant-sdl-scancode-5* 34) 
(define *constant-sdl-scancode-6* 35) 
(define *constant-sdl-scancode-7* 36) 
(define *constant-sdl-scancode-8* 37) 
(define *constant-sdl-scancode-9* 38) 
(define *constant-sdl-scancode-0* 39) 
(define *constant-sdl-scancode-return* 40) 
(define *constant-sdl-scancode-escape* 41) 
(define *constant-sdl-scancode-backspace* 42) 
(define *constant-sdl-scancode-tab* 43) 
(define *constant-sdl-scancode-space* 44) 
(define *constant-sdl-scancode-minus* 45) 
(define *constant-sdl-scancode-equals* 46) 
(define *constant-sdl-scancode-leftbracket* 47) 
(define *constant-sdl-scancode-rightbracket* 48) 
(define *constant-sdl-scancode-backslash* 49) 
(define *constant-sdl-scancode-nonushash* 50) 
(define *constant-sdl-scancode-semicolon* 51) 
(define *constant-sdl-scancode-apostrophe* 52) 
(define *constant-sdl-scancode-grave* 53) 
(define *constant-sdl-scancode-comma* 54) 
(define *constant-sdl-scancode-period* 55) 
(define *constant-sdl-scancode-slash* 56) 
(define *constant-sdl-scancode-capslock* 57) 
(define *constant-sdl-scancode-f1* 58) 
(define *constant-sdl-scancode-f2* 59) 
(define *constant-sdl-scancode-f3* 60) 
(define *constant-sdl-scancode-f4* 61) 
(define *constant-sdl-scancode-f5* 62) 
(define *constant-sdl-scancode-f6* 63) 
(define *constant-sdl-scancode-f7* 64) 
(define *constant-sdl-scancode-f8* 65) 
(define *constant-sdl-scancode-f9* 66) 
(define *constant-sdl-scancode-f10* 67) 
(define *constant-sdl-scancode-f11* 68) 
(define *constant-sdl-scancode-f12* 69) 
(define *constant-sdl-scancode-printscreen* 70) 
(define *constant-sdl-scancode-scrolllock* 71) 
(define *constant-sdl-scancode-pause* 72) 
(define *constant-sdl-scancode-insert* 73) 
(define *constant-sdl-scancode-home* 74) 
(define *constant-sdl-scancode-pageup* 75) 
(define *constant-sdl-scancode-delete* 76) 
(define *constant-sdl-scancode-end* 77) 
(define *constant-sdl-scancode-pagedown* 78) 
(define *constant-sdl-scancode-right* 79) 
(define *constant-sdl-scancode-left* 80) 
(define *constant-sdl-scancode-down* 81) 
(define *constant-sdl-scancode-up* 82) 
(define *constant-sdl-scancode-numlockclear* 83) 
(define *constant-sdl-scancode-kp-divide* 84) 
(define *constant-sdl-scancode-kp-multiply* 85) 
(define *constant-sdl-scancode-kp-minus* 86) 
(define *constant-sdl-scancode-kp-plus* 87) 
(define *constant-sdl-scancode-kp-enter* 88) 
(define *constant-sdl-scancode-kp-1* 89) 
(define *constant-sdl-scancode-kp-2* 90) 
(define *constant-sdl-scancode-kp-3* 91) 
(define *constant-sdl-scancode-kp-4* 92) 
(define *constant-sdl-scancode-kp-5* 93) 
(define *constant-sdl-scancode-kp-6* 94) 
(define *constant-sdl-scancode-kp-7* 95) 
(define *constant-sdl-scancode-kp-8* 96) 
(define *constant-sdl-scancode-kp-9* 97) 
(define *constant-sdl-scancode-kp-0* 98) 
(define *constant-sdl-scancode-kp-period* 99) 
(define *constant-sdl-scancode-nonusbackslash* 100) 
(define *constant-sdl-scancode-application* 101) 
(define *constant-sdl-scancode-power* 102) 
(define *constant-sdl-scancode-kp-equals* 103) 
(define *constant-sdl-scancode-f13* 104) 
(define *constant-sdl-scancode-f14* 105) 
(define *constant-sdl-scancode-f15* 106) 
(define *constant-sdl-scancode-f16* 107) 
(define *constant-sdl-scancode-f17* 108) 
(define *constant-sdl-scancode-f18* 109) 
(define *constant-sdl-scancode-f19* 110) 
(define *constant-sdl-scancode-f20* 111) 
(define *constant-sdl-scancode-f21* 112) 
(define *constant-sdl-scancode-f22* 113) 
(define *constant-sdl-scancode-f23* 114) 
(define *constant-sdl-scancode-f24* 115) 
(define *constant-sdl-scancode-execute* 116) 
(define *constant-sdl-scancode-help* 117) 
(define *constant-sdl-scancode-menu* 118) 
(define *constant-sdl-scancode-select* 119) 
(define *constant-sdl-scancode-stop* 120) 
(define *constant-sdl-scancode-again* 121) 
(define *constant-sdl-scancode-undo* 122) 
(define *constant-sdl-scancode-cut* 123) 
(define *constant-sdl-scancode-copy* 124) 
(define *constant-sdl-scancode-paste* 125) 
(define *constant-sdl-scancode-find* 126) 
(define *constant-sdl-scancode-mute* 127) 
(define *constant-sdl-scancode-volumeup* 128) 
(define *constant-sdl-scancode-volumedown* 129) 
(define *constant-sdl-scancode-lockingcapslock* 130) 
(define *constant-sdl-scancode-lockingnumlock* 131) 
(define *constant-sdl-scancode-lockingscrolllock* 132) 
(define *constant-sdl-scancode-kp-comma* 133) 
(define *constant-sdl-scancode-kp-equalsas400* 134) 
(define *constant-sdl-scancode-international1* 135) 
(define *constant-sdl-scancode-international2* 136) 
(define *constant-sdl-scancode-international3* 137) 
(define *constant-sdl-scancode-international4* 138) 
(define *constant-sdl-scancode-international5* 139) 
(define *constant-sdl-scancode-international6* 140) 
(define *constant-sdl-scancode-international7* 141) 
(define *constant-sdl-scancode-international8* 142) 
(define *constant-sdl-scancode-international9* 143) 
(define *constant-sdl-scancode-lang1* 144) 
(define *constant-sdl-scancode-lang2* 145) 
(define *constant-sdl-scancode-lang3* 146) 
(define *constant-sdl-scancode-lang4* 147) 
(define *constant-sdl-scancode-lang5* 148) 
(define *constant-sdl-scancode-lang6* 149) 
(define *constant-sdl-scancode-lang7* 150) 
(define *constant-sdl-scancode-lang8* 151) 
(define *constant-sdl-scancode-lang9* 152) 
(define *constant-sdl-scancode-alterase* 153) 
(define *constant-sdl-scancode-sysreq* 154) 
(define *constant-sdl-scancode-cancel* 155) 
(define *constant-sdl-scancode-clear* 156) 
(define *constant-sdl-scancode-prior* 157) 
(define *constant-sdl-scancode-return2* 158) 
(define *constant-sdl-scancode-separator* 159) 
(define *constant-sdl-scancode-out* 160) 
(define *constant-sdl-scancode-oper* 161) 
(define *constant-sdl-scancode-clearagain* 162) 
(define *constant-sdl-scancode-crsel* 163) 
(define *constant-sdl-scancode-exsel* 164) 
(define *constant-sdl-scancode-kp-00* 176) 
(define *constant-sdl-scancode-kp-000* 177) 
(define *constant-sdl-scancode-thousandsseparator* 178) 
(define *constant-sdl-scancode-decimalseparator* 179) 
(define *constant-sdl-scancode-currencyunit* 180) 
(define *constant-sdl-scancode-currencysubunit* 181) 
(define *constant-sdl-scancode-kp-leftparen* 182) 
(define *constant-sdl-scancode-kp-rightparen* 183) 
(define *constant-sdl-scancode-kp-leftbrace* 184) 
(define *constant-sdl-scancode-kp-rightbrace* 185) 
(define *constant-sdl-scancode-kp-tab* 186) 
(define *constant-sdl-scancode-kp-backspace* 187) 
(define *constant-sdl-scancode-kp-a* 188) 
(define *constant-sdl-scancode-kp-b* 189) 
(define *constant-sdl-scancode-kp-c* 190) 
(define *constant-sdl-scancode-kp-d* 191) 
(define *constant-sdl-scancode-kp-e* 192) 
(define *constant-sdl-scancode-kp-f* 193) 
(define *constant-sdl-scancode-kp-xor* 194) 
(define *constant-sdl-scancode-kp-power* 195) 
(define *constant-sdl-scancode-kp-percent* 196) 
(define *constant-sdl-scancode-kp-less* 197) 
(define *constant-sdl-scancode-kp-greater* 198) 
(define *constant-sdl-scancode-kp-ampersand* 199) 
(define *constant-sdl-scancode-kp-dblampersand* 200) 
(define *constant-sdl-scancode-kp-verticalbar* 201) 
(define *constant-sdl-scancode-kp-dblverticalbar* 202) 
(define *constant-sdl-scancode-kp-colon* 203) 
(define *constant-sdl-scancode-kp-hash* 204) 
(define *constant-sdl-scancode-kp-space* 205) 
(define *constant-sdl-scancode-kp-at* 206) 
(define *constant-sdl-scancode-kp-exclam* 207) 
(define *constant-sdl-scancode-kp-memstore* 208) 
(define *constant-sdl-scancode-kp-memrecall* 209) 
(define *constant-sdl-scancode-kp-memclear* 210) 
(define *constant-sdl-scancode-kp-memadd* 211) 
(define *constant-sdl-scancode-kp-memsubtract* 212) 
(define *constant-sdl-scancode-kp-memmultiply* 213) 
(define *constant-sdl-scancode-kp-memdivide* 214) 
(define *constant-sdl-scancode-kp-plusminus* 215) 
(define *constant-sdl-scancode-kp-clear* 216) 
(define *constant-sdl-scancode-kp-clearentry* 217) 
(define *constant-sdl-scancode-kp-binary* 218) 
(define *constant-sdl-scancode-kp-octal* 219) 
(define *constant-sdl-scancode-kp-decimal* 220) 
(define *constant-sdl-scancode-kp-hexadecimal* 221) 
(define *constant-sdl-scancode-lctrl* 224) 
(define *constant-sdl-scancode-lshift* 225) 
(define *constant-sdl-scancode-lalt* 226) 
(define *constant-sdl-scancode-lgui* 227) 
(define *constant-sdl-scancode-rctrl* 228) 
(define *constant-sdl-scancode-rshift* 229) 
(define *constant-sdl-scancode-ralt* 230) 
(define *constant-sdl-scancode-rgui* 231) 
(define *constant-sdl-scancode-mode* 257) 
(define *constant-sdl-scancode-audionext* 258) 
(define *constant-sdl-scancode-audioprev* 259) 
(define *constant-sdl-scancode-audiostop* 260) 
(define *constant-sdl-scancode-audioplay* 261) 
(define *constant-sdl-scancode-audiomute* 262) 
(define *constant-sdl-scancode-mediaselect* 263) 
(define *constant-sdl-scancode-www* 264) 
(define *constant-sdl-scancode-mail* 265) 
(define *constant-sdl-scancode-calculator* 266) 
(define *constant-sdl-scancode-computer* 267) 
(define *constant-sdl-scancode-ac-search* 268) 
(define *constant-sdl-scancode-ac-home* 269) 
(define *constant-sdl-scancode-ac-back* 270) 
(define *constant-sdl-scancode-ac-forward* 271) 
(define *constant-sdl-scancode-ac-stop* 272) 
(define *constant-sdl-scancode-ac-refresh* 273) 
(define *constant-sdl-scancode-ac-bookmarks* 274) 
(define *constant-sdl-scancode-brightnessdown* 275) 
(define *constant-sdl-scancode-brightnessup* 276) 
(define *constant-sdl-scancode-displayswitch* 277) 
(define *constant-sdl-scancode-kbdillumtoggle* 278) 
(define *constant-sdl-scancode-kbdillumdown* 279) 
(define *constant-sdl-scancode-kbdillumup* 280) 
(define *constant-sdl-scancode-eject* 281) 
(define *constant-sdl-scancode-sleep* 282) 
(define *constant-sdl-scancode-app1* 283) 
(define *constant-sdl-scancode-app2* 284) 
(define *constant-sdl-scancode-audiorewind* 285) 
(define *constant-sdl-scancode-audiofastforward* 286) 
(define *constant-sdl-scancode-softleft* 287) 
(define *constant-sdl-scancode-softright* 288) 
(define *constant-sdl-scancode-call* 289) 
(define *constant-sdl-scancode-endcall* 290) 
(define *constant-sdl-num-scancodes* 512) 

(define *keyboard-fn-vector* (make-vector 516 #f)) ;; somewhat largeer than 512

(define (register-keyboard-fn i fn)
  (vector-set! *keyboard-fn-vector* i fn))

(define (call-keyboard-fn i)
  (let ((fn (vector-ref *keyboard-fn-vector* i)))
    (cond
     ((procedure? fn) (fn))
     (#t (format #t "there is no keyboard procedure fn dedicated to ~a ~%" i)))))


(register-keyboard-fn *constant-sdl-scancode-unknown* (lambda () (format #t "user pressed sdl-scancode-unknown key ~%")))
(register-keyboard-fn *constant-sdl-scancode-a* (lambda () (format #t "user pressed sdl-scancode-a key ~%")))
(register-keyboard-fn *constant-sdl-scancode-b* (lambda () (format #t "user pressed sdl-scancode-b key ~%")))
(register-keyboard-fn *constant-sdl-scancode-c* (lambda () (format #t "user pressed sdl-scancode-c key ~%")))
(register-keyboard-fn *constant-sdl-scancode-d* (lambda () (format #t "user pressed sdl-scancode-d key ~%")))
(register-keyboard-fn *constant-sdl-scancode-e* (lambda () (format #t "user pressed sdl-scancode-e key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f* (lambda () (format #t "user pressed sdl-scancode-f key ~%")))
(register-keyboard-fn *constant-sdl-scancode-g* (lambda () (format #t "user pressed sdl-scancode-g key ~%")))
(register-keyboard-fn *constant-sdl-scancode-h* (lambda () (format #t "user pressed sdl-scancode-h key ~%")))
(register-keyboard-fn *constant-sdl-scancode-i* (lambda () (format #t "user pressed sdl-scancode-i key ~%")))
(register-keyboard-fn *constant-sdl-scancode-j* (lambda () (format #t "user pressed sdl-scancode-j key ~%")))
(register-keyboard-fn *constant-sdl-scancode-k* (lambda () (format #t "user pressed sdl-scancode-k key ~%")))
(register-keyboard-fn *constant-sdl-scancode-l* (lambda () (format #t "user pressed sdl-scancode-l key ~%")))
(register-keyboard-fn *constant-sdl-scancode-m* (lambda () (format #t "user pressed sdl-scancode-m key ~%")))
(register-keyboard-fn *constant-sdl-scancode-n* (lambda () (format #t "user pressed sdl-scancode-n key ~%")))
(register-keyboard-fn *constant-sdl-scancode-o* (lambda () (format #t "user pressed sdl-scancode-o key ~%")))
(register-keyboard-fn *constant-sdl-scancode-p* (lambda () (format #t "user pressed sdl-scancode-p key ~%")))
(register-keyboard-fn *constant-sdl-scancode-q* (lambda () (format #t "user pressed sdl-scancode-q key ~%")))
(register-keyboard-fn *constant-sdl-scancode-r* (lambda () (format #t "user pressed sdl-scancode-r key ~%")))
(register-keyboard-fn *constant-sdl-scancode-s* (lambda () (format #t "user pressed sdl-scancode-s key ~%")))
(register-keyboard-fn *constant-sdl-scancode-t* (lambda () (format #t "user pressed sdl-scancode-t key ~%")))
(register-keyboard-fn *constant-sdl-scancode-u* (lambda () (format #t "user pressed sdl-scancode-u key ~%")))
(register-keyboard-fn *constant-sdl-scancode-v* (lambda () (format #t "user pressed sdl-scancode-v key ~%")))
(register-keyboard-fn *constant-sdl-scancode-w* (lambda () (format #t "user pressed sdl-scancode-w key ~%")))
(register-keyboard-fn *constant-sdl-scancode-x* (lambda () (format #t "user pressed sdl-scancode-x key ~%")))
(register-keyboard-fn *constant-sdl-scancode-y* (lambda () (format #t "user pressed sdl-scancode-y key ~%")))
(register-keyboard-fn *constant-sdl-scancode-z* (lambda () (format #t "user pressed sdl-scancode-z key ~%")))
(register-keyboard-fn *constant-sdl-scancode-1* (lambda () (format #t "user pressed sdl-scancode-1 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-2* (lambda () (format #t "user pressed sdl-scancode-2 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-3* (lambda () (format #t "user pressed sdl-scancode-3 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-4* (lambda () (format #t "user pressed sdl-scancode-4 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-5* (lambda () (format #t "user pressed sdl-scancode-5 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-6* (lambda () (format #t "user pressed sdl-scancode-6 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-7* (lambda () (format #t "user pressed sdl-scancode-7 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-8* (lambda () (format #t "user pressed sdl-scancode-8 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-9* (lambda () (format #t "user pressed sdl-scancode-9 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-0* (lambda () (format #t "user pressed sdl-scancode-0 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-return* (lambda () (format #t "user pressed sdl-scancode-return key ~%")))
(register-keyboard-fn *constant-sdl-scancode-escape* (lambda () (format #t "user pressed sdl-scancode-escape key ~%")))
(register-keyboard-fn *constant-sdl-scancode-backspace* (lambda () (format #t "user pressed sdl-scancode-backspace key ~%")))
(register-keyboard-fn *constant-sdl-scancode-tab* (lambda () (format #t "user pressed sdl-scancode-tab key ~%")))
(register-keyboard-fn *constant-sdl-scancode-space* (lambda () (format #t "user pressed sdl-scancode-space key ~%")))
(register-keyboard-fn *constant-sdl-scancode-minus* (lambda () (format #t "user pressed sdl-scancode-minus key ~%")))
(register-keyboard-fn *constant-sdl-scancode-equals* (lambda () (format #t "user pressed sdl-scancode-equals key ~%")))
(register-keyboard-fn *constant-sdl-scancode-leftbracket* (lambda () (format #t "user pressed sdl-scancode-leftbracket key ~%")))
(register-keyboard-fn *constant-sdl-scancode-rightbracket* (lambda () (format #t "user pressed sdl-scancode-rightbracket key ~%")))
(register-keyboard-fn *constant-sdl-scancode-backslash* (lambda () (format #t "user pressed sdl-scancode-backslash key ~%")))
(register-keyboard-fn *constant-sdl-scancode-nonushash* (lambda () (format #t "user pressed sdl-scancode-nonushash key ~%")))
(register-keyboard-fn *constant-sdl-scancode-semicolon* (lambda () (format #t "user pressed sdl-scancode-semicolon key ~%")))
(register-keyboard-fn *constant-sdl-scancode-apostrophe* (lambda () (format #t "user pressed sdl-scancode-apostrophe key ~%")))
(register-keyboard-fn *constant-sdl-scancode-grave* (lambda () (format #t "user pressed sdl-scancode-grave key ~%")))
(register-keyboard-fn *constant-sdl-scancode-comma* (lambda () (format #t "user pressed sdl-scancode-comma key ~%")))
(register-keyboard-fn *constant-sdl-scancode-period* (lambda () (format #t "user pressed sdl-scancode-period key ~%")))
(register-keyboard-fn *constant-sdl-scancode-slash* (lambda () (format #t "user pressed sdl-scancode-slash key ~%")))
(register-keyboard-fn *constant-sdl-scancode-capslock* (lambda () (format #t "user pressed sdl-scancode-capslock key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f1* (lambda () (format #t "user pressed sdl-scancode-f1 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f2* (lambda () (format #t "user pressed sdl-scancode-f2 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f3* (lambda () (format #t "user pressed sdl-scancode-f3 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f4* (lambda () (format #t "user pressed sdl-scancode-f4 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f5* (lambda () (format #t "user pressed sdl-scancode-f5 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f6* (lambda () (format #t "user pressed sdl-scancode-f6 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f7* (lambda () (format #t "user pressed sdl-scancode-f7 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f8* (lambda () (format #t "user pressed sdl-scancode-f8 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f9* (lambda () (format #t "user pressed sdl-scancode-f9 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f10* (lambda () (format #t "user pressed sdl-scancode-f10 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f11* (lambda () (format #t "user pressed sdl-scancode-f11 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f12* (lambda () (format #t "user pressed sdl-scancode-f12 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-printscreen* (lambda () (format #t "user pressed sdl-scancode-printscreen key ~%")))
(register-keyboard-fn *constant-sdl-scancode-scrolllock* (lambda () (format #t "user pressed sdl-scancode-scrolllock key ~%")))
(register-keyboard-fn *constant-sdl-scancode-pause* (lambda () (format #t "user pressed sdl-scancode-pause key ~%")))
(register-keyboard-fn *constant-sdl-scancode-insert* (lambda () (format #t "user pressed sdl-scancode-insert key ~%")))
(register-keyboard-fn *constant-sdl-scancode-home* (lambda () (format #t "user pressed sdl-scancode-home key ~%")))
(register-keyboard-fn *constant-sdl-scancode-pageup* (lambda () (format #t "user pressed sdl-scancode-pageup key ~%")))
(register-keyboard-fn *constant-sdl-scancode-delete* (lambda () (format #t "user pressed sdl-scancode-delete key ~%")))
(register-keyboard-fn *constant-sdl-scancode-end* (lambda () (format #t "user pressed sdl-scancode-end key ~%")))
(register-keyboard-fn *constant-sdl-scancode-pagedown* (lambda () (format #t "user pressed sdl-scancode-pagedown key ~%")))
(register-keyboard-fn *constant-sdl-scancode-right* (lambda () (format #t "user pressed sdl-scancode-right key ~%")))
(register-keyboard-fn *constant-sdl-scancode-left* (lambda () (format #t "user pressed sdl-scancode-left key ~%")))
(register-keyboard-fn *constant-sdl-scancode-down* (lambda () (format #t "user pressed sdl-scancode-down key ~%")))
(register-keyboard-fn *constant-sdl-scancode-up* (lambda () (format #t "user pressed sdl-scancode-up key ~%")))
(register-keyboard-fn *constant-sdl-scancode-numlockclear* (lambda () (format #t "user pressed sdl-scancode-numlockclear key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-divide* (lambda () (format #t "user pressed sdl-scancode-kp-divide key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-multiply* (lambda () (format #t "user pressed sdl-scancode-kp-multiply key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-minus* (lambda () (format #t "user pressed sdl-scancode-kp-minus key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-plus* (lambda () (format #t "user pressed sdl-scancode-kp-plus key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-enter* (lambda () (format #t "user pressed sdl-scancode-kp-enter key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-1* (lambda () (format #t "user pressed sdl-scancode-kp-1 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-2* (lambda () (format #t "user pressed sdl-scancode-kp-2 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-3* (lambda () (format #t "user pressed sdl-scancode-kp-3 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-4* (lambda () (format #t "user pressed sdl-scancode-kp-4 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-5* (lambda () (format #t "user pressed sdl-scancode-kp-5 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-6* (lambda () (format #t "user pressed sdl-scancode-kp-6 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-7* (lambda () (format #t "user pressed sdl-scancode-kp-7 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-8* (lambda () (format #t "user pressed sdl-scancode-kp-8 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-9* (lambda () (format #t "user pressed sdl-scancode-kp-9 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-0* (lambda () (format #t "user pressed sdl-scancode-kp-0 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-period* (lambda () (format #t "user pressed sdl-scancode-kp-period key ~%")))
(register-keyboard-fn *constant-sdl-scancode-nonusbackslash* (lambda () (format #t "user pressed sdl-scancode-nonusbackslash key ~%")))
(register-keyboard-fn *constant-sdl-scancode-application* (lambda () (format #t "user pressed sdl-scancode-application key ~%")))
(register-keyboard-fn *constant-sdl-scancode-power* (lambda () (format #t "user pressed sdl-scancode-power key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-equals* (lambda () (format #t "user pressed sdl-scancode-kp-equals key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f13* (lambda () (format #t "user pressed sdl-scancode-f13 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f14* (lambda () (format #t "user pressed sdl-scancode-f14 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f15* (lambda () (format #t "user pressed sdl-scancode-f15 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f16* (lambda () (format #t "user pressed sdl-scancode-f16 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f17* (lambda () (format #t "user pressed sdl-scancode-f17 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f18* (lambda () (format #t "user pressed sdl-scancode-f18 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f19* (lambda () (format #t "user pressed sdl-scancode-f19 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f20* (lambda () (format #t "user pressed sdl-scancode-f20 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f21* (lambda () (format #t "user pressed sdl-scancode-f21 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f22* (lambda () (format #t "user pressed sdl-scancode-f22 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f23* (lambda () (format #t "user pressed sdl-scancode-f23 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-f24* (lambda () (format #t "user pressed sdl-scancode-f24 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-execute* (lambda () (format #t "user pressed sdl-scancode-execute key ~%")))
(register-keyboard-fn *constant-sdl-scancode-help* (lambda () (format #t "user pressed sdl-scancode-help key ~%")))
(register-keyboard-fn *constant-sdl-scancode-menu* (lambda () (format #t "user pressed sdl-scancode-menu key ~%")))
(register-keyboard-fn *constant-sdl-scancode-select* (lambda () (format #t "user pressed sdl-scancode-select key ~%")))
(register-keyboard-fn *constant-sdl-scancode-stop* (lambda () (format #t "user pressed sdl-scancode-stop key ~%")))
(register-keyboard-fn *constant-sdl-scancode-again* (lambda () (format #t "user pressed sdl-scancode-again key ~%")))
(register-keyboard-fn *constant-sdl-scancode-undo* (lambda () (format #t "user pressed sdl-scancode-undo key ~%")))
(register-keyboard-fn *constant-sdl-scancode-cut* (lambda () (format #t "user pressed sdl-scancode-cut key ~%")))
(register-keyboard-fn *constant-sdl-scancode-copy* (lambda () (format #t "user pressed sdl-scancode-copy key ~%")))
(register-keyboard-fn *constant-sdl-scancode-paste* (lambda () (format #t "user pressed sdl-scancode-paste key ~%")))
(register-keyboard-fn *constant-sdl-scancode-find* (lambda () (format #t "user pressed sdl-scancode-find key ~%")))
(register-keyboard-fn *constant-sdl-scancode-mute* (lambda () (format #t "user pressed sdl-scancode-mute key ~%")))
(register-keyboard-fn *constant-sdl-scancode-volumeup* (lambda () (format #t "user pressed sdl-scancode-volumeup key ~%")))
(register-keyboard-fn *constant-sdl-scancode-volumedown* (lambda () (format #t "user pressed sdl-scancode-volumedown key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lockingcapslock* (lambda () (format #t "user pressed sdl-scancode-lockingcapslock key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lockingnumlock* (lambda () (format #t "user pressed sdl-scancode-lockingnumlock key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lockingscrolllock* (lambda () (format #t "user pressed sdl-scancode-lockingscrolllock key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-comma* (lambda () (format #t "user pressed sdl-scancode-kp-comma key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-equalsas400* (lambda () (format #t "user pressed sdl-scancode-kp-equalsas400 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international1* (lambda () (format #t "user pressed sdl-scancode-international1 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international2* (lambda () (format #t "user pressed sdl-scancode-international2 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international3* (lambda () (format #t "user pressed sdl-scancode-international3 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international4* (lambda () (format #t "user pressed sdl-scancode-international4 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international5* (lambda () (format #t "user pressed sdl-scancode-international5 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international6* (lambda () (format #t "user pressed sdl-scancode-international6 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international7* (lambda () (format #t "user pressed sdl-scancode-international7 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international8* (lambda () (format #t "user pressed sdl-scancode-international8 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-international9* (lambda () (format #t "user pressed sdl-scancode-international9 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang1* (lambda () (format #t "user pressed sdl-scancode-lang1 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang2* (lambda () (format #t "user pressed sdl-scancode-lang2 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang3* (lambda () (format #t "user pressed sdl-scancode-lang3 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang4* (lambda () (format #t "user pressed sdl-scancode-lang4 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang5* (lambda () (format #t "user pressed sdl-scancode-lang5 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang6* (lambda () (format #t "user pressed sdl-scancode-lang6 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang7* (lambda () (format #t "user pressed sdl-scancode-lang7 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang8* (lambda () (format #t "user pressed sdl-scancode-lang8 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lang9* (lambda () (format #t "user pressed sdl-scancode-lang9 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-alterase* (lambda () (format #t "user pressed sdl-scancode-alterase key ~%")))
(register-keyboard-fn *constant-sdl-scancode-sysreq* (lambda () (format #t "user pressed sdl-scancode-sysreq key ~%")))
(register-keyboard-fn *constant-sdl-scancode-cancel* (lambda () (format #t "user pressed sdl-scancode-cancel key ~%")))
(register-keyboard-fn *constant-sdl-scancode-clear* (lambda () (format #t "user pressed sdl-scancode-clear key ~%")))
(register-keyboard-fn *constant-sdl-scancode-prior* (lambda () (format #t "user pressed sdl-scancode-prior key ~%")))
(register-keyboard-fn *constant-sdl-scancode-return2* (lambda () (format #t "user pressed sdl-scancode-return2 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-separator* (lambda () (format #t "user pressed sdl-scancode-separator key ~%")))
(register-keyboard-fn *constant-sdl-scancode-out* (lambda () (format #t "user pressed sdl-scancode-out key ~%")))
(register-keyboard-fn *constant-sdl-scancode-oper* (lambda () (format #t "user pressed sdl-scancode-oper key ~%")))
(register-keyboard-fn *constant-sdl-scancode-clearagain* (lambda () (format #t "user pressed sdl-scancode-clearagain key ~%")))
(register-keyboard-fn *constant-sdl-scancode-crsel* (lambda () (format #t "user pressed sdl-scancode-crsel key ~%")))
(register-keyboard-fn *constant-sdl-scancode-exsel* (lambda () (format #t "user pressed sdl-scancode-exsel key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-00* (lambda () (format #t "user pressed sdl-scancode-kp-00 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-000* (lambda () (format #t "user pressed sdl-scancode-kp-000 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-thousandsseparator* (lambda () (format #t "user pressed sdl-scancode-thousandsseparator key ~%")))
(register-keyboard-fn *constant-sdl-scancode-decimalseparator* (lambda () (format #t "user pressed sdl-scancode-decimalseparator key ~%")))
(register-keyboard-fn *constant-sdl-scancode-currencyunit* (lambda () (format #t "user pressed sdl-scancode-currencyunit key ~%")))
(register-keyboard-fn *constant-sdl-scancode-currencysubunit* (lambda () (format #t "user pressed sdl-scancode-currencysubunit key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-leftparen* (lambda () (format #t "user pressed sdl-scancode-kp-leftparen key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-rightparen* (lambda () (format #t "user pressed sdl-scancode-kp-rightparen key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-leftbrace* (lambda () (format #t "user pressed sdl-scancode-kp-leftbrace key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-rightbrace* (lambda () (format #t "user pressed sdl-scancode-kp-rightbrace key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-tab* (lambda () (format #t "user pressed sdl-scancode-kp-tab key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-backspace* (lambda () (format #t "user pressed sdl-scancode-kp-backspace key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-a* (lambda () (format #t "user pressed sdl-scancode-kp-a key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-b* (lambda () (format #t "user pressed sdl-scancode-kp-b key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-c* (lambda () (format #t "user pressed sdl-scancode-kp-c key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-d* (lambda () (format #t "user pressed sdl-scancode-kp-d key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-e* (lambda () (format #t "user pressed sdl-scancode-kp-e key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-f* (lambda () (format #t "user pressed sdl-scancode-kp-f key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-xor* (lambda () (format #t "user pressed sdl-scancode-kp-xor key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-power* (lambda () (format #t "user pressed sdl-scancode-kp-power key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-percent* (lambda () (format #t "user pressed sdl-scancode-kp-percent key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-less* (lambda () (format #t "user pressed sdl-scancode-kp-less key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-greater* (lambda () (format #t "user pressed sdl-scancode-kp-greater key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-ampersand* (lambda () (format #t "user pressed sdl-scancode-kp-ampersand key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-dblampersand* (lambda () (format #t "user pressed sdl-scancode-kp-dblampersand key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-verticalbar* (lambda () (format #t "user pressed sdl-scancode-kp-verticalbar key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-dblverticalbar* (lambda () (format #t "user pressed sdl-scancode-kp-dblverticalbar key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-colon* (lambda () (format #t "user pressed sdl-scancode-kp-colon key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-hash* (lambda () (format #t "user pressed sdl-scancode-kp-hash key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-space* (lambda () (format #t "user pressed sdl-scancode-kp-space key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-at* (lambda () (format #t "user pressed sdl-scancode-kp-at key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-exclam* (lambda () (format #t "user pressed sdl-scancode-kp-exclam key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-memstore* (lambda () (format #t "user pressed sdl-scancode-kp-memstore key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-memrecall* (lambda () (format #t "user pressed sdl-scancode-kp-memrecall key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-memclear* (lambda () (format #t "user pressed sdl-scancode-kp-memclear key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-memadd* (lambda () (format #t "user pressed sdl-scancode-kp-memadd key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-memsubtract* (lambda () (format #t "user pressed sdl-scancode-kp-memsubtract key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-memmultiply* (lambda () (format #t "user pressed sdl-scancode-kp-memmultiply key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-memdivide* (lambda () (format #t "user pressed sdl-scancode-kp-memdivide key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-plusminus* (lambda () (format #t "user pressed sdl-scancode-kp-plusminus key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-clear* (lambda () (format #t "user pressed sdl-scancode-kp-clear key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-clearentry* (lambda () (format #t "user pressed sdl-scancode-kp-clearentry key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-binary* (lambda () (format #t "user pressed sdl-scancode-kp-binary key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-octal* (lambda () (format #t "user pressed sdl-scancode-kp-octal key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-decimal* (lambda () (format #t "user pressed sdl-scancode-kp-decimal key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kp-hexadecimal* (lambda () (format #t "user pressed sdl-scancode-kp-hexadecimal key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lctrl* (lambda () (format #t "user pressed sdl-scancode-lctrl key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lshift* (lambda () (format #t "user pressed sdl-scancode-lshift key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lalt* (lambda () (format #t "user pressed sdl-scancode-lalt key ~%")))
(register-keyboard-fn *constant-sdl-scancode-lgui* (lambda () (format #t "user pressed sdl-scancode-lgui key ~%")))
(register-keyboard-fn *constant-sdl-scancode-rctrl* (lambda () (format #t "user pressed sdl-scancode-rctrl key ~%")))
(register-keyboard-fn *constant-sdl-scancode-rshift* (lambda () (format #t "user pressed sdl-scancode-rshift key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ralt* (lambda () (format #t "user pressed sdl-scancode-ralt key ~%")))
(register-keyboard-fn *constant-sdl-scancode-rgui* (lambda () (format #t "user pressed sdl-scancode-rgui key ~%")))
(register-keyboard-fn *constant-sdl-scancode-mode* (lambda () (format #t "user pressed sdl-scancode-mode key ~%")))
(register-keyboard-fn *constant-sdl-scancode-audionext* (lambda () (format #t "user pressed sdl-scancode-audionext key ~%")))
(register-keyboard-fn *constant-sdl-scancode-audioprev* (lambda () (format #t "user pressed sdl-scancode-audioprev key ~%")))
(register-keyboard-fn *constant-sdl-scancode-audiostop* (lambda () (format #t "user pressed sdl-scancode-audiostop key ~%")))
(register-keyboard-fn *constant-sdl-scancode-audioplay* (lambda () (format #t "user pressed sdl-scancode-audioplay key ~%")))
(register-keyboard-fn *constant-sdl-scancode-audiomute* (lambda () (format #t "user pressed sdl-scancode-audiomute key ~%")))
(register-keyboard-fn *constant-sdl-scancode-mediaselect* (lambda () (format #t "user pressed sdl-scancode-mediaselect key ~%")))
(register-keyboard-fn *constant-sdl-scancode-www* (lambda () (format #t "user pressed sdl-scancode-www key ~%")))
(register-keyboard-fn *constant-sdl-scancode-mail* (lambda () (format #t "user pressed sdl-scancode-mail key ~%")))
(register-keyboard-fn *constant-sdl-scancode-calculator* (lambda () (format #t "user pressed sdl-scancode-calculator key ~%")))
(register-keyboard-fn *constant-sdl-scancode-computer* (lambda () (format #t "user pressed sdl-scancode-computer key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ac-search* (lambda () (format #t "user pressed sdl-scancode-ac-search key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ac-home* (lambda () (format #t "user pressed sdl-scancode-ac-home key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ac-back* (lambda () (format #t "user pressed sdl-scancode-ac-back key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ac-forward* (lambda () (format #t "user pressed sdl-scancode-ac-forward key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ac-stop* (lambda () (format #t "user pressed sdl-scancode-ac-stop key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ac-refresh* (lambda () (format #t "user pressed sdl-scancode-ac-refresh key ~%")))
(register-keyboard-fn *constant-sdl-scancode-ac-bookmarks* (lambda () (format #t "user pressed sdl-scancode-ac-bookmarks key ~%")))
(register-keyboard-fn *constant-sdl-scancode-brightnessdown* (lambda () (format #t "user pressed sdl-scancode-brightnessdown key ~%")))
(register-keyboard-fn *constant-sdl-scancode-brightnessup* (lambda () (format #t "user pressed sdl-scancode-brightnessup key ~%")))
(register-keyboard-fn *constant-sdl-scancode-displayswitch* (lambda () (format #t "user pressed sdl-scancode-displayswitch key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kbdillumtoggle* (lambda () (format #t "user pressed sdl-scancode-kbdillumtoggle key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kbdillumdown* (lambda () (format #t "user pressed sdl-scancode-kbdillumdown key ~%")))
(register-keyboard-fn *constant-sdl-scancode-kbdillumup* (lambda () (format #t "user pressed sdl-scancode-kbdillumup key ~%")))
(register-keyboard-fn *constant-sdl-scancode-eject* (lambda () (format #t "user pressed sdl-scancode-eject key ~%")))
(register-keyboard-fn *constant-sdl-scancode-sleep* (lambda () (format #t "user pressed sdl-scancode-sleep key ~%")))
(register-keyboard-fn *constant-sdl-scancode-app1* (lambda () (format #t "user pressed sdl-scancode-app1 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-app2* (lambda () (format #t "user pressed sdl-scancode-app2 key ~%")))
(register-keyboard-fn *constant-sdl-scancode-audiorewind* (lambda () (format #t "user pressed sdl-scancode-audiorewind key ~%")))
(register-keyboard-fn *constant-sdl-scancode-audiofastforward* (lambda () (format #t "user pressed sdl-scancode-audiofastforward key ~%")))
(register-keyboard-fn *constant-sdl-scancode-softleft* (lambda () (format #t "user pressed sdl-scancode-softleft key ~%")))
(register-keyboard-fn *constant-sdl-scancode-softright* (lambda () (format #t "user pressed sdl-scancode-softright key ~%")))
(register-keyboard-fn *constant-sdl-scancode-call* (lambda () (format #t "user pressed sdl-scancode-call key ~%")))
(register-keyboard-fn *constant-sdl-scancode-endcall* (lambda () (format #t "user pressed sdl-scancode-endcall key ~%")))
(register-keyboard-fn *constant-sdl-num-scancodes* (lambda () (format #t "user pressed sdl-num-scancodes key ~%")))

#|

int SDL_FillRect (SDL_Surface * dst, const SDL_Rect * rect, Uint32 color);

typedef struct SDL_Rect
{
    int x, y;
    int w, h;
} SDL_Rect;


================= SDL_Rect ============= 
SDL_Rect has size in bytes of : 16
SDL_Rect x : 0
SDL_Rect y : 4
SDL_Rect w: 8
SDL_Rect h : 12


signed int prefix s ; we can see x takes 4 bytes 0 1 2 3 ; since 4 bytes is 32bits  named is s32 

x sint 0
y sint 4
w sint 8
h sint 12

need create a bytevector of size 16 , offset 0 = x ; offset 4 = y ; offset w = 8 ; offset h = 12 


|#




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


#|
typedef struct SDL_WindowEvent
{
    Uint32 type;        /**< SDL_WINDOWEVENT */
    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
    Uint32 windowID;    /**< The associated window */
    Uint8 event;        /**< SDL_WindowEventID */
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint32 data1;       /**< event dependent data */
    Sint32 data2;       /**< event dependent data */
} SDL_WindowEvent;

typedef enum SDL_WindowEventID
{
    SDL_WINDOWEVENT_NONE,      0     /**< Never used */
    SDL_WINDOWEVENT_SHOWN,     1     /**< Window has been shown */
    SDL_WINDOWEVENT_HIDDEN,    2     /**< Window has been hidden */
    SDL_WINDOWEVENT_EXPOSED,   3     /**< Window has been exposed and should be
                                         redrawn */
    SDL_WINDOWEVENT_MOVED,     4     /**< Window has been moved to data1, data2
                                     */
    SDL_WINDOWEVENT_RESIZED,   5     /**< Window has been resized to data1xdata2 */
    SDL_WINDOWEVENT_SIZE_CHANGED, 6   /**< The window size has changed, either as
                                         a result of an API call or through the
                                         system or user changing the window size. */
    SDL_WINDOWEVENT_MINIMIZED,   7   /**< Window has been minimized */
    SDL_WINDOWEVENT_MAXIMIZED,   8   /**< Window has been maximized */
    SDL_WINDOWEVENT_RESTORED,    9   /**< Window has been restored to normal size
                                         and position */
    SDL_WINDOWEVENT_ENTER,     10     /**< Window has gained mouse focus */
    SDL_WINDOWEVENT_LEAVE,     11     /**< Window has lost mouse focus */
    SDL_WINDOWEVENT_FOCUS_GAINED,12   /**< Window has gained keyboard focus */
    SDL_WINDOWEVENT_FOCUS_LOST,  13   /**< Window has lost keyboard focus */
    SDL_WINDOWEVENT_CLOSE,       14   /**< The window manager requests that the window be closed */
    SDL_WINDOWEVENT_TAKE_FOCUS,  15   /**< Window is being offered a focus (should SetWindowInputFocus() on itself or a subwindow, or ignore) */
    SDL_WINDOWEVENT_HIT_TEST,  16     /**< Window had a hit test that wasn't SDL_HITTEST_NORMAL. */
    SDL_WINDOWEVENT_ICCPROF_CHANGED, 17 /**< The ICC profile of the window's display has changed. */
    SDL_WINDOWEVENT_DISPLAY_CHANGED 18 /**< Window has been moved to display data1. */
} SDL_WindowEventID;


|#

(define *sdl-window-event-none* 0)
(define *sdl-window-event-shown* 1)
(define *sdl-window-event-hidden* 2)
(define *sdl-window-event-exposed* 3)
(define *sdl-window-event-moved* 4)
(define *sdl-window-event-resized* 5)
(define *sdl-window-event-changed* 6)
(define *sdl-window-event-minimized* 7)
(define *sdl-window-event-maximized* 8)
(define *sdl-window-event-restored* 9)
(define *sdl-window-event-enter* 10)
(define *sdl-window-event-leave* 11)
(define *sdl-window-event-focus-gained* 12)
(define *sdl-window-event-focus-lost* 13)
(define *sdl-window-event-close* 14)
(define *sdl-window-event-take-focus* 15)
(define *sdl-window-event-hit-test* 16)
(define *sdl-window-event-icc-prof-changed* 17)
(define *sdl-window-event-display-changed* 18)


