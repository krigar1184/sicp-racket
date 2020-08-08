#lang racket

(provide pascal)

(define (pascal row col)
  (if (or (= col 1) (= col row)) 1
      (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))
  ))
