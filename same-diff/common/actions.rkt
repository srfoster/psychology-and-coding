#lang racket

(provide 
  same-things?->jingle
  module-begin/same-things?->jingle
  diff-things?->jingle
  module-begin/diff-things?->jingle)

(require same-diff/common/base)

(define-syntax-rule (module-begin/same-things?->jingle things ...)
    (#%module-begin 
     (same-things?->jingle things ...)))

(define-syntax-rule (same-things?->jingle things ...)
    (if (all-eq? things ...)
	"Play Jingle"
	"Silence..."))

(define-syntax-rule (module-begin/diff-things?->jingle things ...)
    (#%module-begin 
     (diff-things?->jingle things ...)))

(define-syntax-rule (diff-things?->jingle things ...)
    (if (not (all-eq? things ...))
	"Play Jingle"
	"Silence..."))

(define (all-eq? . things)
  (= 1 
     (length 
       (set->list
	 (list->seteq things)))))
