#lang sicp
(define (square x) (* x x))
(define (good-enough? guess x) (< (abs (- x (square guess))) 0.001))
;笨蛋，最开始写的时候，这里写成了 (/ 2 (+ x y)) 导致栈溢出
(define (avg x y) (/ (+ x y) 2))
(define (better guess x) (avg guess (/ x guess)))
(define (sqrt guess x)
  (if (good-enough? guess x)
      guess
      (sqrt (better guess x) x)))