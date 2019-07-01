#lang eopl
(define (cube x)
(* x (* x (* 1 x)))
; same as simple ( * x x x)
  )

#|
(define a 3)
(define b (+ a 1))
(define a 4)   -- error about duplicate assignement but I'm not sure what the point was
|#

(define (new-sin x type) (cond
                           ((equal? type 'radians) (sin x))
                           ((equal? type 'degrees) (sin (* x 0.01745329252)))
                           (else "invalid type")))

(define (new-cos x type) (cond
                           ((equal? type 'radians) (cos x))
                           ((equal? type 'degrees) (cos (* x 0.01745329252)))
                           (else "invalid type")))