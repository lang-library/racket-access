# Access Path for Racket

by JavaCommons Technologies
<[javacommons@gmail.com](mailto:javacommons@gmail.com)>

 (require access) package: [access](https://pkgs.racket-lang.org/package/access)

This basically provides `!`, and `!-debug`.

    1 Example and usage

## 1. Example and usage

```racket
#! /usr/bin/env racket                                                                
#lang racket                                                                          
(require access)                                                                      
                                                                                      
(define x (hash 'abc '(777 888)))                                                     
(! x (hash-ref ! 'abc) (list-ref ! 1)) ;; equivalent to (list-ref (hash-ref x 'abc) 1)
;; ==> 888                                                                            
```
