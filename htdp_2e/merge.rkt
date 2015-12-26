;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname merge) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;;merge two ascended sorted list
;;merge: list1 list2 -> sorted-list
;;
(define (merge list1 list2)
  (cond
    [(empty? list1) list2]
    [(empty? list2) list1]
    [(> (first list1) (first list2)) (cons (first list2) (merge list1 (rest list2)))]
    [(< (first list1) (first list2)) (merge (rest list1) (cons (first list1) list2))]
    [(= (first list1) (first list2)) (cons (first list1) (cons (first list2) (merge (rest list1) (rest list2))))]
    ))
(merge (list 1 3 4 9) (list 0 2 4 6 8))

