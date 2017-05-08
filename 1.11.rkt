#lang racket

(define (f n)
  (define (f-iter a b c count)
    (define update
      (+ a (* 2 b) (* 3 c)))
    (if (= count 0)
        c
        (f-iter update a b (- count 1))))
  (f-iter 2 1 0 n))

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
