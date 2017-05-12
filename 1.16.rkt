#lang racket

(define (fast-expt b n)
  (define (iter b n a)
    (define (square b) (* b b))
    (cond
      [(= n 0) a]
      [(even? n) (iter (square b) (/ n 2) a)]
      [else (iter b (- n 1) (* a b))]))
  (iter b n 1))

