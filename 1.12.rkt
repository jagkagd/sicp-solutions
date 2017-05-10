#lang racket

(define (pascal m n)
  (cond
    [(= n 1) 1]
    [(< n 0) 0]
    [(> n m) 0]
    [else (+ (pascal (- m 1) (- n 1)) (pascal (- m 1) n))]))

