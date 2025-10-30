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
(define *screen-width* 640)
(define *screen-height* 480)
(define *quit* #f)

;; event is a union struct 36 bytes 
(define *event* (make-bytevector 36 0))

(define (register-keys)
  "simply assigns a routine that prints that key scancode to console "
  
  (register-keyboard-fn *sdl-scancode-unknown* (lambda () (format #t "user pressed sdl-scancode-unknown key ~%")))
  (register-keyboard-fn *sdl-scancode-a* (lambda () (format #t "user pressed sdl-scancode-a key ~%")))
  (register-keyboard-fn *sdl-scancode-b* (lambda () (format #t "user pressed sdl-scancode-b key ~%")))
  (register-keyboard-fn *sdl-scancode-c* (lambda () (format #t "user pressed sdl-scancode-c key ~%")))
  (register-keyboard-fn *sdl-scancode-d* (lambda () (format #t "user pressed sdl-scancode-d key ~%")))
  (register-keyboard-fn *sdl-scancode-e* (lambda () (format #t "user pressed sdl-scancode-e key ~%")))
  (register-keyboard-fn *sdl-scancode-f* (lambda () (format #t "user pressed sdl-scancode-f key ~%")))
  (register-keyboard-fn *sdl-scancode-g* (lambda () (format #t "user pressed sdl-scancode-g key ~%")))
  (register-keyboard-fn *sdl-scancode-h* (lambda () (format #t "user pressed sdl-scancode-h key ~%")))
  (register-keyboard-fn *sdl-scancode-i* (lambda () (format #t "user pressed sdl-scancode-i key ~%")))
  (register-keyboard-fn *sdl-scancode-j* (lambda () (format #t "user pressed sdl-scancode-j key ~%")))
  (register-keyboard-fn *sdl-scancode-k* (lambda () (format #t "user pressed sdl-scancode-k key ~%")))
  (register-keyboard-fn *sdl-scancode-l* (lambda () (format #t "user pressed sdl-scancode-l key ~%")))
  (register-keyboard-fn *sdl-scancode-m* (lambda () (format #t "user pressed sdl-scancode-m key ~%")))
  (register-keyboard-fn *sdl-scancode-n* (lambda () (format #t "user pressed sdl-scancode-n key ~%")))
  (register-keyboard-fn *sdl-scancode-o* (lambda () (format #t "user pressed sdl-scancode-o key ~%")))
  (register-keyboard-fn *sdl-scancode-p* (lambda () (format #t "user pressed sdl-scancode-p key ~%")))
  (register-keyboard-fn *sdl-scancode-q* (lambda () (format #t "user pressed sdl-scancode-q key ~%")))
  (register-keyboard-fn *sdl-scancode-r* (lambda () (format #t "user pressed sdl-scancode-r key ~%")))
  (register-keyboard-fn *sdl-scancode-s* (lambda () (format #t "user pressed sdl-scancode-s key ~%")))
  (register-keyboard-fn *sdl-scancode-t* (lambda () (format #t "user pressed sdl-scancode-t key ~%")))
  (register-keyboard-fn *sdl-scancode-u* (lambda () (format #t "user pressed sdl-scancode-u key ~%")))
  (register-keyboard-fn *sdl-scancode-v* (lambda () (format #t "user pressed sdl-scancode-v key ~%")))
  (register-keyboard-fn *sdl-scancode-w* (lambda () (format #t "user pressed sdl-scancode-w key ~%")))
  (register-keyboard-fn *sdl-scancode-x* (lambda () (format #t "user pressed sdl-scancode-x key ~%")))
  (register-keyboard-fn *sdl-scancode-y* (lambda () (format #t "user pressed sdl-scancode-y key ~%")))
  (register-keyboard-fn *sdl-scancode-z* (lambda () (format #t "user pressed sdl-scancode-z key ~%")))
  (register-keyboard-fn *sdl-scancode-1* (lambda () (format #t "user pressed sdl-scancode-1 key ~%")))
  (register-keyboard-fn *sdl-scancode-2* (lambda () (format #t "user pressed sdl-scancode-2 key ~%")))
  (register-keyboard-fn *sdl-scancode-3* (lambda () (format #t "user pressed sdl-scancode-3 key ~%")))
  (register-keyboard-fn *sdl-scancode-4* (lambda () (format #t "user pressed sdl-scancode-4 key ~%")))
  (register-keyboard-fn *sdl-scancode-5* (lambda () (format #t "user pressed sdl-scancode-5 key ~%")))
  (register-keyboard-fn *sdl-scancode-6* (lambda () (format #t "user pressed sdl-scancode-6 key ~%")))
  (register-keyboard-fn *sdl-scancode-7* (lambda () (format #t "user pressed sdl-scancode-7 key ~%")))
  (register-keyboard-fn *sdl-scancode-8* (lambda () (format #t "user pressed sdl-scancode-8 key ~%")))
  (register-keyboard-fn *sdl-scancode-9* (lambda () (format #t "user pressed sdl-scancode-9 key ~%")))
  (register-keyboard-fn *sdl-scancode-0* (lambda () (format #t "user pressed sdl-scancode-0 key ~%")))
  (register-keyboard-fn *sdl-scancode-return* (lambda () (format #t "user pressed sdl-scancode-return key ~%")))
  (register-keyboard-fn *sdl-scancode-escape* (lambda () (format #t "user pressed sdl-scancode-escape key ~%")))
  (register-keyboard-fn *sdl-scancode-backspace* (lambda () (format #t "user pressed sdl-scancode-backspace key ~%")))
  (register-keyboard-fn *sdl-scancode-tab* (lambda () (format #t "user pressed sdl-scancode-tab key ~%")))
  (register-keyboard-fn *sdl-scancode-space* (lambda () (format #t "user pressed sdl-scancode-space key ~%")))
  (register-keyboard-fn *sdl-scancode-minus* (lambda () (format #t "user pressed sdl-scancode-minus key ~%")))
  (register-keyboard-fn *sdl-scancode-equals* (lambda () (format #t "user pressed sdl-scancode-equals key ~%")))
  (register-keyboard-fn *sdl-scancode-leftbracket* (lambda () (format #t "user pressed sdl-scancode-leftbracket key ~%")))
  (register-keyboard-fn *sdl-scancode-rightbracket* (lambda () (format #t "user pressed sdl-scancode-rightbracket key ~%")))
  (register-keyboard-fn *sdl-scancode-backslash* (lambda () (format #t "user pressed sdl-scancode-backslash key ~%")))
  (register-keyboard-fn *sdl-scancode-nonushash* (lambda () (format #t "user pressed sdl-scancode-nonushash key ~%")))
  (register-keyboard-fn *sdl-scancode-semicolon* (lambda () (format #t "user pressed sdl-scancode-semicolon key ~%")))
  (register-keyboard-fn *sdl-scancode-apostrophe* (lambda () (format #t "user pressed sdl-scancode-apostrophe key ~%")))
  (register-keyboard-fn *sdl-scancode-grave* (lambda () (format #t "user pressed sdl-scancode-grave key ~%")))
  (register-keyboard-fn *sdl-scancode-comma* (lambda () (format #t "user pressed sdl-scancode-comma key ~%")))
  (register-keyboard-fn *sdl-scancode-period* (lambda () (format #t "user pressed sdl-scancode-period key ~%")))
  (register-keyboard-fn *sdl-scancode-slash* (lambda () (format #t "user pressed sdl-scancode-slash key ~%")))
  (register-keyboard-fn *sdl-scancode-capslock* (lambda () (format #t "user pressed sdl-scancode-capslock key ~%")))
  (register-keyboard-fn *sdl-scancode-f1* (lambda () (format #t "user pressed sdl-scancode-f1 key ~%")))
  (register-keyboard-fn *sdl-scancode-f2* (lambda () (format #t "user pressed sdl-scancode-f2 key ~%")))
  (register-keyboard-fn *sdl-scancode-f3* (lambda () (format #t "user pressed sdl-scancode-f3 key ~%")))
  (register-keyboard-fn *sdl-scancode-f4* (lambda () (format #t "user pressed sdl-scancode-f4 key ~%")))
  (register-keyboard-fn *sdl-scancode-f5* (lambda () (format #t "user pressed sdl-scancode-f5 key ~%")))
  (register-keyboard-fn *sdl-scancode-f6* (lambda () (format #t "user pressed sdl-scancode-f6 key ~%")))
  (register-keyboard-fn *sdl-scancode-f7* (lambda () (format #t "user pressed sdl-scancode-f7 key ~%")))
  (register-keyboard-fn *sdl-scancode-f8* (lambda () (format #t "user pressed sdl-scancode-f8 key ~%")))
  (register-keyboard-fn *sdl-scancode-f9* (lambda () (format #t "user pressed sdl-scancode-f9 key ~%")))
  (register-keyboard-fn *sdl-scancode-f10* (lambda () (format #t "user pressed sdl-scancode-f10 key ~%")))
  (register-keyboard-fn *sdl-scancode-f11* (lambda () (format #t "user pressed sdl-scancode-f11 key ~%")))
  (register-keyboard-fn *sdl-scancode-f12* (lambda () (format #t "user pressed sdl-scancode-f12 key ~%")))
  (register-keyboard-fn *sdl-scancode-printscreen* (lambda () (format #t "user pressed sdl-scancode-printscreen key ~%")))
  (register-keyboard-fn *sdl-scancode-scrolllock* (lambda () (format #t "user pressed sdl-scancode-scrolllock key ~%")))
  (register-keyboard-fn *sdl-scancode-pause* (lambda () (format #t "user pressed sdl-scancode-pause key ~%")))
  (register-keyboard-fn *sdl-scancode-insert* (lambda () (format #t "user pressed sdl-scancode-insert key ~%")))
  (register-keyboard-fn *sdl-scancode-home* (lambda () (format #t "user pressed sdl-scancode-home key ~%")))
  (register-keyboard-fn *sdl-scancode-pageup* (lambda () (format #t "user pressed sdl-scancode-pageup key ~%")))
  (register-keyboard-fn *sdl-scancode-delete* (lambda () (format #t "user pressed sdl-scancode-delete key ~%")))
  (register-keyboard-fn *sdl-scancode-end* (lambda () (format #t "user pressed sdl-scancode-end key ~%")))
  (register-keyboard-fn *sdl-scancode-pagedown* (lambda () (format #t "user pressed sdl-scancode-pagedown key ~%")))
  (register-keyboard-fn *sdl-scancode-right* (lambda () (format #t "user pressed sdl-scancode-right key ~%")))
  (register-keyboard-fn *sdl-scancode-left* (lambda () (format #t "user pressed sdl-scancode-left key ~%")))
  (register-keyboard-fn *sdl-scancode-down* (lambda () (format #t "user pressed sdl-scancode-down key ~%")))
  (register-keyboard-fn *sdl-scancode-up* (lambda () (format #t "user pressed sdl-scancode-up key ~%")))
  (register-keyboard-fn *sdl-scancode-numlockclear* (lambda () (format #t "user pressed sdl-scancode-numlockclear key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-divide* (lambda () (format #t "user pressed sdl-scancode-kp-divide key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-multiply* (lambda () (format #t "user pressed sdl-scancode-kp-multiply key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-minus* (lambda () (format #t "user pressed sdl-scancode-kp-minus key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-plus* (lambda () (format #t "user pressed sdl-scancode-kp-plus key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-enter* (lambda () (format #t "user pressed sdl-scancode-kp-enter key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-1* (lambda () (format #t "user pressed sdl-scancode-kp-1 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-2* (lambda () (format #t "user pressed sdl-scancode-kp-2 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-3* (lambda () (format #t "user pressed sdl-scancode-kp-3 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-4* (lambda () (format #t "user pressed sdl-scancode-kp-4 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-5* (lambda () (format #t "user pressed sdl-scancode-kp-5 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-6* (lambda () (format #t "user pressed sdl-scancode-kp-6 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-7* (lambda () (format #t "user pressed sdl-scancode-kp-7 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-8* (lambda () (format #t "user pressed sdl-scancode-kp-8 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-9* (lambda () (format #t "user pressed sdl-scancode-kp-9 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-0* (lambda () (format #t "user pressed sdl-scancode-kp-0 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-period* (lambda () (format #t "user pressed sdl-scancode-kp-period key ~%")))
  (register-keyboard-fn *sdl-scancode-nonusbackslash* (lambda () (format #t "user pressed sdl-scancode-nonusbackslash key ~%")))
  (register-keyboard-fn *sdl-scancode-application* (lambda () (format #t "user pressed sdl-scancode-application key ~%")))
  (register-keyboard-fn *sdl-scancode-power* (lambda () (format #t "user pressed sdl-scancode-power key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-equals* (lambda () (format #t "user pressed sdl-scancode-kp-equals key ~%")))
  (register-keyboard-fn *sdl-scancode-f13* (lambda () (format #t "user pressed sdl-scancode-f13 key ~%")))
  (register-keyboard-fn *sdl-scancode-f14* (lambda () (format #t "user pressed sdl-scancode-f14 key ~%")))
  (register-keyboard-fn *sdl-scancode-f15* (lambda () (format #t "user pressed sdl-scancode-f15 key ~%")))
  (register-keyboard-fn *sdl-scancode-f16* (lambda () (format #t "user pressed sdl-scancode-f16 key ~%")))
  (register-keyboard-fn *sdl-scancode-f17* (lambda () (format #t "user pressed sdl-scancode-f17 key ~%")))
  (register-keyboard-fn *sdl-scancode-f18* (lambda () (format #t "user pressed sdl-scancode-f18 key ~%")))
  (register-keyboard-fn *sdl-scancode-f19* (lambda () (format #t "user pressed sdl-scancode-f19 key ~%")))
  (register-keyboard-fn *sdl-scancode-f20* (lambda () (format #t "user pressed sdl-scancode-f20 key ~%")))
  (register-keyboard-fn *sdl-scancode-f21* (lambda () (format #t "user pressed sdl-scancode-f21 key ~%")))
  (register-keyboard-fn *sdl-scancode-f22* (lambda () (format #t "user pressed sdl-scancode-f22 key ~%")))
  (register-keyboard-fn *sdl-scancode-f23* (lambda () (format #t "user pressed sdl-scancode-f23 key ~%")))
  (register-keyboard-fn *sdl-scancode-f24* (lambda () (format #t "user pressed sdl-scancode-f24 key ~%")))
  (register-keyboard-fn *sdl-scancode-execute* (lambda () (format #t "user pressed sdl-scancode-execute key ~%")))
  (register-keyboard-fn *sdl-scancode-help* (lambda () (format #t "user pressed sdl-scancode-help key ~%")))
  (register-keyboard-fn *sdl-scancode-menu* (lambda () (format #t "user pressed sdl-scancode-menu key ~%")))
  (register-keyboard-fn *sdl-scancode-select* (lambda () (format #t "user pressed sdl-scancode-select key ~%")))
  (register-keyboard-fn *sdl-scancode-stop* (lambda () (format #t "user pressed sdl-scancode-stop key ~%")))
  (register-keyboard-fn *sdl-scancode-again* (lambda () (format #t "user pressed sdl-scancode-again key ~%")))
  (register-keyboard-fn *sdl-scancode-undo* (lambda () (format #t "user pressed sdl-scancode-undo key ~%")))
  (register-keyboard-fn *sdl-scancode-cut* (lambda () (format #t "user pressed sdl-scancode-cut key ~%")))
  (register-keyboard-fn *sdl-scancode-copy* (lambda () (format #t "user pressed sdl-scancode-copy key ~%")))
  (register-keyboard-fn *sdl-scancode-paste* (lambda () (format #t "user pressed sdl-scancode-paste key ~%")))
  (register-keyboard-fn *sdl-scancode-find* (lambda () (format #t "user pressed sdl-scancode-find key ~%")))
  (register-keyboard-fn *sdl-scancode-mute* (lambda () (format #t "user pressed sdl-scancode-mute key ~%")))
  (register-keyboard-fn *sdl-scancode-volumeup* (lambda () (format #t "user pressed sdl-scancode-volumeup key ~%")))
  (register-keyboard-fn *sdl-scancode-volumedown* (lambda () (format #t "user pressed sdl-scancode-volumedown key ~%")))
  (register-keyboard-fn *sdl-scancode-lockingcapslock* (lambda () (format #t "user pressed sdl-scancode-lockingcapslock key ~%")))
  (register-keyboard-fn *sdl-scancode-lockingnumlock* (lambda () (format #t "user pressed sdl-scancode-lockingnumlock key ~%")))
  (register-keyboard-fn *sdl-scancode-lockingscrolllock* (lambda () (format #t "user pressed sdl-scancode-lockingscrolllock key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-comma* (lambda () (format #t "user pressed sdl-scancode-kp-comma key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-equalsas400* (lambda () (format #t "user pressed sdl-scancode-kp-equalsas400 key ~%")))
  (register-keyboard-fn *sdl-scancode-international1* (lambda () (format #t "user pressed sdl-scancode-international1 key ~%")))
  (register-keyboard-fn *sdl-scancode-international2* (lambda () (format #t "user pressed sdl-scancode-international2 key ~%")))
  (register-keyboard-fn *sdl-scancode-international3* (lambda () (format #t "user pressed sdl-scancode-international3 key ~%")))
  (register-keyboard-fn *sdl-scancode-international4* (lambda () (format #t "user pressed sdl-scancode-international4 key ~%")))
  (register-keyboard-fn *sdl-scancode-international5* (lambda () (format #t "user pressed sdl-scancode-international5 key ~%")))
  (register-keyboard-fn *sdl-scancode-international6* (lambda () (format #t "user pressed sdl-scancode-international6 key ~%")))
  (register-keyboard-fn *sdl-scancode-international7* (lambda () (format #t "user pressed sdl-scancode-international7 key ~%")))
  (register-keyboard-fn *sdl-scancode-international8* (lambda () (format #t "user pressed sdl-scancode-international8 key ~%")))
  (register-keyboard-fn *sdl-scancode-international9* (lambda () (format #t "user pressed sdl-scancode-international9 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang1* (lambda () (format #t "user pressed sdl-scancode-lang1 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang2* (lambda () (format #t "user pressed sdl-scancode-lang2 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang3* (lambda () (format #t "user pressed sdl-scancode-lang3 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang4* (lambda () (format #t "user pressed sdl-scancode-lang4 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang5* (lambda () (format #t "user pressed sdl-scancode-lang5 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang6* (lambda () (format #t "user pressed sdl-scancode-lang6 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang7* (lambda () (format #t "user pressed sdl-scancode-lang7 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang8* (lambda () (format #t "user pressed sdl-scancode-lang8 key ~%")))
  (register-keyboard-fn *sdl-scancode-lang9* (lambda () (format #t "user pressed sdl-scancode-lang9 key ~%")))
  (register-keyboard-fn *sdl-scancode-alterase* (lambda () (format #t "user pressed sdl-scancode-alterase key ~%")))
  (register-keyboard-fn *sdl-scancode-sysreq* (lambda () (format #t "user pressed sdl-scancode-sysreq key ~%")))
  (register-keyboard-fn *sdl-scancode-cancel* (lambda () (format #t "user pressed sdl-scancode-cancel key ~%")))
  (register-keyboard-fn *sdl-scancode-clear* (lambda () (format #t "user pressed sdl-scancode-clear key ~%")))
  (register-keyboard-fn *sdl-scancode-prior* (lambda () (format #t "user pressed sdl-scancode-prior key ~%")))
  (register-keyboard-fn *sdl-scancode-return2* (lambda () (format #t "user pressed sdl-scancode-return2 key ~%")))
  (register-keyboard-fn *sdl-scancode-separator* (lambda () (format #t "user pressed sdl-scancode-separator key ~%")))
  (register-keyboard-fn *sdl-scancode-out* (lambda () (format #t "user pressed sdl-scancode-out key ~%")))
  (register-keyboard-fn *sdl-scancode-oper* (lambda () (format #t "user pressed sdl-scancode-oper key ~%")))
  (register-keyboard-fn *sdl-scancode-clearagain* (lambda () (format #t "user pressed sdl-scancode-clearagain key ~%")))
  (register-keyboard-fn *sdl-scancode-crsel* (lambda () (format #t "user pressed sdl-scancode-crsel key ~%")))
  (register-keyboard-fn *sdl-scancode-exsel* (lambda () (format #t "user pressed sdl-scancode-exsel key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-00* (lambda () (format #t "user pressed sdl-scancode-kp-00 key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-000* (lambda () (format #t "user pressed sdl-scancode-kp-000 key ~%")))
  (register-keyboard-fn *sdl-scancode-thousandsseparator* (lambda () (format #t "user pressed sdl-scancode-thousandsseparator key ~%")))
  (register-keyboard-fn *sdl-scancode-decimalseparator* (lambda () (format #t "user pressed sdl-scancode-decimalseparator key ~%")))
  (register-keyboard-fn *sdl-scancode-currencyunit* (lambda () (format #t "user pressed sdl-scancode-currencyunit key ~%")))
  (register-keyboard-fn *sdl-scancode-currencysubunit* (lambda () (format #t "user pressed sdl-scancode-currencysubunit key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-leftparen* (lambda () (format #t "user pressed sdl-scancode-kp-leftparen key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-rightparen* (lambda () (format #t "user pressed sdl-scancode-kp-rightparen key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-leftbrace* (lambda () (format #t "user pressed sdl-scancode-kp-leftbrace key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-rightbrace* (lambda () (format #t "user pressed sdl-scancode-kp-rightbrace key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-tab* (lambda () (format #t "user pressed sdl-scancode-kp-tab key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-backspace* (lambda () (format #t "user pressed sdl-scancode-kp-backspace key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-a* (lambda () (format #t "user pressed sdl-scancode-kp-a key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-b* (lambda () (format #t "user pressed sdl-scancode-kp-b key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-c* (lambda () (format #t "user pressed sdl-scancode-kp-c key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-d* (lambda () (format #t "user pressed sdl-scancode-kp-d key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-e* (lambda () (format #t "user pressed sdl-scancode-kp-e key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-f* (lambda () (format #t "user pressed sdl-scancode-kp-f key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-xor* (lambda () (format #t "user pressed sdl-scancode-kp-xor key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-power* (lambda () (format #t "user pressed sdl-scancode-kp-power key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-percent* (lambda () (format #t "user pressed sdl-scancode-kp-percent key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-less* (lambda () (format #t "user pressed sdl-scancode-kp-less key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-greater* (lambda () (format #t "user pressed sdl-scancode-kp-greater key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-ampersand* (lambda () (format #t "user pressed sdl-scancode-kp-ampersand key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-dblampersand* (lambda () (format #t "user pressed sdl-scancode-kp-dblampersand key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-verticalbar* (lambda () (format #t "user pressed sdl-scancode-kp-verticalbar key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-dblverticalbar* (lambda () (format #t "user pressed sdl-scancode-kp-dblverticalbar key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-colon* (lambda () (format #t "user pressed sdl-scancode-kp-colon key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-hash* (lambda () (format #t "user pressed sdl-scancode-kp-hash key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-space* (lambda () (format #t "user pressed sdl-scancode-kp-space key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-at* (lambda () (format #t "user pressed sdl-scancode-kp-at key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-exclam* (lambda () (format #t "user pressed sdl-scancode-kp-exclam key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-memstore* (lambda () (format #t "user pressed sdl-scancode-kp-memstore key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-memrecall* (lambda () (format #t "user pressed sdl-scancode-kp-memrecall key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-memclear* (lambda () (format #t "user pressed sdl-scancode-kp-memclear key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-memadd* (lambda () (format #t "user pressed sdl-scancode-kp-memadd key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-memsubtract* (lambda () (format #t "user pressed sdl-scancode-kp-memsubtract key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-memmultiply* (lambda () (format #t "user pressed sdl-scancode-kp-memmultiply key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-memdivide* (lambda () (format #t "user pressed sdl-scancode-kp-memdivide key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-plusminus* (lambda () (format #t "user pressed sdl-scancode-kp-plusminus key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-clear* (lambda () (format #t "user pressed sdl-scancode-kp-clear key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-clearentry* (lambda () (format #t "user pressed sdl-scancode-kp-clearentry key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-binary* (lambda () (format #t "user pressed sdl-scancode-kp-binary key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-octal* (lambda () (format #t "user pressed sdl-scancode-kp-octal key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-decimal* (lambda () (format #t "user pressed sdl-scancode-kp-decimal key ~%")))
  (register-keyboard-fn *sdl-scancode-kp-hexadecimal* (lambda () (format #t "user pressed sdl-scancode-kp-hexadecimal key ~%")))
  (register-keyboard-fn *sdl-scancode-lctrl* (lambda () (format #t "user pressed sdl-scancode-lctrl key ~%")))
  (register-keyboard-fn *sdl-scancode-lshift* (lambda () (format #t "user pressed sdl-scancode-lshift key ~%")))
  (register-keyboard-fn *sdl-scancode-lalt* (lambda () (format #t "user pressed sdl-scancode-lalt key ~%")))
  (register-keyboard-fn *sdl-scancode-lgui* (lambda () (format #t "user pressed sdl-scancode-lgui key ~%")))
  (register-keyboard-fn *sdl-scancode-rctrl* (lambda () (format #t "user pressed sdl-scancode-rctrl key ~%")))
  (register-keyboard-fn *sdl-scancode-rshift* (lambda () (format #t "user pressed sdl-scancode-rshift key ~%")))
  (register-keyboard-fn *sdl-scancode-ralt* (lambda () (format #t "user pressed sdl-scancode-ralt key ~%")))
  (register-keyboard-fn *sdl-scancode-rgui* (lambda () (format #t "user pressed sdl-scancode-rgui key ~%")))
  (register-keyboard-fn *sdl-scancode-mode* (lambda () (format #t "user pressed sdl-scancode-mode key ~%")))
  (register-keyboard-fn *sdl-scancode-audionext* (lambda () (format #t "user pressed sdl-scancode-audionext key ~%")))
  (register-keyboard-fn *sdl-scancode-audioprev* (lambda () (format #t "user pressed sdl-scancode-audioprev key ~%")))
  (register-keyboard-fn *sdl-scancode-audiostop* (lambda () (format #t "user pressed sdl-scancode-audiostop key ~%")))
  (register-keyboard-fn *sdl-scancode-audioplay* (lambda () (format #t "user pressed sdl-scancode-audioplay key ~%")))
  (register-keyboard-fn *sdl-scancode-audiomute* (lambda () (format #t "user pressed sdl-scancode-audiomute key ~%")))
  (register-keyboard-fn *sdl-scancode-mediaselect* (lambda () (format #t "user pressed sdl-scancode-mediaselect key ~%")))
  (register-keyboard-fn *sdl-scancode-www* (lambda () (format #t "user pressed sdl-scancode-www key ~%")))
  (register-keyboard-fn *sdl-scancode-mail* (lambda () (format #t "user pressed sdl-scancode-mail key ~%")))
  (register-keyboard-fn *sdl-scancode-calculator* (lambda () (format #t "user pressed sdl-scancode-calculator key ~%")))
  (register-keyboard-fn *sdl-scancode-computer* (lambda () (format #t "user pressed sdl-scancode-computer key ~%")))
  (register-keyboard-fn *sdl-scancode-ac-search* (lambda () (format #t "user pressed sdl-scancode-ac-search key ~%")))
  (register-keyboard-fn *sdl-scancode-ac-home* (lambda () (format #t "user pressed sdl-scancode-ac-home key ~%")))
  (register-keyboard-fn *sdl-scancode-ac-back* (lambda () (format #t "user pressed sdl-scancode-ac-back key ~%")))
  (register-keyboard-fn *sdl-scancode-ac-forward* (lambda () (format #t "user pressed sdl-scancode-ac-forward key ~%")))
  (register-keyboard-fn *sdl-scancode-ac-stop* (lambda () (format #t "user pressed sdl-scancode-ac-stop key ~%")))
  (register-keyboard-fn *sdl-scancode-ac-refresh* (lambda () (format #t "user pressed sdl-scancode-ac-refresh key ~%")))
  (register-keyboard-fn *sdl-scancode-ac-bookmarks* (lambda () (format #t "user pressed sdl-scancode-ac-bookmarks key ~%")))
  (register-keyboard-fn *sdl-scancode-brightnessdown* (lambda () (format #t "user pressed sdl-scancode-brightnessdown key ~%")))
  (register-keyboard-fn *sdl-scancode-brightnessup* (lambda () (format #t "user pressed sdl-scancode-brightnessup key ~%")))
  (register-keyboard-fn *sdl-scancode-displayswitch* (lambda () (format #t "user pressed sdl-scancode-displayswitch key ~%")))
  (register-keyboard-fn *sdl-scancode-kbdillumtoggle* (lambda () (format #t "user pressed sdl-scancode-kbdillumtoggle key ~%")))
  (register-keyboard-fn *sdl-scancode-kbdillumdown* (lambda () (format #t "user pressed sdl-scancode-kbdillumdown key ~%")))
  (register-keyboard-fn *sdl-scancode-kbdillumup* (lambda () (format #t "user pressed sdl-scancode-kbdillumup key ~%")))
  (register-keyboard-fn *sdl-scancode-eject* (lambda () (format #t "user pressed sdl-scancode-eject key ~%")))
  (register-keyboard-fn *sdl-scancode-sleep* (lambda () (format #t "user pressed sdl-scancode-sleep key ~%")))
  (register-keyboard-fn *sdl-scancode-app1* (lambda () (format #t "user pressed sdl-scancode-app1 key ~%")))
  (register-keyboard-fn *sdl-scancode-app2* (lambda () (format #t "user pressed sdl-scancode-app2 key ~%")))
  (register-keyboard-fn *sdl-scancode-audiorewind* (lambda () (format #t "user pressed sdl-scancode-audiorewind key ~%")))
  (register-keyboard-fn *sdl-scancode-audiofastforward* (lambda () (format #t "user pressed sdl-scancode-audiofastforward key ~%")))
  (register-keyboard-fn *sdl-scancode-softleft* (lambda () (format #t "user pressed sdl-scancode-softleft key ~%")))
  (register-keyboard-fn *sdl-scancode-softright* (lambda () (format #t "user pressed sdl-scancode-softright key ~%")))
  (register-keyboard-fn *sdl-scancode-call* (lambda () (format #t "user pressed sdl-scancode-call key ~%")))
  (register-keyboard-fn *sdl-scancode-endcall* (lambda () (format #t "user pressed sdl-scancode-endcall key ~%")))
  (register-keyboard-fn *sdl-num-scancodes* (lambda () (format #t "user pressed sdl-num-scancodes key ~%")))
  )

(define *first-run* #t)

(define *event-counter* 0)
(define *window* #f)
(define *render* #f)
(define *surface* #f)
(define *cairo-surface* #f)
(define *cr* #f)
(define *cairo-texture* #f)

;; main loop is being repeatedly called from demo procedure
;; so its possible to redefine main-loop though the coop-repl-server when it comes online
(define (main-loop)  
  ;; poll for an event
  (while (not (= 0 (sdl-poll-event (bytevector->pointer *event*))))
    ;; tot up each time we have an event
    (inc! *event-counter*)
    (let ((type (bytevector-u32-native-ref *event* 0)))
      (cond
       ((= type *sdl-quit*) ;; ======== quit event ==================
	(format #t "the user quit the application !~%")
	;; if we quit - set quit flag to true and exit
	(let ((type (bytevector-u32-native-ref *event* 0))
	      (timestamp (bytevector-u32-native-ref *event* 4)))
	  (set! *quit* #t))) ;; end quit event	 
       ((= type *sdl-window-event*) ;; ======== window event ==================
	(let ((type (bytevector-u32-native-ref *event* 0))
	      (timestamp (bytevector-u32-native-ref *event* 4))
	      (windowid (bytevector-u32-native-ref *event* 8))
	      (event (bytevector-u8-ref *event* 12))
	      (padding1 (bytevector-u8-ref *event* 13))
	      (padding2 (bytevector-u8-ref *event* 14))
	      (padding3 (bytevector-u8-ref *event* 15 ))
	      (data1 (bytevector-s32-native-ref *event* 16 ))
	      (data2 (bytevector-s32-native-ref *event* 20 )))
	  ;; window events are difficult to distinguish so we gave all events polled an event counter
	  (fcase event
		 ((*sdl-window-event-none*) (format #t "window event ~a none~%" *event-counter*))
		 ((*sdl-window-event-shown*) (format #t "window event ~a shown ~%" *event-counter*))
		 ((*sdl-window-event-hidden*) (format #t "window event ~a hidden ~%" *event-counter*))
		 ((*sdl-window-event-moved*) (format #t "window event ~a moved ~a ~a~%" *event-counter* data1 data2))
		 ((*sdl-window-event-exposed*) (format #t "window event ~a exposed~%" *event-counter* ))
		 ((*sdl-window-event-resized*) (format #t "window event ~a resized~%" *event-counter* ))
		 ((*sdl-window-event-changed*) (format #t "window event ~a changed~%" *event-counter* ))
		 ((*sdl-window-event-minimized*) (format #t "window event ~a minimized~%" *event-counter* ))
		 ((*sdl-window-event-maximized*) (format #t "window event ~a maximized~%" *event-counter* ))
		 ((*sdl-window-event-restored*) (format #t "window event ~a restored~%" *event-counter* ))
		 ((*sdl-window-event-enter*) (format #t "window event ~a enter~%" *event-counter* ))
		 ((*sdl-window-event-leave*) (format #t "window event ~a leave~%" *event-counter* ))
		 ((*sdl-window-event-focus-gained*) (format #t "window event ~a focus gained~% " *event-counter* ))
		 ((*sdl-window-event-focus-lost*) (format #t "window event ~a focus lost~%" *event-counter* ))
		 ((*sdl-window-event-close*) (format #t "window event ~a close~%" *event-counter* ))
		 ((*sdl-window-event-take-focus*) (format #t "window event ~a take focus~%" *event-counter* ))
		 ((*sdl-window-event-hit-test*) (format #t "window event ~a hit test~%" *event-counter* ))
		 ((*sdl-window-event-icc-prof-changed*) (format #t "window event ~a icc prof changed ~%" *event-counter* ))
		 ((*sdl-window-event-display-changed*) (format #t "window event ~a display changed~%" *event-counter* ))
		 (else (format #t "window event ~a something else happended ~%" *event-counter*)))
	  #t)) ;; ==== end of window event ===

       ((= type *sdl-keydown*) ;; ======== keydown event ==================
	(let ((type (bytevector-u32-native-ref *event* 0))
	      (timestamp (bytevector-u32-native-ref *event* 4))
	      (windowid (bytevector-u32-native-ref *event* 8))
	      (state (bytevector-u8-ref *event* 12))
	      (repeat (bytevector-u8-ref *event* 13))
	      (padding2 (bytevector-u8-ref *event* 14))
	      (padding3 (bytevector-u8-ref *event* 15 ))
	      (keysym-scancode (bytevector-u32-native-ref *event* 16 ))
	      (keysym-sym (bytevector-s32-native-ref *event* 20 ))
	      (keysym-mod (bytevector-u16-native-ref *event* 24 )))

	  ;; do something first time this is run
	  (when *first-run*
	    ;; allows us to escape the gui event loop easily
	    (register-keyboard-fn *sdl-scancode-escape*
				  (lambda () (set! *quit* #t)(format #t "user quit ! ~%")))
	    (set! *first-run* #f))
	  
	  ;; call relevant key handler
	  (call-keyboard-fn keysym-scancode))) ;; end key down
       ((= type *sdl-keyup*) ;; ======== keyup event ==================
	;;(format #t "the user released a key !~%")
	#f) ;; end key up 
       ((= type *sdl-mousemotion*) ;; ======== mouse motion event ==================
	(let ((type (bytevector-u32-native-ref *event* 0 ))
	      (timestamp (bytevector-u32-native-ref *event* 4 ))
	      (windowid (bytevector-u32-native-ref *event* 8 ))
	      (state (bytevector-u32-native-ref *event* 12 ))
	      (x (bytevector-s32-native-ref *event* 20 ))
	      (y (bytevector-s32-native-ref *event* 24 ))
	      (xrel (bytevector-s32-native-ref *event* 28 ))
	      (yrel (bytevector-s32-native-ref *event* 32 )))
	  ;; (format #t "mouse move (~a ~a ~a ~a " type timestamp windowid state)
	  ;; (format #t " (pos:~a ~a) (rel:~a ~a) ~%" x y xrel yrel)
	  (set! *mouse-x* x)
	  (set! *mouse-y* y)))
       (#t #f))))

  (draw-frame))
  
  

;; =================================

(define (draw-frame)
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
  (sdl-render-copy *render* *cairo-texture* %null-pointer %null-pointer)
  
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

;; ================

#|
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
|#  



;; ================================

(define (demo)
  (set! *quit* #f)
  (set! *first-run* #t)*
  (format #t "cairo version ~a~%" (cairo-version-string))
  
  (define init-result (sdl-init *sdl-init-video*))
  (format #t "init-result ~a~%" init-result)
  
  (set! *window* (create-window "cairo demonstration window 0.1a" *screen-width* *screen-height*))
  (format #t "window = ~a~%" *window*)
  
  (set! *render* (%sdl-create-renderer *window* -1 
				       (logior *sdl-renderer-accelerated*  *sdl-renderer-present-vsync*)))
  (cond
   ((equal? *render* %null-pointer)   (format #t "create render failed !~%"))
   (#t (format #t "created render success : ~a !~%" *render*)))

  ;; just show what values are for window itself
  (define window-surface (sdl-get-window-surface *window*))    

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

  (set! *surface* (create-rgb24-surface *screen-width* *screen-height*))
  (cond
   ((equal? *surface* %null-pointer)
    (format #t "surface failed to be created!~%"))
   (#t (format #t "surface ok~%")))

  (format #t "surface          ~a : pixelformat-format ~a : pixels ~a : width ~a : height ~a : pitch ~a ~%"
	  *surface*
	  (surface-pixelformat-format *surface*)
	  (surface-pixels *surface*)
	  (surface-width *surface*)
	  (surface-height *surface*)
	  (surface-pitch *surface*))
  
  (format #t "surface : pixelformat name ~a ~%"
	  (pointer->string
	   (sdl-get-pixelformat-name
	    (surface-pixelformat-format *surface*))))

  ;; in ffi world all pointers are just pointers 
  ;; heres an example to get width height
  ;; pass some memory region to sdl-get-window-size and decode result using bytevector-s32-native-ref
  ;; bytevector signed 32 bit value 
  (let* ((bv (make-bytevector (* 2 (size-int)) 0))
	 (w-mem (bytevector->pointer bv 0))
	 (h-mem (bytevector->pointer bv 4)))
    (sdl-get-window-size *window* w-mem h-mem)
    (let ((width (bytevector-s32-native-ref bv 0))
	  (height (bytevector-s32-native-ref bv 4)))
      (format #t "window size is ~a by ~a ~%" width height)))
  
  ;; same again to get render width height
  ;;(sdl-get-renderer-output-size render &render-width &render-height) ??
  (let* ((bv (make-bytevector (* 2 (size-int)) 0))
	 (w-mem (bytevector->pointer bv 0))
	 (h-mem (bytevector->pointer bv 4)))
    (sdl-get-renderer-output-size *render* w-mem h-mem)
    (let ((width (bytevector-s32-native-ref bv 0))
	  (height (bytevector-s32-native-ref bv 4)))
      (format #t "render output size is ~a by ~a ~%" width height)))

  ;; stuck with rgb24 which means no alpha capability , which is just bizarre , almost like one hand
  ;; behind back 
  
  (define stride (cairo-format-stride-for-width *cairo-format-rgb24* *screen-width*))    
  (set! *cairo-surface* (cairo-image-surface-create-for-data (surface-pixels *surface*)
							     *cairo-format-rgb24* ;;*cairo-format-argb32* 
							     (surface-width *surface*)
							     (surface-height *surface*)
							     stride))
  (set! *cr* (cairo-create *cairo-surface*))

  (set! *cairo-texture* (sdl-create-texture-from-surface *render* *surface*))
  (format #t "cairo texture ~a ~%" *cairo-texture*)
  
  
  ;; loop ??
  (while (not *quit*)
    (main-loop))
  (cleanup))


;;=======================

;; why everything global ? so i can change it !
(define (cleanup)
  (sdl-destroy-renderer *render*)
  (sdl-destroy-window *window*)
  (sdl-quit))


;;
;; usage
;; load using correct environment and %load-path
;; > (cairo)
;;
;; should see a nice picture of blue square and some sort of two thirds clock thing


