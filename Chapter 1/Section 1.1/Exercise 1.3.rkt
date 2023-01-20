#lang scheme

; DEFINE function to find larger of two numbers
(define (lesser a b)
  (if (< a b)
      a
      b))

; Test lesser, expect 8
(lesser 8 9)

; DEFINE function to find square of a number
(define (square a) (* a a))

; Test square, expect 16
(square 4)

; DEFINE function to find target of exercise - sum of squares of two larger numbers out of three

(define (sumOfSquares a b c)
  (- (+ (square a) (square b) (square c)) (square (lesser a (lesser b c)))))

; Test sumOfSquares, expect 32

(sumOfSquares 4 4 2)