;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname fileOperation) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/batch-io)
;;(write-file "sample.dat" "212")
(define (convert in out)
  (write-file out
              (number->string 
               (f2c
                (string->number
                 (read-file in))))))
(define (f2c f)
  (* 5/9 (- f 32)))
(convert "sample.dat" "out.dat")
;;(write-file "stdout" "good")
