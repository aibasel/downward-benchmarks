;; Melbourne/Local_compact/domain_4_4mod5-v1_22.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l0_l2_i0 l1_l3_i2 l3_l2_i4 l4_l3_i8 l2_l4_i9 l2_l3_i11 l4_l3_i15 l2_l4_i16 l3_l2_i17 l2_l3_i18 l3_l4_i20  - gateid
  ;; logical qubits
  l0 l1 l2 l3 l4 - lqubit)
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
(:action apply_cnot_l0_l2_i0
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l0_l2_i0) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l2_i0)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l2 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l1_l3_i2
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l1_l3_i2) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i2)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l3 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l3_l2_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l3_i2)) (mapped l3 ?p1) (not (rcnot l0_l2_i0)) (mapped l2 ?p2) (rcnot l3_l2_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l2_i4)))
)
(:action apply_cnot_l4_l3_i8
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l3_l2_i4)) (mapped l3 ?p2) (rcnot l4_l3_i8) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l3_i8)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l2_l4_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l2_i4)) (mapped l2 ?p1) (not (rcnot l4_l3_i8)) (mapped l4 ?p2) (rcnot l2_l4_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i9)))
)
(:action apply_cnot_l2_l3_i11
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i9)) (mapped l2 ?p1) (not (rcnot l4_l3_i8)) (mapped l3 ?p2) (rcnot l2_l3_i11) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i11)))
)
(:action apply_cnot_l4_l3_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i9)) (mapped l4 ?p1) (not (rcnot l2_l3_i11)) (mapped l3 ?p2) (rcnot l4_l3_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l3_i15)))
)
(:action apply_cnot_l2_l4_i16
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i11)) (mapped l2 ?p1) (not (rcnot l4_l3_i15)) (mapped l4 ?p2) (rcnot l2_l4_i16) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i16)))
)
(:action apply_cnot_l3_l2_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l3_i15)) (mapped l3 ?p1) (not (rcnot l2_l4_i16)) (mapped l2 ?p2) (rcnot l3_l2_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l2_i17)))
)
(:action apply_cnot_l2_l3_i18
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l2_i17)) (mapped l2 ?p1) (not (rcnot l3_l2_i17)) (mapped l3 ?p2) (rcnot l2_l3_i18) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i18)))
)
(:action apply_cnot_l3_l4_i20
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i18)) (mapped l3 ?p1) (not (rcnot l2_l4_i16)) (mapped l4 ?p2) (rcnot l3_l4_i20) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i20)))
)
)
