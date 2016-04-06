#lang racket

(define (countChange money coins)
  (if (= money 0)
      1
      (if (or (= (length coins) 0) (< money 0))
              0
              (+ (countChange money (rest coins)) (countChange (- money (first coins)) coins)))))
