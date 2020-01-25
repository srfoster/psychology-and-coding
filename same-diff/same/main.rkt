#lang racket

(require ratchet)

(define-ratchet-lang
  (provide
    (except-out
      (all-from-out racket 
		    same-diff/common)
      #%module-begin)
    (rename-out 
      [module-begin/same-things?->jingle
       #%module-begin]))

  (require racket
	   same-diff/common)

  #:wrapper same-things?->jingle
  [green:circle g (render green:circle)]
  [red:circle r (render red:circle)])


