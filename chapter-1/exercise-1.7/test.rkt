#lang racket

(require rackunit)
(require rackunit/text-ui)

(require "better-sqrt.rkt")
(require "../sqrt2.rkt")

(run-tests 
  (test-suite
    "Testing exercise 1.7"
    (check-equal? (sqrt3 1) 1.0)
    (check-equal? (sqrt3 9) 3.0)
    (check-equal? (sqrt3 144) 12.0)
    ))
