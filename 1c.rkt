;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1c) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (delete lis k)
    (cond
      ( (null? lis) '() )
          ((<(length lis) k) lis)
           ( (equal? 1 k) (cdr lis) )
           (else (cons (car lis) (delete (cdr lis) (- k 1)) ) )
      )
)