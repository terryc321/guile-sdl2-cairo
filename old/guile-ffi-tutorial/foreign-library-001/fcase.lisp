
;; fcase.lisp
;; common lisp version of ecase
;; ecase : want a case statement that evaluates the datums 

;; FIX ME -- we have not yet written this yet , just a copied file from scheme version ecase 
;; called it fcase to prevent confusion felse so we can be sure we are working with right version
;; and not ecase , if that even exists in common lisp
#|


fcase macro that does evaluate the datums from left to right , 

|#

(defpackage :fcase
  (:use :cl))

(in-package :fcase)

#|
;; (defmacro fcase (key &rest clauses)
;;   (let ((k (gensym "key"))
;; 	(vcs (gensym "clauses"))
;; 	(vc (gensym "vc"))
;; 	(v (gensym "v"))
;; 	(vals (gensym "vals"))
;; 	(body (gensym "body")))
;;     `(let ((,k ,key)
;; 	   (,vcs ',clauses))
;;        (loop for ,vc in ,vcs do
;; 	 (let ((,vals (car (car ,vc)))
;; 	       (,body (cdr (car ,vc))))
;; 	   (cond	     
;; 	     ((eq ,vals 'else)
;; 	      (eval (cons 'progn ,body)))
;; 	     (t  
;; 	      (loop for ,v in ,vals do
;; 		(when (equalp ,v ,k)
;; 		  (eval (cons 'progn ,body))
;; 		  )))))))))

;; M-x sly slyvester common lisp with sbcl
;; C-c return macro expand 
(fcase 1
       ((1 2 3) 'a)
       ((4 5 6) 'b)
       ((7 8 9) 'c)
       (else 'd))

(cond
  ((or (eqv 1 1)(eqv 1 2)(eqv 1 3)) 'a)
  ((or (eqv 1 4)(eqv 1 5)(eqv 1 6)) 'b)
  ((or (eqv 1 7)(eqv 1 8)(eqv 1 9)) 'c)
  (t 'd))
  

given a list such as ((1 2 3) 'a) or (else 'd)
split into 1st thing  and body
|#

(defun fcase-helper2 (k xs)
  (cond
    ((null xs) '())
    (t 
     (let ((datums (car (car xs)))
	   (body (cdr (car xs))))
       (cond
	 ((eq datums 'else) `((t ,@body)))
	 (t (append `(((or
		       ,@(mapcar (lambda (val) `(equal ,k ,val)) datums))
		       ,@body))
		    (fcase-helper2 k (cdr xs)))))))))


#|
(fcase-helper2 1 '(((1 2 3) 'a)
		  ((4 5 6) 'b)
		  ((7 8 9) 'c)
		  (else 'd)))
|#

(defun fcase-helper (key clauses)
  (let ((k (gensym "key")))
    `(let ((,k ,key))
       (cond
       ,@(fcase-helper2 k clauses)))))


(defmacro fcase (key &rest clauses)
  (fcase-helper key clauses))


(macroexpand '(fcase 1
	       ((1 2 3) 'a)
	       ((4 5 6) 'b)
	       ((7 8 9) 'c)
	       (else 'd)))

(fcase 1
       ((1 2 3) 'a)
       ((4 5 6) 'b)
       ((7 8 9) 'c)
       (else 'd))

(loop for i from 1 to 15 do
  (format t "i=~a : fcase = ~a~%" i
	  (fcase i
		 ((1 2 3 (+ 10 1)) 'a)
		 ((4 5 6) 'b)
		 ((7 8 9) 'c)
		 (else 'd))))

  


;; (LET ((k 1))
;;   (COND
;;    ((OR (EQUAL k 1) (EQUAL k 2) (EQUAL k 3) 'A))
;;    ((OR (EQUAL k 4) (EQUAL k 5) (EQUAL k 6) 'B))
;;    ((OR (EQUAL k 7) (EQUAL k 8) (EQUAL k 9) 'C))
;;    (T 'D)))



#|
(fcase-helper '(fcase 1
		((1 2 3) 'a)
		((4 5 6) 'b)
		((7 8 9) 'c)
		(else 'd)))
    
	


(1 2 3) => (or (eqv 1 1)(eqv 1 2)(eqv 1 3))

(let ((key 1)(body '(a b c)))
  `((or
     ,@(mapcar (lambda (val) `(eqv ,key ,val)) '(1 2 3)))
    ,@body))

|#


#|

  (let ((k (gensym "key"))
	(c (gensym "clauses"))
	(foo (gensym "foo"))
	(foo2 (gensym "foo2")))
    `(let ((k ,key))
       (letrec ((,foo (lambda (vcl)
			(cond
			 ((null? vcl) #f)
			 (#t (let ((vals (car (car vcl)))
				   (body (cdr (car vcl))))
			       (cond
				((eqv? vals 'felse) (eval (cons 'begin body)))
				(#t
				 (letrec ((,foo2 (lambda (vs)
						   (cond
						    ((null? vs) (,foo (cdr vcl)))
						    (#t (if (eqv? k (car vals))
							    (eval (cons 'begin body))
							    (foo2 (cdr vs))))))))
				   (,foo2 vals))))))))))
	 (,foo ,clauses)))))


(pp
 (macroexpand
 '(let ((*constant-sdl-window-event-moved* 4))
    (ecase 4
	   ((*constant-sdl-window-event-moved*) 1)
	   (felse 2)))))




(macroexpand '(+ 1 2))
|#
