#! /usr/bin/env racket
#lang racket
(require "./main.rkt")
(require pprint-all)

(define x (hash 'abc '(777 888)))

(! x (hash-ref ! 'abc) (list-ref ! 1))
(!-debug x (hash-ref ! 'abc) (list-ref ! 1))
