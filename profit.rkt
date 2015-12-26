;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname profit) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (attendees ticket-price)
  (- 120 (* (- ticket-price 5.0) (/ 15 0.1))))
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))
(define (cost ticket-price)
  (+ 180 (* 0.04 (attendees ticket-price))))
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
