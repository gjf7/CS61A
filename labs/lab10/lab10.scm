(define (over-or-under num1 num2)
  (cond ((> num1 num2) 1)
        ((< num1 num2) -1)
        (else 0))
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0


(define (filter-lst fn lst)
  'YOUR-CODE-HERE
  (cond ((null? lst) nil)
        ((fn (car lst)) 
         (cons (car lst) (filter-lst fn (cdr lst))))
         (else (filter-lst fn (cdr lst))))
)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)


(define (make-adder num)
  'YOUR-CODE-HERE
  (lambda (x) (+ x num))
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13


(define lst
  'YOUR-CODE-HERE
  (cons (cons 1 nil) (cons 2 (cons (3 (cons 4 nil)) (cons 5 nil))))
)


(define (composed f g)
  'YOUR-CODE-HERE
  (lambda (x) (f (g x)))
)


(define (remove item lst)
  'YOUR-CODE-HERE
  (filter-lst (lambda (x) (not (= x item))) lst)
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)


(define (no-repeats s)
  'YOUR-CODE-HERE
  (if (null? s) s
  (cons (car s) (remove (car s) (no-repeats (cdr s)))))
)


(define (substitute s old new)
  'YOUR-CODE-HERE
  (cond ((null? s) s)
        ((pair? (car s) ) (cons (substitute (car s) old new) (substitute (cdr s) old new)))
        ((eq? (car s) old) (cons new (substitute (cdr s) old new)))
        (else (cons (car s) (substitute (cdr s) old new)))
        )
)


(define (sub-all s olds news)
  'YOUR-CODE-HERE
  (cond ((null? s) s)
        ((null? olds) s)
        (else (sub-all (substitute s (car olds) (car news)) (cdr olds) (cdr news))))
)

