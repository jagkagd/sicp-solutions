#lang racket

(define (fast-mul a b)
  (define (iter a b s)
    (define (double x) (* x 2))
    (define (halve x) (/ x 2))
    (cond
      [(= b 0) 0]
      [(= a 0) s]
      [(even? a) (iter (halve a) (double b) s)]
      [else (iter (- a 1) b (+ s b))]))
  (iter a b 0))

