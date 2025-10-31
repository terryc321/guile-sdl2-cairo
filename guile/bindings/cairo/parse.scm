
(use-modules (ice-9 format))


(getcwd)
;;(chdir "cairo")
;;(read-file "input")(slurp "")

(define (readlines filename)
  (call-with-input-file filename
    (lambda (p)
      (let loop ((line (read-line p))
                 (result '()))
        (if (eof-object? line)
            (reverse result)
            (loop (read-line p) (cons line result)))))))


(define (input)
  (call-with-input-file "input"
    (lambda (p)
      (read p))))


(define (hi)
  (call-with-input-file "hello"
    (lambda (p)
      (read p))))



	      
