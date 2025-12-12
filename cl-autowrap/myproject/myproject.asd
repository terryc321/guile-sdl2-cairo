;;;; myproject.asd

(asdf:defsystem :myproject
  :description "Describe myproject here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:uiop
	       #:cl-autowrap  ;; rather than cl-autowrap/libffi
	       #:cffi
	       )
  :components ((:file "package")
               (:file "myproject")))


