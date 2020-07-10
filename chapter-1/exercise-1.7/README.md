## Question

The good-enough? test used in computing square roots will not be very effective for
finding the square roots of very small numbers.  Also, in real computers, arithmetic
operations are almost always performed with limited precision.  This makes our test
inadequate for very large numbers. Explain these statements, with examples showing
how the test fails for small and large numbers.

An alternative strategy for implementing good-enough? is to watch how guess changes
from one iteration to the next and to stop when the change is a very small fraction of the guess.

Design a square-root procedure that uses this kind of end test.
Does this work better for small and large numbers?

## Answer

When calculating square roots of very small numbers, the current algorithm fails because of
the hardcoded precision value: is `x` is close to it, the guess will never be accurate enough.

In case of very large numbers, the `good-enough?` procedure may never return true due to
the precision loss in the `improve` procedure. For example, if we try to calculate a square root
of 123412341234123, the program will at some point need to calculate the average of 11109110.731022667 (guess)
and 11109110.731022669 (ratio of radicand and guess), getting the result of 11109110.731022667 which equals to guess.
Thus, the guess will remain the same and the program enters infinite recursion.

For the alternative implementation of `good-enough?` procedure please see [./better-sqrt.rkt](better-sqrt.rkt file).
