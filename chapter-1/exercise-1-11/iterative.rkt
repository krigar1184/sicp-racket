#lang racket

(provide f)

(define (f n)
  (define (f-iter a b c counter)
    (if (< counter 3) a
        (f-iter
          (+ a (* 2 b) (* 3 c))
          a
          b
          (- counter 1))
        ))

  (f-iter 2 1 0 n))
