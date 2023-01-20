#lang scheme

; Explain the following procedure
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; To obtain the value of a PLUS the ABSOLUTE VALUE of b,
; First resolve if b is greater than 0 - If true, set operator to +, else -.
; then resolve the resultant operation of <operator> a b.