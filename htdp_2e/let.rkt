;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname let) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")))))
;(define (av x y)
 ; (/ (+ x y) 2)
  ;4)
;
;(av 3 7)
(define (average x y)
  (/ (+ x y) 2))
(define (average-damp f)
  (local ((define (foo x)
    (average (f x) x))) foo)) 
(average-damp (lambda (x) (/ (+ x (/ 5 x)) 2)))
((lambda (x) (/ (+ x (/ 5 x)) 2)) 4)
(/ (+ 4 (/ 5 4)) 2)

(define x 1)
(define y 2)
(cons x empty)
(car (cons x empty)) 

(let ((x 3) (y 4)) (+ x y))

(require racket/base)

(map (lambda (x) (+ 1 x)) (list 3 4)) 

'('1 '2)

(define foo 
  '(+ (* a (* x x))
      (* (* b x))))