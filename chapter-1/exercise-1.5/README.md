Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using
applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

```racket
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
```

Then he evaluates the expression

```racket
(test 0 (p))
```

What behavior will Ben observe with an interpreter that uses applicative-order evaluation?
What behavior will he observe with an interpreter that uses normal-order evaluation?

Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is
using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to
evaluate the consequent or the alternative expression.)

Answer:

`p` is a procedure that has no formal parameters and calls itself unconditionally.

If an interpreter evaluates `(test 0 (p))` using applicative-order evaluation, it will
attempt to evaluate the arguments first, and will enter infinite recursion since the second parameter
will never can never be evaluated.

If an interpreter uses normal-order evaluation, the arguments won't be evaluated until the substitution is finished.
After substitution the expression will look like this:

```racket
(define test 0 (p) (if (= 0 0) 0 p))
```

`if` is a special form which doesn't evaluate it's "alternative" clause if the predicate returns `true`.
Since in this case the predicate returns `true`, `0` is returned.
