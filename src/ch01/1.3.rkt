#lang sicp
(define (s x) (* x x))
(define (ss x y z)(+ (cond((not(or(< x y)(< x z))) (s x))
                          ((not(or(< y z)(< y x))) (s y))
                          ((not(or(< z x)(< z y))) (s z)))
                     (cond((and(> x y)(not(> x z)))(s x))
                          ((and(> y z)(not(> y x)))(s y))
                          ((and(> z x)(not(> z y)))(s z)))))