;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname sqrt_root) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")))))
;;(define (sqrt_root x)    
;;  (define (impve guess)
  ;;  (/ (+ guess (/ x guess)) 2))
  ;;(define (good-enough? guess)
  ;;  (if (> 0.001 (abs(- (* guess guess) x))) guess
   ;;       (try (impove guess))))
  ;;(define (try guess)
    ;;(good-enough? guess)
      ;;)
  ;;(try 1))
  ;;
(define x 5)
(define (improve guess)
    (/ (+ guess (/ x guess)) 2))
 (define (good-enough? guess)
    (< (abs (- (* guess guess) x)) 
       0.001))

  (define (try guess)
    (if (good-enough? guess)
        guess
        (try (improve guess))))
  (try 1)