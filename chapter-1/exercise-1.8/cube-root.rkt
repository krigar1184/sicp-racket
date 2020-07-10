#lang racket

(provide cube-root)

(define (cube-root x) (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough? guess new-guess)
    guess
    (cube-root-iter new-guess x)))

(define (good-enough? old-guess new-guess)
  (<= (abs (- old-guess new-guess)) (* old-guess 0.00000000000001)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
