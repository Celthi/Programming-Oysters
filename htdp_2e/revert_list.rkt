;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname revert_list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; invert  : (listof X) -> (listof X)
;; revert alox
(define (invert alox0)
  (local (;; accumulator is the revert list of elements before alox in alox0
          (define (rev alox accumulator)
            (cond
              [(empty? alox) accumulator]
              [else
               (rev (rest alox) (cons (first alox) accumulator))])))
    (rev alox0 empty))) 

(invert (list 0 1 2 3 4 5 6 7 8 9))