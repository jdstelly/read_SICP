#lang scheme

;Exercise 1.1 of SICP - 1/3/2023
;It's mostly just getting comfortable with syntax.

10
;Evaluates to 10
(+ 5 3 4)
;Eval to 12
(- 9 1)
;eval 8
(/ 6 2)
;3
(+ (* 2 4) (- 4 6))
;6
(define a 3)
;no output, variable assignment
(define b (+ a 1))
;no output, variable assignment
(+ a b (* a b))
;19
(= a b)
;False (#f)
(if (and (> b a) (< b (* a b)))
    b
    a)
;4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;16
(+ 2 (if (> b a) b a))
;6
(* (cond ((> b a) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;12