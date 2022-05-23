#lang sicp
(define (average x y) (/ (+ x y) 2))
(define (square x) (* x x))
;lexical scoping
(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.0001))
  (define (better guess)
    (average (/ x guess ) guess))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (better guess))))
  (sqrt-iter 1.0))