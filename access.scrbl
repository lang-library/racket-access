#lang scribble/manual

@title{Access Path for Racket}

@author[(author+email "JavaCommons Technologies" "javacommons@gmail.com")]

@defmodule[access]

This basically provides @racket[!], and @racket[!-debug].

@table-of-contents[]

@section{Example and usage}

@codeblock|{
#! /usr/bin/env racket
#lang racket
(require access)

(define x (hash 'abc '(777 888)))
(! x (hash-ref ! 'abc) (list-ref ! 1)) ;; equivalent to (list-ref (hash-ref x 'abc) 1)
;; ==> 888
}|
