#lang racket
(require compatibility/defmacro) ;; compatibility-lib

(module common racket
  (provide
   transform-replace
   )
  (define (transform-replace $spec $x)
    (cond
      ((eq? $spec '!)
       $x)
      ((cons? $spec)
       (cons (transform-replace (car $spec) $x)
             (transform-replace (cdr $spec) $x)))
      (#t $spec)
      )
    )
  )

(require 'common
         (for-syntax 'common))

(define-macro (! $x . $specs)
  (for ([$spec $specs])
    (set! $x (transform-replace $spec $x))
    )
  $x
  )

(provide
 !
 )
