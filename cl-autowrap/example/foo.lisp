-
;; definitely got c2ffi ability to build using docker 
;; ...
;; cl-autowrap tutorial please ...
;; ...

(ql:quickload :cl-autowrap)

(defpackage :foo
  (:use :cl))

(in-package :foo)

(autowrap:c-include "test.h")

(let ((foo (get-foo)))
  (setf (foo-t.a foo) 5)             ;; foo.a = 5;
  (setf (foo-t.x[].b0 foo 0) #b10)   ;; foo.x[0].b0 = 2;
  (print (foo-t.x[].s.x foo 1))      ;; anonymous struct
  (foo-t.x[].s foo 0)                ;; => child wrapper
  (foo-t.x[].s& foo 0)               ;; &(foo.x[0].s) => pointer
  (free-foo foo))

