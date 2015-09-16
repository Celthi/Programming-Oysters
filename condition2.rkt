;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname racket3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require 2htdp/universe)
(define (create-rocket-scene.v2 height)
  (cond
    [(<= height 100)
     (place-image (circle 5 "solid" "red") 50 height (empty-scene 100 100))]
    [(> height 100) 
     (place-image (circle 5 "solid" "red") 50 100 (empty-scene 100 100))]
  )
)
(define (create-rocket-scene.v3 height)
  (cond
    [(<= height (- 100 (/ (image-height (circle 5 "solid" "red")) 2)))
         (place-image (circle 5 "solid" "red") 50 height (empty-scene 100 100))]
     [(> height (- 100 (/ (image-height (circle 5 "solid" "red")) 2)))
      (place-image (circle 5 "solid" "red") 50 (- 100 (/ (image-height (circle 5 "solid" "red")) 2)) 
                   (empty-scene 100 100))]
  )
)