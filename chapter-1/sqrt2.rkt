#lang racket

(provide sqrt2 improve average)

(define (sqrt2 x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (<= (abs (- (* guess guess) x)) 0.0001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average a b)
  (/ (+ a b) 2))

(sqrt2 0.01)