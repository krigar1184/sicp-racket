#lang racket

(require rackunit)
(require rackunit/text-ui)

(require "sum.rkt")

(run-tests
  (test-suite
    "Testing exercise 1.3"
    (check-equal? (sum-of-largest-squares 1 2 3) 13)
    (check-equal? (sum-of-largest-squares 6 6 6) 72)
    (check-equal? (sum-of-largest-squares -5 8 0) 64)
    ))
