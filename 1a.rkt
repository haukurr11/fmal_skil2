;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1a_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (lessthan lis k)
    (cond
      ((null? lis) '())
      ((< (car lis) k) (cons (car lis) (lessthan (cdr lis) k)))
      (else (lessthan (cdr lis) k))
      ) 
) 