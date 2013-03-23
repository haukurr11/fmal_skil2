;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2b) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (shorten f lis)
  (if
    (null? (cdr lis)) (car lis)
  (f (car lis) (shorten f (cdr lis)))
  )
)

(define (shorten_all f lists)
  (if
   (null? lists) '() 
  (map(lambda(x) (shorten f x)) lists)
  )
)