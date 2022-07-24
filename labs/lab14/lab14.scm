(define (split-at lst n)
  (define (helper lst n s)
    (if (or (null? lst) (= n 0)) (cons s lst)  (helper (cdr lst) (- n 1) (append s (list (car lst))))))
  (helper lst n '())
)


(define-macro (switch expr cases)
          (cons 'cond 
	   (map (lambda (case) (cons (list 'eq? expr (car case)) (cdr case))) 
    			cases))
)

