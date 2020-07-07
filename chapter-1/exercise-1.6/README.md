## Question

Alyssa P. Hacker doesn't see why if needs to be provided as a special form.
"Why can't I just define it as an ordinary procedure in terms of cond?" she asks.
Alyssa's friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:

```racket
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
```

Eva demonstrates the program for Alyssa:

```racket
(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0
```

Delighted, Alyssa uses new-if to rewrite the square-root program:

```racket
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
```

What happens when Alyssa attempts to use this to compute square roots? Explain.

## Answer

Racket's built-in `if` is a special form that evaluates either of conditions depending
on the value of the predicate. The `new-if` is a compound expression which evaluates
all of its arguments. Thus, on each iteration of `sqrt-iter` it will attempt to
evaluate both `then-clause` and `else-clause`, entering an infinite recursion.
