#!/usr/bin/scm

#|*********************************************************************
If we list all the natural numbers below 10 that are multiples 
of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
*********************************************************************|#

(define arithmetic-progression (lambda (n)
	(/ (* (+ n 1) n) 2)
))

(define sum-divisible-by (lambda (n limit)
	(* n (arithmetic-progression (quotient (- limit 1) n)))
))

(define solution (lambda (coprime1 coprime2 limit) 
	(- (+ (sum-divisible-by coprime1 limit) (sum-divisible-by coprime2 limit) ) (sum-divisible-by (* coprime1 coprime2) limit))
))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(print (solution 3 5 1000)) ; 233168
;(print (solution 7 13 1000)) ; 104104
;(print (solution 8 9 1000)) ; 111392

(exit)
