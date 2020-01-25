#lang racket

(provide green:circle red:circle)

(require same-diff/common/base
         same-diff/common/rendering)

(define green:circle
  (colored-shape 'green circle))

(define red:circle
  (colored-shape 'red circle))
