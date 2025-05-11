#lang racket
;SUBSTITUTION MODEL
;just talking about how the arguments replace variables in the body of a function for like an hour bruh
(define (sos x y)
  (+(sq x) (sq y)))
(define (sq x)
  (* x x)
)
(sos 3 4)

;(define (+ x y)
;  ; just a small implementation of plus function through incrementing till it's the result
;  (if (= x 0)
;    y
;    (+ (-1+ x) (1+ y))
;    )
;  )

; a bit harder. about O notations and how we should design our code so that it will not make too many steps.
(define (fibonacci x y number)
  (if (= number 0)
    x
    (fibonacci y (+ x y) (- number 1))))
(fibonacci 0 1 10)
(define (fib n)
  (if (< n 2)
    n
    (+ (fib(- n 1))
       (fib(- n 2)))))
(fib 10)
