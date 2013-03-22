;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2a) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (shorten f lis)
  (cond
    ((null? (cdr lis)) 
       (if (eq? f *) (car lis) 
       (f (car lis)))
    )
    (else 
     (f (car lis) 
     (shorten f (cdr lis))
     )
    )
)
)  
