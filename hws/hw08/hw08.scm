(define (helper curr sum s) 
  (if (and (not (null? s)) (= curr (car s))) (helper curr (+ sum  1) (cdr-stream s)) (list curr sum))
)

(define (next curr s)
  (if (null? s) nil
  (if (= curr (car s)) (next curr (cdr-stream s)) s))
)

(define (rle s)
  (if (null? s) nil
 (cons-stream (helper (car s) 0 s) (rle (next (car s) s))))
)

(define (helper2 curr s r)
  (if (null? s) r 
  (if (<= curr (car s)) (helper2 (car s) (cdr-stream s) (append r (list (car s)))) r)
))

(define (next2 curr s)
  (if (null? s) nil
  (if (<= curr (car s)) (next2 (car s) (cdr-stream s)) s))
)

(define (group-by-nondecreasing s)
  (if (null? s) nil
    (cons-stream (helper2 (car s) (cdr-stream s) (list (car s))) (group-by-nondecreasing (next2 (car s) (cdr-stream s)))))
)

(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))

