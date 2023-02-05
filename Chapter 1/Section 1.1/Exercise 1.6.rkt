#lang scheme
(define (sqrt-iter guess x)
  (new-if (accurate-answer? guess x)
      guess
      (sqrt-iter (improved-answer guess x)
            x)))

(define (accurate-answer? guess x)
  (< (absolute-value (- (square guess) x)) 0.001))

(define (improved-answer guess x)
  (average guess (/ x guess)))

(define (absolute-value x)
  (if (< x 0)
      (- x)
      x))

(define (square x)
  (* x x))

; Average of two arguments
(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; Exercise 1.6
; Alyssa P. Hacker's new-if procedure
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Execution

(sqrt 8)

; My Answer:
; I honestly thought it would just work. My answer was wrong.
; I should know by now that exercises are designed to teach something through failure.

; Correct Answer:
; This causes a memory overflow/infinite recursion, much like Exercise 1.5 did.
; Why? "If" is a special form that evaluates the predicate and consequent (the "then-clause" in Alyssa's procedure),
; and will ignore the alternate ("else-clause") if true.
; Defining a custom "new-if" procedure doesn't yield this special property of ignoring the alternate expression.
; The interpreter is using applicative-order evaluation, so will evaluate the arguments of the procedure (both consequent & alternate),
; which, regardless of the sqrt's accuracy, calls sqrt-iter again, which calls new-if, which calls sqrt-iter again [...] *Memory Overflow*