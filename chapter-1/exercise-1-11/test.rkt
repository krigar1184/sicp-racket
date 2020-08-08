#lang racket

(require rackunit)
(require rackunit/text-ui)
(require (rename-in "./iterative.rkt" (f f-iter)))
(require (rename-in "./recursive.rkt" (f f-recur)))

(run-tests
  (test-suite
    "Testing exercise 1.11"

    (check-equal? (f-recur 2) 2)
    (check-equal? (f-recur 3) 4)
    (check-equal? (f-recur 4) 11)
    (check-equal? (f-recur 5) 25)
    (check-equal? (f-recur 6) 59)

    (check-equal? (f-iter 2) 2)
    (check-equal? (f-iter 3) 4)
    (check-equal? (f-iter 4) 11)
    (check-equal? (f-iter 5) 25)
    (check-equal? (f-iter 6) 59)
    ))
