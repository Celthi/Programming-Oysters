;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname local_and_lambda) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")))))
(define square (lambda (x) (* x x)))

;;(sqt 2)   


(define (fix-point func start)
  (local 
    ((define (close-enf? old new)
  (if (< (abs (- old new)) 0.001)
      true
      false))
     (define (iter old new)
    (if (close-enf? old new)
        new
        (iter new (func new)))))
  (iter start (func start))))

(define x 4)
(fix-point (lambda (y) (/ 2 (+ y (/ x y)))) 1)

(define (sqrt_lambda x)
  (fix-point (average-damp (lambda (y) (/ x y))) 
               1))

(define average-damp
  (lambda (f)
    (lambda (x) (/ 2 (+ (f x) x)))))
;(sqrt_lambda 4)