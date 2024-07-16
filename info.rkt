#lang info
(define collection "access")
(define name "access: Access Path for Racket")
(define blurb '("Access Path for Racket."))
(define categories '(devtools))
(define can-be-loaded-with 'all)
(define required-core-version "5.1.1")
(define version "1.0")
(define repositories '("4.x"))
(define scribblings '(("access.scrbl")))
(define primary-file "main.rkt")
(define release-notes '((p "First release")))
(define deps '("base"
               "pprint-all"
               ))
(define build-deps '("racket-doc"
                     "scribble-lib"))
