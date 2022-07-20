(define (cddr s) (cdr (cdr s)))

(define (cadr s) 'YOUR-CODE-HERE (car (cdr s)))

(define (caddr s) 'YOUR-CODE-HERE (car (cddr s)))

(define (sign num)
  'YOUR-CODE-HERE
  (cond 
    ((> num 0) 1)
    ((= num 0) 0)
    (else      -1)))

(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (cond 
    ((= y 0)   1)
    ((= x 0)   0)
    ((even? y) (square (pow x (/ y 2))))
    (else      (* x (pow x (- y 1))))))

(define (unique s)
  'YOUR-CODE-HERE
  (if (null? s)
      s
      (cons (car s)
            (filter (lambda (x) (not (eq? x (car s))))
                    (unique (cdr s))))))

(define (replicate x n)
  'YOUR-CODE-HERE
  (define (replicate-iter x n s)
    (if (= n 0)
        s
        (replicate-iter x (- n 1) (cons x s))))
  (replicate-iter x n nil))

(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (cond 
    ((= n 1)
     (term n))
    ((= start 0)
     (combiner (term n)
               (accumulate combiner 0 (- n 1) term)))
    (else
     (combiner start
               (term n)
               (accumulate combiner 0 (- n 1) term)))))

(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (define (accumulate-iter combiner n term s)
    (if (= n 0)
        s
        (accumulate-iter combiner
                         (- n 1)
                         term
                         (combiner s (term n)))))
  (accumulate-iter combiner n term start))

(define-macro
 (list-of map-expr for var in lst if filter-expr)
 'YOUR-CODE-HERE
 `(map (lambda (,var) ,map-expr)
       (filter (lambda (,var) ,filter-expr) ,lst)))
