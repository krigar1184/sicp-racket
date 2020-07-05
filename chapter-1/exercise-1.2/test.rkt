#lang racket

(require rackunit)
(require rackunit/text-ui)

(run-tests
  (test-suite
    "Testing exercise 1.2"

    (check-equal?
      (/
        (+ 5 4 (- 2 3 (+ 6 (/ 4 5))))
        (* 3 (- 6 2) (- 2 7))
      )
      -1/50)
    ))
