;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname sqrt_root2) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")))))
(define (sqrtt x)
  (local ((define (good? guess x)
    (< (abs (- (* guess guess) x)) 0.001))
  (define (improve guess x)
    (/ (+ guess (/ x guess)) 2))
  (define (try guess x)
    (if (good? guess x)
        guess
        (try (improve guess x) x))))
  (try 1 x)))
(sqrtt 5)
(define square (lambda (x) (* x x)))
(define average (lambda (x y) (/ (+ x y) 2)))

(define sqroot (lambda (x)
                 (local ((define good-enuf? (lambda (guess)
                                      (< (abs (- (square guess) x))
                                      0.0001)))
                 (define improve (lambda (guess)
                                   (average guess (/ x guess))))
                 (define sqroot-iter (lambda (guess)
                                       (if (good-enuf? guess)
                                           guess
                                           (sqroot-iter (improve guess))))))
                 (sqroot-iter 1.0))
  ))

(sqroot 5)
(cdr (cons 2 (cons 3 empty)))
(define mycons (lambda (x y) (lambda (a) (if (= a 1) 
                                             x
                                             y))))
(define mycdr (lambda (x) (x 2)))
(mycons 2 3)
(mycdr (mycons 2 3))