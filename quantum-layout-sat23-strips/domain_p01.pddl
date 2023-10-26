;; Melbourne/Local_compact/domain_8_barenco_tof_4.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l5_l6_i3 l3_l6_i5 l5_l6_i7 l3_l5_i8 l3_l5_i10 l4_l5_i12 l2_l5_i14 l4_l5_i16 l2_l4_i17 l2_l4_i19 l1_l4_i21 l0_l4_i23 l1_l4_i25 l0_l4_i27 l4_l5_i30 l2_l5_i32 l4_l5_i34 l5_l6_i36 l3_l6_i38 l5_l6_i40 l3_l5_i41 l3_l5_i43 l4_l5_i46 l2_l5_i48 l4_l5_i50 l1_l4_i52 l0_l4_i54 l1_l4_i56 l0_l4_i58 l4_l5_i61 l2_l5_i63 l4_l5_i65 l2_l4_i66 l2_l4_i68  - gateid
  ;; logical qubits
  l0 l1 l2 l3 l4 l5 l6 - lqubit)
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
(:action apply_cnot_l5_l6_i3
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l5_l6_i3) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i3)) (mapped l5 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l6 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l3_l6_i5
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l5_l6_i3)) (mapped l6 ?p2) (rcnot l3_l6_i5) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i5)) (mapped l3 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l5_l6_i7
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i3)) (mapped l5 ?p1) (not (rcnot l3_l6_i5)) (mapped l6 ?p2) (rcnot l5_l6_i7) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i7)))
)
(:action apply_cnot_l3_l5_i8
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i5)) (mapped l3 ?p1) (not (rcnot l5_l6_i7)) (mapped l5 ?p2) (rcnot l3_l5_i8) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l5_i8)))
)
(:action apply_cnot_l3_l5_i10
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l5_i8)) (mapped l3 ?p1) (not (rcnot l3_l5_i8)) (mapped l5 ?p2) (rcnot l3_l5_i10) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l5_i10)))
)
(:action apply_cnot_l4_l5_i12
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l3_l5_i10)) (mapped l5 ?p2) (rcnot l4_l5_i12) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i12)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l2_l5_i14
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l4_l5_i12)) (mapped l5 ?p2) (rcnot l2_l5_i14) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i14)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l4_l5_i16
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i12)) (mapped l4 ?p1) (not (rcnot l2_l5_i14)) (mapped l5 ?p2) (rcnot l4_l5_i16) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i16)))
)
(:action apply_cnot_l2_l4_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i14)) (mapped l2 ?p1) (not (rcnot l4_l5_i16)) (mapped l4 ?p2) (rcnot l2_l4_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i17)))
)
(:action apply_cnot_l2_l4_i19
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i17)) (mapped l2 ?p1) (not (rcnot l2_l4_i17)) (mapped l4 ?p2) (rcnot l2_l4_i19) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i19)))
)
(:action apply_cnot_l1_l4_i21
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l2_l4_i19)) (mapped l4 ?p2) (rcnot l1_l4_i21) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i21)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l0_l4_i23
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l1_l4_i21)) (mapped l4 ?p2) (rcnot l0_l4_i23) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i23)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l1_l4_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i21)) (mapped l1 ?p1) (not (rcnot l0_l4_i23)) (mapped l4 ?p2) (rcnot l1_l4_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i25)))
)
(:action apply_cnot_l0_l4_i27
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i23)) (mapped l0 ?p1) (not (rcnot l1_l4_i25)) (mapped l4 ?p2) (rcnot l0_l4_i27) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i27)))
)
(:action apply_cnot_l4_l5_i30
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i27)) (mapped l4 ?p1) (not (rcnot l4_l5_i16)) (mapped l5 ?p2) (rcnot l4_l5_i30) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i30)))
)
(:action apply_cnot_l2_l5_i32
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i19)) (mapped l2 ?p1) (not (rcnot l4_l5_i30)) (mapped l5 ?p2) (rcnot l2_l5_i32) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i32)))
)
(:action apply_cnot_l4_l5_i34
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i30)) (mapped l4 ?p1) (not (rcnot l2_l5_i32)) (mapped l5 ?p2) (rcnot l4_l5_i34) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i34)))
)
(:action apply_cnot_l5_l6_i36
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i34)) (mapped l5 ?p1) (not (rcnot l5_l6_i7)) (mapped l6 ?p2) (rcnot l5_l6_i36) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i36)))
)
(:action apply_cnot_l3_l6_i38
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l5_i10)) (mapped l3 ?p1) (not (rcnot l5_l6_i36)) (mapped l6 ?p2) (rcnot l3_l6_i38) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i38)))
)
(:action apply_cnot_l5_l6_i40
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i36)) (mapped l5 ?p1) (not (rcnot l3_l6_i38)) (mapped l6 ?p2) (rcnot l5_l6_i40) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i40)))
)
(:action apply_cnot_l3_l5_i41
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i38)) (mapped l3 ?p1) (not (rcnot l5_l6_i40)) (mapped l5 ?p2) (rcnot l3_l5_i41) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l5_i41)))
)
(:action apply_cnot_l3_l5_i43
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l5_i41)) (mapped l3 ?p1) (not (rcnot l3_l5_i41)) (mapped l5 ?p2) (rcnot l3_l5_i43) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l5_i43)))
)
(:action apply_cnot_l4_l5_i46
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i34)) (mapped l4 ?p1) (not (rcnot l3_l5_i43)) (mapped l5 ?p2) (rcnot l4_l5_i46) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i46)))
)
(:action apply_cnot_l2_l5_i48
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i32)) (mapped l2 ?p1) (not (rcnot l4_l5_i46)) (mapped l5 ?p2) (rcnot l2_l5_i48) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i48)))
)
(:action apply_cnot_l4_l5_i50
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i46)) (mapped l4 ?p1) (not (rcnot l2_l5_i48)) (mapped l5 ?p2) (rcnot l4_l5_i50) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i50)))
)
(:action apply_cnot_l1_l4_i52
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i25)) (mapped l1 ?p1) (not (rcnot l4_l5_i50)) (mapped l4 ?p2) (rcnot l1_l4_i52) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i52)))
)
(:action apply_cnot_l0_l4_i54
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i27)) (mapped l0 ?p1) (not (rcnot l1_l4_i52)) (mapped l4 ?p2) (rcnot l0_l4_i54) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i54)))
)
(:action apply_cnot_l1_l4_i56
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i52)) (mapped l1 ?p1) (not (rcnot l0_l4_i54)) (mapped l4 ?p2) (rcnot l1_l4_i56) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i56)))
)
(:action apply_cnot_l0_l4_i58
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i54)) (mapped l0 ?p1) (not (rcnot l1_l4_i56)) (mapped l4 ?p2) (rcnot l0_l4_i58) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i58)))
)
(:action apply_cnot_l4_l5_i61
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i58)) (mapped l4 ?p1) (not (rcnot l4_l5_i50)) (mapped l5 ?p2) (rcnot l4_l5_i61) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i61)))
)
(:action apply_cnot_l2_l5_i63
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i48)) (mapped l2 ?p1) (not (rcnot l4_l5_i61)) (mapped l5 ?p2) (rcnot l2_l5_i63) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i63)))
)
(:action apply_cnot_l4_l5_i65
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i61)) (mapped l4 ?p1) (not (rcnot l2_l5_i63)) (mapped l5 ?p2) (rcnot l4_l5_i65) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i65)))
)
(:action apply_cnot_l2_l4_i66
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i63)) (mapped l2 ?p1) (not (rcnot l4_l5_i65)) (mapped l4 ?p2) (rcnot l2_l4_i66) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i66)))
)
(:action apply_cnot_l2_l4_i68
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i66)) (mapped l2 ?p1) (not (rcnot l2_l4_i66)) (mapped l4 ?p2) (rcnot l2_l4_i68) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i68)))
)
)
