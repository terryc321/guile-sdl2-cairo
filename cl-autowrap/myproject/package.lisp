;;;; package.lisp

;; prefer uiop:define-package over defpackage
(uiop:define-package :myproject
  (:use :cl :autowrap))

