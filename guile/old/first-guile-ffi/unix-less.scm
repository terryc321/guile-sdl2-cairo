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

(define (call-keyboard-fn i)
  (let ((fn (vector-ref *keyboard-fn-vector* i)))
    (cond
     ((procedure? fn) (fn))
     (#t (format #t "there is no keyboard procedure fn dedicated to ~a ~%" i)))))


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

;; determine how big the window actually is ?
;; have a number of bouncing blocks
(define *blocks-count* 100)
(define *blocks* (make-vector *blocks-count* #f))

;; (define (size-int) 4) 

;; initialise blocks
;; using bytevector during loading with shared libraries causes seg fault
(define (initialize-blocks)
  (letrec ((foo (lambda (i)
		  (when (< i *blocks-count*)
		    (let ((bv (make-vector 4)))
		      (vector-set! bv 0 (random 640))
		      (vector-set! bv 1 (random 480))
		      (vector-set! bv 2 (/ (random 10) 100))
		      (vector-set! bv 3 (/ (random 10) 100))
		      ;;(bytevector-s32-native-set! bv 16 (random 10))
		      ;;(bytevector-s32-native-set! bv 20 (random 10))u
		      (vector-set! *blocks* i bv))
		    (foo (+ i 1))))))
    (foo 0)))



;; update all blocks
(define (update-blocks)
  (letrec ((foo (lambda (i)
		  (when (< i *blocks-count*)
		    (let ((bv (vector-ref *blocks* i)))
		      (let ((x (vector-ref bv 0))
			    (y (vector-ref bv 1))
			    (vx (vector-ref bv 2))
			    (vy (vector-ref bv 3)))
			(set! x (+ x vx))
			(set! y (+ y vy))
			(when (> x *screen-width*)
			  (set! x *screen-width*)
			  (set! vx (- vx)))
			(when (> y *screen-height*)
			  (set! y *screen-height*)
			  (set! vy (- vy)))
			(when (< x 0)
			  (set! x 0)
			  (set! vx (- vx)))
			(when (< y 0)
			  (set! y 0)
			  (set! vy (- vy)))
			(vector-set! bv 0 x)
			(vector-set! bv 1 y)
			(vector-set! bv 2 vx)
			(vector-set! bv 3 vy)))
		    (foo (+ i 1))))))
  (foo 0)))
  
(define (show-blocks render)
  (letrec ((foo (lambda (i)
		  (when (< i *blocks-count*)
		    (let ((bv (vector-ref *blocks* i)))
		      (let ((x (vector-ref bv 0))
			    (y (vector-ref bv 1))
			    (vx (vector-ref bv 2))
			    (vy (vector-ref bv 3)))           ;;FI X  ME
			(let ((bvi (make-bytevector (* 4 (size-int)) 0)))
			  (bytevector-s32-native-set! bvi 0 (floor x)) ;; x
			  (bytevector-s32-native-set! bvi 4 (floor y)) ;; y
			  (bytevector-s32-native-set! bvi 8 20) ;; width 20 ?
			  (bytevector-s32-native-set! bvi 12 20) ;; height 20 ??			  
			  (sdl-render-fill-rect render (bytevector->pointer bvi)))))
		    (foo (+ i 1))))))
    (foo 0)))
  
;; the file concerned
;works in chicken-csi and Racket
(define (readlines filename)
  (call-with-input-file filename
    (lambda (p)
      (let loop ((line (read-line p))
                 (result '()))
        (if (eof-object? line)
            (reverse result)
            (loop (read-line p) (cons line result)))))))

(define (vectorise xs)
  (list->vector xs))

;;(getcwd)
;;(readlines "unix-less.scm")
;;(unix-less "unix-less.scm")
;; (make-value 1 'int)
;; (apropos "int")

(define (newline-concat buffer buffer-y buffer-x lines-per-screen ct)
      (let ((output "")
	    (buffer-size (vector-length buffer)))
	(letrec ((foo (lambda (i) 
			(let ((n (+ i buffer-y)))
			  (cond
			   ((> i lines-per-screen) #f)
			   ((>= n buffer-size) #f) 
			   ((< n 0) #f) ;; absurd index check i>=0 < (vector-length buffer)
			   ((= i 0) (set! output
					  (string-append (format #f "~a : " (+ 1 n))
							 (vector-ref buffer n)))
			    (foo (+ i 1)))
			   (#t (set! output (string-append output "\n"
							   (format #f "~a : " (+ n 1))
							   (vector-ref buffer n)))
			       (foo (+ i 1))))))))
	  (foo 0)
	  output)))
    

  
 (define (unix-less filename)  
  (let ((buffer (vectorise (readlines "unix-less.scm")))
	(buffer-x 0)
	(buffer-y 0)
	(font-size 12)
	(lines-per-screen 44) ;; how many lines per screen do we have ??
	(chars-per-line 80) ;; wrapping 80 chars in 
	(screen-width 1024)
	(screen-height 768))
      

    ;;(pretty-print buffer)

    (define event-counter 0)
    
    (define mTexture %null-pointer)
    (define mTexture-width 0)
    (define mTexture-height 0)
	   
    (sdl-init *sdl-init-video*)
    (define image-init-result (image-init))
    (format #t "image-init-result ~a~%" image-init-result)

    (define ttf-init-result (ttf-init))
    (format #t "ttf-init-result ~a~%"  ttf-init-result)
    (cond
     ((zero? ttf-init-result) 'ok)
     (#t (format #t "ttf-init error~%")))
    
    
    (define window (create-window "hello world" screen-width screen-height))
    (define render (create-renderer window))    
    (cond
     ((equal? render %null-pointer)   (format #t "create render failed !~%"))
     (#t (format #t "created render success !~%")))

    (define texture (load-texture "zxspectrum.png" render))
    (format #t "texture created ~a~%" texture)
    
    (define surface (sdl-get-window-surface window))

    (format #t "surface pointer ptr ~a~%" surface)
    ;;(format #t "ptr->format ~a~%" (pixelformat (pointer-address surface)))
    (output-check)
    ;; 
    (define hello-bitmap %null-pointer)
    ;;(define loaded-surface (sdl-load-bmp "hello.bmp"))

    ;; image-load only loads jpg png web tif 
    (define loaded-surface (image-load "zxspectrum.png"))
    (format #t "surface pointer ~a~%" surface)
    (format #t "surface address ~x~%" (pointer-address surface));; hex value
    (format #t "surface->format address ~x~%" (+ 8 (pointer-address surface)));; hex value
    (format #t "C pixelformat : surface->format address ~a~%" (pixelformat surface))

    ;; display actual bytes that make up surface->format a (SDL_PixelFormat *ptr)
    (pixelformat2 surface)
    
    ;; display bytes we think we see
    (let* ((length 8)
	   (offset 8)
	   (bv (pointer->bytevector surface length offset)))
      (format #t "scheme byte 0 : ~a ~%" (bytevector-u8-ref bv 0))
      (format #t "scheme byte 1 : ~a ~%" (bytevector-u8-ref bv 1))
      (format #t "scheme byte 2 : ~a ~%" (bytevector-u8-ref bv 2))
      (format #t "scheme byte 3 : ~a ~%" (bytevector-u8-ref bv 3))
      (format #t "scheme byte 4 : ~a ~%" (bytevector-u8-ref bv 4))
      (format #t "scheme byte 5 : ~a ~%" (bytevector-u8-ref bv 5))
      (format #t "scheme byte 6 : ~a ~%" (bytevector-u8-ref bv 6))
      (format #t "scheme byte 7 : ~a ~%" (bytevector-u8-ref bv 7)))
     
    ;;(define optimized-surface %null-pointer)    
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

    (initialize-blocks)


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
			  ;; simulate up / down document

			  (register-keyboard-fn *sdl-scancode-home*
						(lambda ()
						  (set! buffer-y 0)))

			  (register-keyboard-fn *sdl-scancode-end*
						(lambda ()
						  (set! buffer-y (- (vector-length buffer) lines-per-screen 1))
						  (when (<= buffer-y 0)
						    (set! buffer-y 0))))
			  
			  
			  (register-keyboard-fn *sdl-scancode-pagedown*
						(lambda ()
						  (inc! buffer-y lines-per-screen)
						  (format #t "buffer-y ~a~%" buffer-y)
						  (when (>= buffer-y (- (vector-length buffer) lines-per-screen 1))
						    (format #t "decreased buffer-y ~a~%" buffer-y)
						    (set! buffer-y (- (vector-length buffer) lines-per-screen 1))
						    (when (<= buffer-y 0)
						      (set! buffer-y 0)))))

			  
			  (register-keyboard-fn *sdl-scancode-down*
						(lambda ()
						  (inc! buffer-y)
						  (format #t "buffer-y ~a~%" buffer-y)
						  (when (>= buffer-y (- (vector-length buffer) lines-per-screen 1))
						    (format #t "decreased buffer-y ~a~%" buffer-y)
						    (set! buffer-y (- (vector-length buffer) lines-per-screen 1)))))
			  
			  (register-keyboard-fn *sdl-scancode-pageup*
						(lambda () (dec! buffer-y lines-per-screen)
							(when (< buffer-y 0)
							  (set! buffer-y 0))
							(format #t "buffer-y ~a~%" buffer-y)
							))
			  (register-keyboard-fn *sdl-scancode-up*
						(lambda () (dec! buffer-y)
							(when (< buffer-y 0)
							  (set! buffer-y 0))
							;;(format #t "buffer-y ~a~%" buffer-y)
							))
			  (register-keyboard-fn *sdl-scancode-right*
						(lambda () (inc! buffer-x)))
			  (register-keyboard-fn *sdl-scancode-left*
						(lambda () (dec! buffer-x)
							(when (< buffer-x 0)
							  (set! buffer-x 0))))
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

	   #|
	   ;; red line
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
	   |#
	     

	   #|
	   ;; red
	   (sdl-set-render-draw-color render #xFF #x00 #x00 #xFF)	   
	   (let ((bv (make-bytevector (* 4 (size-int)) 0)))
	     (bytevector-s32-native-set! bv 0 100)
	     (bytevector-s32-native-set! bv 4 100)
	     (bytevector-s32-native-set! bv 8 100)
	     (bytevector-s32-native-set! bv 12 100)
	     (sdl-render-fill-rect render (bytevector->pointer bv)))

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
	   (update-blocks)
	   
	   ;; ;; show the blocks
	   (show-blocks render)	   
	   

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
