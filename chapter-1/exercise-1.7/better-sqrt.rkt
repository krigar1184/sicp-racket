#lang racket

(provide sqrt3)
(require "../sqrt2.rkt")

(define (sqrt3 x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough? guess new-guess)
    guess
    (sqrt-iter new-guess x)))

(define (good-enough? old-guess new-guess)
  (<= (abs (- old-guess new-guess)) (* new-guess 0.001)))
