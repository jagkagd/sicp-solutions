#lang racket

(define (root-iter guess x last-guess)
  (if (good-enough? guess x last-guess)
      guess
      (root-iter (imporve guess x) x guess)))

(define (imporve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x last-guess)
  (< (abs (- guess last-guess)) (* guess 0.001)))

(define (square x)
  (* x x))

(define (my-root x)
  (root-iter 1.0 x 0))

(my-root 100) 
