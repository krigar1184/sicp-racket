#lang racket

(require rackunit)
(require rackunit/text-ui)

(require "better-sqrt.rkt")
(require "../sqrt2.rkt")

(define old-sqrt (sqrt2 0.01))
(define new-sqrt (sqrt3 0.01))

(run-tests 
  (test-suite
    "Testing exercise 1.7"
    (check-equal? (< new-sqrt old-sqrt) true)
    ))
