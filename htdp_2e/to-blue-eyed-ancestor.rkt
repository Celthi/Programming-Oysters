;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname to-blue-eyed-ancestor) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;; Language: Intermediate Student

;; STRUCTURE DEFINITION
(define-struct child (father mother name dob eyes))

;; DATA DEFINITIONS
;;
;; > family-tree-node (ftn)
;;   An ftn is either
;;      empty; or
;;      (make-child ftn ftn symbol number symbol)
;;
;; > direction
;;   A direction is either
;;      the symbol 'father or
;;      the symbol 'mother.
;;
;; > path
;;   A path is either
;;      empty or
;;     (cons s los)
;;   where s is a direction and los is a path.

;; TEMPLATE: ftn
;(define (consumes-a-ftn n)
;  (cond
;    [(empty? n) ...]
;    [else (consumes-a-ftn (child-father n))
;          (consumes-a-ftn (child-mother n))
;          (child-name n)
;          (child-dob n)
;          (child-eyes n)]))

;; VARIABLES
;;
;; Oldest Generation:
(define Carl (make-child empty empty 'Carl 1926 'green))
(define Bettina (make-child empty empty 'Bettina 1926 'green))

;; Middle Generation:
(define Adam (make-child Carl Bettina 'Adam 1950 'yellow))
(define Dave (make-child Carl Bettina 'Dave 1955 'black))
(define Eva (make-child Carl Bettina 'Eva 1965 'blue))
(define Fred (make-child empty empty 'Fred 1966 'pink))

;; Youngest Generation:
(define Gustav (make-child Fred Eva 'Gustav 1988 'brown))
(define Django (make-child empty Eva 'Django 1990 'grey))

(define Hal (make-child Gustav Eva 'Gustav 1988 'hazel))

;; to-blue-eyed-ancestor : ftn  ->  path or false
;; builds the path to a blue-eyed ancestor
(define (to-blue-eyed-ancestor node)
  (cond
    [(empty? node) false]
    [else
     (cond
       [(equal? 'blue (child-eyes node)) empty]
       [else
        (local [(define blue-father (to-blue-eyed-ancestor (child-father node)))
                (define blue-mother (to-blue-eyed-ancestor (child-mother node)))]
          (cond
            [(and (false? blue-father) (false? blue-mother))
             false]
            [(false? blue-father) 
             (cons 'mother blue-mother)]
            [else 
             (cons 'father blue-father)]))])]))

;; EXAMPLES AS TESTS
(check-expect (to-blue-eyed-ancestor empty) false)
(check-expect (to-blue-eyed-ancestor Eva) empty)
(check-expect (to-blue-eyed-ancestor Adam) false)
(check-expect (to-blue-eyed-ancestor Gustav) (list 'mother))
(check-expect (to-blue-eyed-ancestor Hal) (list 'father 'mother))