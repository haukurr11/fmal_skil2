;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1e) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (inorder n)
    (cond
      ( (equal? n 0) '() )
        (else(append2 (inorder(- n 1)) (list n) ) ) 
      )
)

(define (append2 lis1 lis2)
 (if (null? lis1) lis2
  (cons (car lis1) (append2 (cdr lis1) lis2))))
