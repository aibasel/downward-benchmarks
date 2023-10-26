;; Melbourne/Local_compact/domain_6_4gt13_92.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l2_l3_i3 l4_l0_i4 l4_l1_i8 l0_l4_i9 l1_l0_i10 l1_l4_i13 l0_l4_i16 l1_l0_i17 l4_l1_i21 l4_l2_i25 l3_l4_i27 l3_l2_i28 l4_l2_i32 l3_l4_i33 l2_l3_i34 l2_l3_i37 l4_l1_i40 l0_l4_i41 l1_l0_i42 l1_l4_i45 l0_l4_i48 l1_l0_i49 l4_l1_i51 l4_l2_i54 l3_l4_i56 l3_l2_i57 l4_l2_i61 l3_l4_i62 l2_l3_i63 l0_l4_i65  - gateid
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
(:action apply_cnot_l2_l3_i3
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l2_l3_i3) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i3)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l3 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l4_l0_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l4_l0_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l0_i4)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l0 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l4_l1_i8
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l0_i4)) (mapped l4 ?p1) (not (initialized ?p2)) (rcnot l4_l1_i8) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l1_i8)) (mapped l1 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l0_l4_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l0_i4)) (mapped l0 ?p1) (not (rcnot l4_l1_i8)) (mapped l4 ?p2) (rcnot l0_l4_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i9)))
)
(:action apply_cnot_l1_l0_i10
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l1_i8)) (mapped l1 ?p1) (not (rcnot l0_l4_i9)) (mapped l0 ?p2) (rcnot l1_l0_i10) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l0_i10)))
)
(:action apply_cnot_l1_l4_i13
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l0_i10)) (mapped l1 ?p1) (not (rcnot l0_l4_i9)) (mapped l4 ?p2) (rcnot l1_l4_i13) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i13)))
)
(:action apply_cnot_l0_l4_i16
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l0_i10)) (mapped l0 ?p1) (not (rcnot l1_l4_i13)) (mapped l4 ?p2) (rcnot l0_l4_i16) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i16)))
)
(:action apply_cnot_l1_l0_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i13)) (mapped l1 ?p1) (not (rcnot l0_l4_i16)) (mapped l0 ?p2) (rcnot l1_l0_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l0_i17)))
)
(:action apply_cnot_l4_l1_i21
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i16)) (mapped l4 ?p1) (not (rcnot l1_l0_i17)) (mapped l1 ?p2) (rcnot l4_l1_i21) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l1_i21)))
)
(:action apply_cnot_l4_l2_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l1_i21)) (mapped l4 ?p1) (not (rcnot l2_l3_i3)) (mapped l2 ?p2) (rcnot l4_l2_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i25)))
)
(:action apply_cnot_l3_l4_i27
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i3)) (mapped l3 ?p1) (not (rcnot l4_l2_i25)) (mapped l4 ?p2) (rcnot l3_l4_i27) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i27)))
)
(:action apply_cnot_l3_l2_i28
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i27)) (mapped l3 ?p1) (not (rcnot l4_l2_i25)) (mapped l2 ?p2) (rcnot l3_l2_i28) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l2_i28)))
)
(:action apply_cnot_l4_l2_i32
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i27)) (mapped l4 ?p1) (not (rcnot l3_l2_i28)) (mapped l2 ?p2) (rcnot l4_l2_i32) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i32)))
)
(:action apply_cnot_l3_l4_i33
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l2_i28)) (mapped l3 ?p1) (not (rcnot l4_l2_i32)) (mapped l4 ?p2) (rcnot l3_l4_i33) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i33)))
)
(:action apply_cnot_l2_l3_i34
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l2_i32)) (mapped l2 ?p1) (not (rcnot l3_l4_i33)) (mapped l3 ?p2) (rcnot l2_l3_i34) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i34)))
)
(:action apply_cnot_l2_l3_i37
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i34)) (mapped l2 ?p1) (not (rcnot l2_l3_i34)) (mapped l3 ?p2) (rcnot l2_l3_i37) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i37)))
)
(:action apply_cnot_l4_l1_i40
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i33)) (mapped l4 ?p1) (not (rcnot l4_l1_i21)) (mapped l1 ?p2) (rcnot l4_l1_i40) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l1_i40)))
)
(:action apply_cnot_l0_l4_i41
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l0_i17)) (mapped l0 ?p1) (not (rcnot l4_l1_i40)) (mapped l4 ?p2) (rcnot l0_l4_i41) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i41)))
)
(:action apply_cnot_l1_l0_i42
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l1_i40)) (mapped l1 ?p1) (not (rcnot l0_l4_i41)) (mapped l0 ?p2) (rcnot l1_l0_i42) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l0_i42)))
)
(:action apply_cnot_l1_l4_i45
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l0_i42)) (mapped l1 ?p1) (not (rcnot l0_l4_i41)) (mapped l4 ?p2) (rcnot l1_l4_i45) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i45)))
)
(:action apply_cnot_l0_l4_i48
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l0_i42)) (mapped l0 ?p1) (not (rcnot l1_l4_i45)) (mapped l4 ?p2) (rcnot l0_l4_i48) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i48)))
)
(:action apply_cnot_l1_l0_i49
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i45)) (mapped l1 ?p1) (not (rcnot l0_l4_i48)) (mapped l0 ?p2) (rcnot l1_l0_i49) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l0_i49)))
)
(:action apply_cnot_l4_l1_i51
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i48)) (mapped l4 ?p1) (not (rcnot l1_l0_i49)) (mapped l1 ?p2) (rcnot l4_l1_i51) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l1_i51)))
)
(:action apply_cnot_l4_l2_i54
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l1_i51)) (mapped l4 ?p1) (not (rcnot l2_l3_i37)) (mapped l2 ?p2) (rcnot l4_l2_i54) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i54)))
)
(:action apply_cnot_l3_l4_i56
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i37)) (mapped l3 ?p1) (not (rcnot l4_l2_i54)) (mapped l4 ?p2) (rcnot l3_l4_i56) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i56)))
)
(:action apply_cnot_l3_l2_i57
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i56)) (mapped l3 ?p1) (not (rcnot l4_l2_i54)) (mapped l2 ?p2) (rcnot l3_l2_i57) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l2_i57)))
)
(:action apply_cnot_l4_l2_i61
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i56)) (mapped l4 ?p1) (not (rcnot l3_l2_i57)) (mapped l2 ?p2) (rcnot l4_l2_i61) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i61)))
)
(:action apply_cnot_l3_l4_i62
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l2_i57)) (mapped l3 ?p1) (not (rcnot l4_l2_i61)) (mapped l4 ?p2) (rcnot l3_l4_i62) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i62)))
)
(:action apply_cnot_l2_l3_i63
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l2_i61)) (mapped l2 ?p1) (not (rcnot l3_l4_i62)) (mapped l3 ?p2) (rcnot l2_l3_i63) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i63)))
)
(:action apply_cnot_l0_l4_i65
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l0_i49)) (mapped l0 ?p1) (not (rcnot l3_l4_i62)) (mapped l4 ?p2) (rcnot l0_l4_i65) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i65)))
)
)
