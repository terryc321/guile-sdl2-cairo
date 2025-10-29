
;; this was a first attempt at writing fcase macro
;; think more about what the final s expression is that you require
;; rather than executing scheme code
;; here we were thinkin g in terms of loops and got all confused


(use-modules (ice-9 pretty-print))
(use-modules (ice-9 format))

(define pp pretty-print)


#|
ecase macro that does evaluate the datums from left to right , 

|#
(defmacro ecase (key . clauses)
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
