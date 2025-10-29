
;; open this file
;; C-u M-x sesman-start
;; localhost
;; <port number>
;; should connect to scheme arei [connected]

(define hello
  (lambda ()
    (format #t "hello world ~%")))

(hello)

(use-modules (macros fcase))
(use-modules (macros inc))

(let ((x 1))
  (inc! x)
  x)

;;(load "test.scm")





