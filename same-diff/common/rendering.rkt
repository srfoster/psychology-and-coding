#lang racket

(provide render
	 (rename-out
	   [my-circle circle]))

(require 2htdp/image
         same-diff/common/base)

(define (render thing)
  (define f
    (colored-shape-shape thing))

  (define color
    (colored-shape-color thing))
  
  (f color))

(define (my-circle color)
  (circle 10 'solid color))
