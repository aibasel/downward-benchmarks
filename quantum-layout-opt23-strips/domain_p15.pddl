;; Tokyo/Local_compact/domain_5_mod5mils_65.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l1_l3_i2 l0_l3_i5 l4_l0_i8 l3_l4_i10 l3_l0_i11 l4_l0_i15 l3_l4_i16 l0_l3_i17 l2_l3_i19 l4_l2_i23 l3_l4_i25 l3_l2_i26 l4_l2_i30 l3_l4_i31 l2_l3_i32 l3_l4_i34  - gateid
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
(:action apply_cnot_l1_l3_i2
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l1_l3_i2) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i2)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l3 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l0_l3_i5
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l1_l3_i2)) (mapped l3 ?p2) (rcnot l0_l3_i5) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l3_i5)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l4_l0_i8
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l0_l3_i5)) (mapped l0 ?p2) (rcnot l4_l0_i8) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l0_i8)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l3_l4_i10
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l3_i5)) (mapped l3 ?p1) (not (rcnot l4_l0_i8)) (mapped l4 ?p2) (rcnot l3_l4_i10) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i10)))
)
(:action apply_cnot_l3_l0_i11
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i10)) (mapped l3 ?p1) (not (rcnot l4_l0_i8)) (mapped l0 ?p2) (rcnot l3_l0_i11) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l0_i11)))
)
(:action apply_cnot_l4_l0_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i10)) (mapped l4 ?p1) (not (rcnot l3_l0_i11)) (mapped l0 ?p2) (rcnot l4_l0_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l0_i15)))
)
(:action apply_cnot_l3_l4_i16
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l0_i11)) (mapped l3 ?p1) (not (rcnot l4_l0_i15)) (mapped l4 ?p2) (rcnot l3_l4_i16) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i16)))
)
(:action apply_cnot_l0_l3_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l0_i15)) (mapped l0 ?p1) (not (rcnot l3_l4_i16)) (mapped l3 ?p2) (rcnot l0_l3_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l3_i17)))
)
(:action apply_cnot_l2_l3_i19
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l0_l3_i17)) (mapped l3 ?p2) (rcnot l2_l3_i19) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i19)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l4_l2_i23
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i16)) (mapped l4 ?p1) (not (rcnot l2_l3_i19)) (mapped l2 ?p2) (rcnot l4_l2_i23) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i23)))
)
(:action apply_cnot_l3_l4_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i19)) (mapped l3 ?p1) (not (rcnot l4_l2_i23)) (mapped l4 ?p2) (rcnot l3_l4_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i25)))
)
(:action apply_cnot_l3_l2_i26
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i25)) (mapped l3 ?p1) (not (rcnot l4_l2_i23)) (mapped l2 ?p2) (rcnot l3_l2_i26) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l2_i26)))
)
(:action apply_cnot_l4_l2_i30
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i25)) (mapped l4 ?p1) (not (rcnot l3_l2_i26)) (mapped l2 ?p2) (rcnot l4_l2_i30) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i30)))
)
(:action apply_cnot_l3_l4_i31
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l2_i26)) (mapped l3 ?p1) (not (rcnot l4_l2_i30)) (mapped l4 ?p2) (rcnot l3_l4_i31) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i31)))
)
(:action apply_cnot_l2_l3_i32
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l2_i30)) (mapped l2 ?p1) (not (rcnot l3_l4_i31)) (mapped l3 ?p2) (rcnot l2_l3_i32) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i32)))
)
(:action apply_cnot_l3_l4_i34
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i32)) (mapped l3 ?p1) (not (rcnot l3_l4_i31)) (mapped l4 ?p2) (rcnot l3_l4_i34) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i34)))
)
)
