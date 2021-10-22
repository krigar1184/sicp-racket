#lang racket

(require rackunit)
(require rackunit/text-ui)

(require "./pascal.rkt")

(run-tests
  (test-suite
    "Testing exercise 1.12"
    (check-equal? (pascal 1 1) 1)
    (check-equal? (pascal 3 2) 2)
    (check-equal? (pascal 5 4) 4)
    (check-equal? (pascal 5 3) 6)
    ))
