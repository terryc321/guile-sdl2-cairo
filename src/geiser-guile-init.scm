
;; for guile emacs geiser
;; this init file can alter the load paths
;;
;; we had to resort to setting DEVELOPER in bashrc so we can find out the toplevel directory of this
;; entire project
;;
;; dirty dirty hacks
;;

;; we can set LTDL_LIBRARY_PATH in environment outside emacs - in its terminal
;; so that takes care of feeeding environment varialbes around

(let ((toplevel (getenv "DEVELOPER")))
  (add-to-load-path toplevel))

;; (use-modules (system foreign-library))
;; (load-foreign-library (string-append (getenv "DEVELOPER") "/pixelformat/" "libpixelformat.so"))


;; for libpixelformat.so in $DEVELOPER/pixelformat directory
;;(putenv "LTDL_LIBRARY_PATH" (string-append (getenv "DEVELOPER") "/pixelformat/"))


;; geiser set 
;; (setq geiser-guile-init-file (concat (getenv "DEVELOPER") "/" "geiser-guile-init.scm"))
;;
;;
;; how does emacs get environemnt variables
;;
;;
;;      LTDL_LIBRARY_PATH={ some directory }
;;         DEVELOPER={some direrctory }
;; BASH -> EMACS -> GEISER -> guile-init.scm -> GUILE  ->  GUI ???
;;
;;
;;

  
