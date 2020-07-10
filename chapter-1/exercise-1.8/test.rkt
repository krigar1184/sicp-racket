#lang racket

(require rackunit)
(require rackunit/text-ui)

(require "./cube-root.rkt")

(run-tests
  (test-suite
    "Testing exercise 1.8"
    (check-equal? (cube-root 1) 1.0)
    (check-equal? (cube-root 27) 3.0)
    ))
