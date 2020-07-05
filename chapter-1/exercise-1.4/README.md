Observe that our model of evaluation allows for combinations whose operators are compound expressions.
Use this observation to describe the behavior of the following procedure:

```racket
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
```

Answer:

Racket uses applicative-order of evaluation, which means that the operator and the operands are
evaluated immediately. In this example the operand is `if (> b 0) + -)`.
`if` is a special form which evaluates its predicate and chooses an alternative depending on
the predicate's return value. Thus, it looks at the `b` formal parameter and returns `+` if
it's larger than zero and `-` otherwise. Since these values are built-in procedures,
the predicate is now evaluated completely.
