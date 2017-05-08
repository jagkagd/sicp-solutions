#lang racket

(define (sqrt-iter guess x last-guess)
  (if (good-enough? guess x last-guess)
      guess
      (sqrt-iter (imporve guess x) x guess)))

(define (imporve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x last-guess)
  (< (abs (- guess last-guess)) (* guess 0.001)))

(define (square x)
  (* x x))

(define (my-sqrt x)
  (sqrt-iter 1.0 x 0))

(my-sqrt 3) 
