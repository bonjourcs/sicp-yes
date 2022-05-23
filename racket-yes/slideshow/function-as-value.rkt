#lang slideshow
(define (series mk)
    (hc-append 4 (mk 5) (mk 10) (mk 15) (mk 20)))
;调用函数
(series circle)
(define (square a)
    (rectangle a a))
(series square)