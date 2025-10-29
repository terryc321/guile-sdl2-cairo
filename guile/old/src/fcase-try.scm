
(use-modules (language tree-il))
(use-modules (ice-9 pretty-print))
(define pp pretty-print)
(use-modules (ice-9 format))

;; my guile is built and installed in /opt/guile
;; so my distribution will look in /opt/guile/share/guile/macros/fcase.scm 
;; for (macros fcase) module
(use-modules (macros fcase))

(pp
 (tree-il->scheme
  (macroexpand '(fcase 1
		       ((1 2 3) 'a)
		       ((4 5 6) 'b)
		       ((7 8 9) 'c)
		       (else 'd)))))


;; we can confirm macro fcase is successfully exported from macros/fcase.scm !
;;
;; also we can confirm helper routines 
;; fcase-helper
;; fcase-helper2 are not exported
;;






