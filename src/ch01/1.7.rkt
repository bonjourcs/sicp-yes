#lang sicp
(define (good-enough? a b) (< (abs (- a b)) 0.0001))
(define (avg x y) (/ (+ x y) 2))
(define (better guess x)
  (avg guess (/ x guess)))
(define (sqrt guess x)
  (if (good-enough? guess (better guess x))
      guess
      (sqrt (better guess x) x)))
(define (real-sqrt x)
  (sqrt 1 x))