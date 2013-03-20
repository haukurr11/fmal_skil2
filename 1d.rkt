;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1d) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (comp f g) (lambda (x) (f (g x))))
(define (duplicate lst)
  (foldr (lambda (a b) (cons a(cons a b)))empty lst))
(define (square lst)
  (map(lambda(x) (* x x)) lst))
(define (dupl_square lst)
  ( (comp duplicate square ) lst))