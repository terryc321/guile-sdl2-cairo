
;; (ql:quickload :cl-autowrap)
;; compile-this-file

(defpackage :autowrap.test
  (:use #:cl #:autowrap))

(in-package :autowrap.test)

;; this below will load the libtest.so shared library
;; better to be absolute path for testing sanity
#+(or)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (cffi-sys:%load-foreign-library
   :libtest (merge-pathnames "libtest.so" *default-pathname-defaults*)))


;; this below will generate spec files from test.h
#+(or)
(c-include (merge-pathnames "test.h" *default-pathname-defaults*)
           :spec-path (merge-pathnames "spec/" *default-pathname-defaults*))



;; :say is undefined ??
#+(or)
(let ((foo (get-foo)))
  (setf (foo-t.a foo) 5)             ;; foo.a = 5;
  (setf (foo-t.x[].b0 foo 0) #b10)   ;; foo.x[0].b0 = 2;
  (print (foo-t.x[].s.x foo 1))      ;; anonymous struct
  ;; (format t "~a~%" (foo-t.x[].s foo 0))             ;; => child wrapper
  (foo-t.x[].s& foo 0)               ;; &(foo.x[0].s) => pointer
  (free-foo foo))



;; break and inspect foo
;; (let ((foo (get-foo)))
;;   (inspect foo))

;; (defparameter foo (get-foo))
;; (setf (foo-t.a foo) 5)
;; (setf (foo-t.x[].b0 foo 0) #b10)
;; (print (foo-t.x[].s.x foo 1)) 
;; (foo-t.x[].s foo 0)             

;;(format t "the class is ~a~%" (foo-t.x[].s foo 0))




;; i dont know what this :say is all about - maybe it means format t "~a~%"
;; #+(or)
;; (let ((foo (get-foo)))
;;   (:say foo)
;;   (:say (foo-t.a foo))
;;   (:say (foo-t.x[].a foo 0))
;;   (:say (foo-t.x[].f foo 1))
;;   (:say (foo-t.x[].b0 foo 0))
;;   (:say (foo-t.x[].b1 foo 0))
;;   (:say (cffi-sys:%mem-ref (ptr foo) :unsigned-char (+ 16 24)))
;;   (setf (foo-t.x[].b0 foo 0) #b01)
;;   (setf (foo-t.x[].b1 foo 0) #b110)
;;   (print-bits foo)
;;   (free-foo foo))

