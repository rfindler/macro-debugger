#lang racket/base

(provide get-marks)

(define (get-marks stx)
  (define info (syntax-debug-info stx))
  (for/list ([e (in-list (hash-ref info 'context))])
    (vector-ref e 0)))