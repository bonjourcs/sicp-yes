#lang slideshow
(define series
  (λ (mk)
    (hc-append (mk 5) (mk 10) (mk 15) (mk 20))))

(define (another-series mk)
  (hc-append (mk 5) (mk 10) (mk 15) (mk 20)))


(define (rgb-series mk)
  (vc-append
   (series (λ (sz) (colorize (mk sz) "red")))
   (series (λ (sz) (colorize (mk sz) "green")))
   (series (λ (sz) (colorize (mk sz) "blue")))))

(define (rgb-maker mk)
  (λ (sz)
    (vc-append (colorize (mk sz) "red")
               (colorize (mk sz) "green")
               (colorize (mk sz) "blue"))))

(define (square n)
  (filled-rectangle n n))

