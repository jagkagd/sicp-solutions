#lang racket

(define (sum-of-square-of-max-two a b c)
  (cond 
    [(and (< a b) (< a c)) (sum-of-square-of-two b c)]
    [(and (< b a) (< b c)) (sum-of-square-of-two a c)]
    [(and (< c a) (< c b)) (sum-of-square-of-two a b)]))

(define (sum-of-square-of-two a b)
  (+ (square a) (square b)))

(define (square x) (* x x))

(sum-of-square-of-max-two 1 2 3)
