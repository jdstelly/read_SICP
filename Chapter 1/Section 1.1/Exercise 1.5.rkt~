#lang scheme

; Explain how the following procedure will behave given an interpreter that uses "applicative order" evaluation
; then explain how the procedure would behave given an interpreter that uses "normal-order" evaluation.

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; ANSWER: In the case of "applicative order" evaluation..
; I expect the procedure to infinitely recur when attempting to evaluate the argument "p", and the procedure will never resolve.
; ===
; In the case of "normal order" evaluation..
; Based on the definition within SICP on page 16 stating:
; "[...] it would first subtitute operand expressions for parameters until it obtained
; an expression involving only primitive operators, and would then perform the evaluation[...]"
; I initially thought this would also recur infinitely, but my mistake was reading "primitive operators" as "primitive operands".
; "Normal order" interpretation will resolve to 0 once 'test 0 (p)' has been resolved to 'if (= 0 0) 0 p', because 'if' is a primitive operator.