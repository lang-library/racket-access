#lang racket
(require compatibility/defmacro) ;; compatibility-lib

(module common racket
  #;(require compatibility/defmacro)
  #;(require pprint-all)
  (provide
   #;echo
   transform-replace
   )
  (define (my-function x) (+ x 1))
  #;(define-macro (push! x stack)
    `(set! ,stack (cons ,x ,stack))
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

#;(define-macro (!-debug $x . $specs)
  (for ([$spec $specs])
    (echo $spec "$spec")
    (echo $x "$x(1)")
    (set! $x (transform-replace $spec $x))
    (echo $x "$x(2)")
    )
  (echo $x "$x(final)")
  $x
  )

(provide
 !
 #;!-debug
 )
