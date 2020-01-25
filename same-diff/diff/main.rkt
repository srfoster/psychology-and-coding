#lang racket

(require ratchet)

(define-ratchet-lang
  (provide
    (except-out
      (all-from-out racket 
		    same-diff/common)
      #%module-begin)
    (rename-out 
      [module-begin/diff-things?->jingle
       #%module-begin]))

  (require racket
	   same-diff/common)

  #:wrapper diff-things?->jingle
  [green:circle g (render green:circle)]
  [red:circle r (render red:circle)])


