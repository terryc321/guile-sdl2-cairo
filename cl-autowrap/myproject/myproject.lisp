;;;; myproject.lisp

(in-package #:myproject)

;;(setf autowrap:*c2ffi-program* "/usr/bin/c2ffi")

;; (asdf:system-relative-pathname :myproject "spec/test.h") ; => #P"/home/terry/code/cl-autowrap/myproject/spec/test.h"
;; (autowrap:c-include
;;  #P"/home/terry/code/cl-autowrap/myproject/spec/test.h"
;;  :spec-path "spec/")
;;#P"/home/terry/code/cl-autowrap/myproject/spec/test.h"

(autowrap:c-include
 #P"/home/terry/code/cl-autowrap/myproject/spec/test.h"
 :spec-path "spec/")


;;(asdf:system-relative-pathname :myproject "spec/"))

 

;; (autowrap:c-include
;;  (asdf:system-relative-pathname :myproject
;; 				"spec/test.json"))



;; get-foo is a symbol 
(let ((foo (get-foo)))
  (setf (foo-t.a foo) 5)             ;; foo.a = 5;
  (setf (foo-t.x[].b0 foo 0) #b10)   ;; foo.x[0].b0 = 2;
  (print (foo-t.x[].s.x foo 1))      ;; anonymous struct
  (foo-t.x[].s foo 0)                ;; => child wrapper
  (foo-t.x[].s& foo 0)               ;; &(foo.x[0].s) => pointer
  (free-foo foo))



;; errors out alien function get_foo is not defined


