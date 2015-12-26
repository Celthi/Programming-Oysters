;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname design_world_program) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; WorldState : a data definition of your choice 
; a collection of data that represents the state of the world 
 
; render : 
;   WorldState -> Image 
; big-bang evaluates (render cw) to obtain image of
; current world cw when needed
 
; clock-tick-handler : 
;   WorldState -> WorldState
; for each tick of the clock, big-bang evaluates
; (clock-tick-handler cw) for current world cw to obtain
; new world  
 
; key-stroke-handler : 
;   WorldState String -> WorldState 
; for each key stroke, big-bang evaluates
; (key-stroke-handler cw ke) for current world cw and
; key stroke ke to obtain new world  
 
; mouse-event-handler : 
;   WorldState Number Number String -> WorldState 
; for each key stroke, big-bang evaluates
; (mouse-event-handler cw x y me) for current world cw,
; coordinates x and y, and mouse event me to
; obtain new world 
 
; end? : 
;   WorldState -> Boolean
; after an event is processed, big-bang evaluates (end? cw) 
; for current world cw to determine whether the program stops

(define WIDTH-OF-WORLD 200)
 
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

(require 2htdp/universe)
(require 2htdp/image)
(define WHEEL (circle WHEEL-RADIUS "solid" "black"))
(define SPACE (rectangle WHEEL-RADIUS WHEEL-RADIUS "solid" "white"))
(define BOTH-WHEELS (beside WHEEL SPACE WHEEL))

; WorldState is a Number
; interpretation the number of pixels between the left border and the car


(define BACKGROUND (empty-scene WIDTH-OF-WORLD 50))
; WorldState -> Image
; places the image of the car x pixels from the left margin of
; the BACKGROUND image 
;(define (render x)
 ; BACKGROUND)
; WorldState -> Image
; places the car into a scene according to the given world state 
(define CAR-BODY (rectangle (* WHEEL-DISTANCE 2) WHEEL-RADIUS "solid" "red"))
(define CAR-FULL (above (rectangle (* WHEEL-DISTANCE 1) WHEEL-RADIUS "solid" "red") CAR-BODY))
(define CAR (above CAR-FULL BOTH-WHEELS))
(define  Y-CAR 10)
(define (render ws)
  (place-image CAR ws Y-CAR BACKGROUND))
 
; WorldState -> WorldState
; adds 3 to x to move the car right 
(define (tock ws)
  (+ ws 1))


; WorldState -> WorldState
; launches the program from some initial state 
(define (main ws)
   (big-bang ws
             [on-tick tock]
             [to-draw render]))

(main 0)