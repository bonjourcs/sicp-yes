#lang sicp
(define (cube x) (* x x x))
(define (good-enough? guess x) (< (abs (- (cube guess) x)) 0.001))
(define (better guess x) (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
;求一个数的立方根
(define (cube-root guess x)
  (if (good-enough? guess x)
      guess
      (cube-root (better guess x) x)))
;真正的求立方根
(define (real-cube-root x)
  (cube-root 1 x))