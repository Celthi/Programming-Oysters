;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname function) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (area-of-disk r)
    (* 3.14 (* r r)))
(area-of-disk 6)

(define (tax wage)
  (* wage .15))
(tax 1000)

(define (f n)
  (+ (/ n 3) 2))
(f 5)

(define (a->b a)
  (+ 1 a))

(a->b 4)

(define (interest-rate n)
(cond 
  [(< n 1000) 0.040]
     [(< n 5000) 0.045]
     [(> n 5000) 0.050]))
(interest-rate 800)

(define-struct mystar (name zip phone))
(make-mystar "peter" 1000 'phone)
(define mystarInstance (make-mystar "petr" 11111 'pphon))

(mystar-name mystarInstance)

(mystar-name (make-mystar (make-posn 20 20) 1000 'petr))

(define a 4)
(list a 'b)

;;replace-eol-with :list-of-numbers list-of-numbers -> list-of-numbers
;;replace alon1's empty with anlon2, create new list
(define (replace-eol-with alon1 alon2)
  (cond
    [(empty? alon1) alon2]
    [else (cons (first alon1) (replace-eol-with (rest alon1) alon2))]))
(replace-eol-with '(a) (replace-eol-with '(b c) '(d e f)))

(cons empty empty)