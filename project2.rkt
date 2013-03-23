;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname project2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;1a 
(define (lessthan lis k)
    (cond
      ((null? lis) '())
      ((< (car lis) k) (cons (car lis) (lessthan (cdr lis) k)))
      (else (lessthan (cdr lis) k))
      )
)

;1b
(define (duplicate lst)
  (foldr (lambda (a b) (cons a(cons a b)))empty lst))

;1c;
(define (delete lis k)
    (cond
      ( (null? lis) '() )
          ((<(length lis) k) lis)
           ( (equal? 1 k) (cdr lis) )
           (else (cons (car lis) (delete (cdr lis) (- k 1)) ) )
      )
)

;1d
(define (comp f g) (lambda (x) (f (g x))))
(define (square lst)
  (map(lambda(x) (* x x)) lst))
(define (dupl_square lst)
  ( (comp duplicate square ) lst))

;1e
(define (inorder n)
    (cond
      ( (equal? n 0) '() )
        (else(append (inorder(- n 1)) (list n) ) )
      )
)

;2a
(define (shorten f lis)
  (if
    (null? (cdr lis)) (car lis)
  (f (car lis) (shorten f (cdr lis)))
  )
)

;2b
(define (shorten_all f lists)
  (if
   (null? lists) '()
  (map(lambda(x) (shorten f x)) lists)
  )
)


; Test cases

;1a
(lessthan '(1 5 3 2 4) 3)

;1b
(duplicate '(1 2 3 4))

;1c
(delete '(1 2) 3) 
(delete '(1 2 3 4 5) 3)

;1d
(dupl_square '(1 2 3 4))

;1e
(inorder 6)

;2a
(shorten * '(2 4 1 3))
(shorten + '(2 4 1 3))
(shorten max '(2 4 1 3))

;2b
(shorten_all * '((1 3 4 2) (2 4 5 3) (3 5 6 4) (4 6 7 5))) 
(shorten_all + '((1 3 4 2) (2 4 5 3) (3 5 6 4) (4 6 7 5))) 
(shorten_all max '((1 3 4 2) (2 4 5 3) (3 5 6 4) (4 6 7 5))) 

