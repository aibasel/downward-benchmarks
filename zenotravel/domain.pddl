(define (domain zeno-travel)
(:predicates
	 (at ?x ?c) (in ?p ?a) (fuel-level ?a ?l) (next ?l1 ?l2)(aircraft ?p) (person ?x) (city ?x) (flevel ?x) )
(:action board
 :parameters ( ?p ?a ?c)
 :precondition
	(and (person ?p) (aircraft ?a) (city ?c)  (at ?p ?c) (at ?a ?c))
 :effect
	(and (in ?p ?a) (not (at ?p ?c))))

(:action debark
 :parameters ( ?p ?a ?c)
 :precondition
	(and (person ?p) (aircraft ?a) (city ?c)  (in ?p ?a) (at ?a ?c))
 :effect
	(and (at ?p ?c) (not (in ?p ?a))))

(:action fly
 :parameters ( ?a ?c1 ?c2 ?l1 ?l2)
 :precondition
	(and (aircraft ?a) (city ?c1) (city ?c2) (flevel ?l1) (flevel ?l2)  (at ?a ?c1) (fuel-level ?a ?l1) (next ?l2 ?l1))
 :effect
	(and (at ?a ?c2) (fuel-level ?a ?l2) (not (at ?a ?c1)) (not (fuel-level ?a ?l1))))

(:action zoom
 :parameters ( ?a ?c1 ?c2 ?l1 ?l2 ?l3)
 :precondition
	(and (aircraft ?a) (city ?c1) (city ?c2) (flevel ?l1) (flevel ?l2) (flevel ?l3)  (at ?a ?c1) (fuel-level ?a ?l1) (next ?l2 ?l1) (next ?l3 ?l2))
 :effect
	(and (at ?a ?c2) (fuel-level ?a ?l3) (not (at ?a ?c1)) (not (fuel-level ?a ?l1))))

(:action refuel
 :parameters ( ?a ?c ?l ?l1)
 :precondition
	(and (aircraft?a) (city ?c) (flevel ?l) (flevel ?l1)  (fuel-level ?a ?l) (next ?l ?l1) (at ?a ?c))
 :effect
	(and (fuel-level ?a ?l1) (not (fuel-level ?a ?l))))

)
