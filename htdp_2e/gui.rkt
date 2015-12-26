;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname gui) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")))))


;; Model:
;; build-number : (listof digit)  ->  number
;; to translate a list of digits into a number
;; example: (build-number (list 1 2 3)) = 123
(define (build-number x)
  (cond
    [(empty? x) 0]
    [else (local ((define num (build-number (rest x)))) 
            (cond
            [(empty? num) (+ (first x) num)]
            [else (+ num (* 10 (first x)))]))]))
            



;; View:
;; the ten digits as strings 
(define DIGITS
  (build-list 10  number->string))

;; a list of three digit choice menus 
(define digit-choosers
  (local ((define (builder i) (make-choice DIGITS)))
    (build-list 3 builder)))

;; a message field for saying hello and displaying the number 
(define a-msg
  (make-message "Welcome"))

;; 



;; Controller: 
;; check-call-back : X  ->  true
;; to get the current choices of digits, convert them to a number, 
;; and to draw this number as a string into the message field 
(define (check-call-back b)
  (draw-message a-msg 
                (number->string
                 (build-number 
                  (map choice-index digit-choosers)))))

(create-window 
 (list 
  (append digit-choosers (list a-msg))
  (list (make-button "Check Guess" check-call-back))))