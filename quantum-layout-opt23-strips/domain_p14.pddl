;; Tokyo/Local_compact/domain_2_adder.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l0_l1_i4 l2_l3_i6 l2_l3_i9 l1_l2_i10 l3_l0_i11 l0_l1_i12 l0_l1_i15 l2_l3_i16 l2_l3_i19 l3_l0_i21  - gateid
  ;; logical qubits
  l0 l1 l2 l3 - lqubit)
(:predicates    (occupied_pqubit ?p - pqubit)
		(initialized ?p - pqubit)
		(mapped ?l - lqubit ?p - pqubit)
		(connected ?p1 - pqubit ?p2 - pqubit)
		;; required cnot(control_gate,target_gate) at some depth
		(rcnot ?g - gateid)
)
(:action swap
:parameters (?l1 - lqubit ?l2 - lqubit ?p1 - pqubit ?p2 - pqubit)
:precondition (and  (mapped ?l1 ?p1) (mapped ?l2 ?p2) (connected ?p1 ?p2))
:effect       (and (not (mapped ?l1 ?p1)) (not (mapped ?l2 ?p2)) (mapped ?l1 ?p2) (mapped ?l2 ?p1))
)
(:action swap-ancilary
:parameters (?l1 - lqubit ?p1 - pqubit ?p2 - pqubit)
:precondition (and  (mapped ?l1 ?p1) (not (occupied_pqubit ?p2)) (connected ?p1 ?p2))
:effect       (and (not (mapped ?l1 ?p1)) (not (occupied_pqubit ?p1)) (mapped ?l1 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l0_l1_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l0_l1_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l1_i4)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l1 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l2_l3_i6
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l2_l3_i6) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i6)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l3 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l2_l3_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i6)) (mapped l2 ?p1) (not (rcnot l2_l3_i6)) (mapped l3 ?p2) (rcnot l2_l3_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i9)))
)
(:action apply_cnot_l1_l2_i10
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l1_i4)) (mapped l1 ?p1) (not (rcnot l2_l3_i9)) (mapped l2 ?p2) (rcnot l1_l2_i10) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i10)))
)
(:action apply_cnot_l3_l0_i11
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i9)) (mapped l3 ?p1) (not (rcnot l0_l1_i4)) (mapped l0 ?p2) (rcnot l3_l0_i11) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l0_i11)))
)
(:action apply_cnot_l0_l1_i12
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l0_i11)) (mapped l0 ?p1) (not (rcnot l1_l2_i10)) (mapped l1 ?p2) (rcnot l0_l1_i12) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l1_i12)))
)
(:action apply_cnot_l0_l1_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l1_i12)) (mapped l0 ?p1) (not (rcnot l0_l1_i12)) (mapped l1 ?p2) (rcnot l0_l1_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l1_i15)))
)
(:action apply_cnot_l2_l3_i16
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i10)) (mapped l2 ?p1) (not (rcnot l3_l0_i11)) (mapped l3 ?p2) (rcnot l2_l3_i16) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i16)))
)
(:action apply_cnot_l2_l3_i19
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i16)) (mapped l2 ?p1) (not (rcnot l2_l3_i16)) (mapped l3 ?p2) (rcnot l2_l3_i19) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i19)))
)
(:action apply_cnot_l3_l0_i21
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i19)) (mapped l3 ?p1) (not (rcnot l0_l1_i15)) (mapped l0 ?p2) (rcnot l3_l0_i21) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l0_i21)))
)
)
