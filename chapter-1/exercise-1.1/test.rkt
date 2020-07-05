#lang racket

(require rackunit)
(require rackunit/text-ui)

(define a 3)
(define b (+ a 1))

(run-tests
  (test-suite
    "Testing exercise 1.1"
    
    (check-equal? 10 10 "Number primitive")
    (check-equal? (+ 5 3 4) 12 "Simple expression#1")
    (check-equal? (- 9 1) 8 "Simple expression#2")
    (check-equal? (- 6 2) 4 "Simple expression#3")
    (check-equal? (+ (* 2 4) (- 4 6)) 6 "Combination of expressions")

    (check-equal? (+ a b (* a b)) 19)
    (check-equal? (= a b) false)
    (check-equal?
      (if (and (> b a) (< b (* a b)))
        b
        a)
      b)
    (check-equal?
      (cond ((= a 4) 6)
            ((= b 4) (+ 6 7 a))
            (else 25))
      16)
    (check-equal?
      (+ 2 (if (> b a) b a))
      6)
    (check-equal?
      (* (cond
           ((> a b) a)
           ((< a b) b)
           (else -1))
         (+ a 1))
      16)
    ))
