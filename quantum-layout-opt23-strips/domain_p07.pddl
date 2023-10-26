;; Melbourne_non_bidirectional/Local_compact/domain_1_or.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l2_l1_i4 l0_l1_i6 l2_l0_i10 l2_l1_i12 l2_l0_i14 l0_l1_i15  - gateid
  ;; logical qubits
  l0 l1 l2 - lqubit)
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
(:action apply_cnot_l2_l1_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l2_l1_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l1_i4)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l1 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l0_l1_i6
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l2_l1_i4)) (mapped l1 ?p2) (rcnot l0_l1_i6) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l1_i6)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l2_l0_i10
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l1_i4)) (mapped l2 ?p1) (not (rcnot l0_l1_i6)) (mapped l0 ?p2) (rcnot l2_l0_i10) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l0_i10)))
)
(:action apply_cnot_l2_l1_i12
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l0_i10)) (mapped l2 ?p1) (not (rcnot l0_l1_i6)) (mapped l1 ?p2) (rcnot l2_l1_i12) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l1_i12)))
)
(:action apply_cnot_l2_l0_i14
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l1_i12)) (mapped l2 ?p1) (not (rcnot l2_l0_i10)) (mapped l0 ?p2) (rcnot l2_l0_i14) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l0_i14)))
)
(:action apply_cnot_l0_l1_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l0_i14)) (mapped l0 ?p1) (not (rcnot l2_l1_i12)) (mapped l1 ?p2) (rcnot l0_l1_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l1_i15)))
)
)
