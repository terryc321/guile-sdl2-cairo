
#|

start guile in a shell and load this file
>guile
>(load "coop.scm")
>(run)

start emacs- disable company-mode as it gets too slow
> geiser-connect
localhost port:37654 or whatever default number is

can have multiple emacs sessions each with
own geiser connect session open 

|#
(use-modules (system repl coop-server))

(define *coop-server* #f)
(define *counter* 0)

(define (setup)
  (set! *coop-server* (spawn-coop-repl-server)))

(define (run)
  (sleep 1)
  (poll-coop-repl-server *coop-server*)
  (my-routine)
  (run))

(define (my-routine)
  (set! *counter* (+ 1 *counter*))
  (format #t "this is original ~a my-routine~%" *counter*))

(define (my-routine2)
  (set! *counter* (+ 1 *counter*))
  (format #t "this is another ~a my-routine~%" *counter*))

;;(setup)
;;(run)

#|

(define (my-routine3)
  (set! *counter* (+ 1 *counter*))
  (format #t "flamboiyant this spectacular ~a my-routine~%" *counter*))

how about we keep evaluating silly routines that
call each other

(define (insane n)
 (format #t "i am insane ~a~%" n)
  (insane (+ n 1)))

(define (my-routine4)
  (set! *counter* (+ 1 *counter*))
  (format #t "flamboiyant FOUR ~a my-routine~%" *counter*))

(define (my-routine5)
  (set! *counter* (+ 1 *counter*))
  (format #t "flamboiyant FIVE ~a my-routine~%" *counter*))


|#
