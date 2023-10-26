;; Melbourne/Local_compact/domain_11_barenco_tof_5.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l7_l8_i4 l4_l8_i6 l7_l8_i8 l4_l7_i9 l4_l7_i11 l6_l7_i13 l3_l7_i15 l6_l7_i17 l3_l6_i18 l3_l6_i20 l5_l6_i22 l2_l6_i24 l5_l6_i26 l2_l5_i27 l2_l5_i29 l1_l5_i31 l0_l5_i33 l1_l5_i35 l0_l5_i37 l5_l6_i40 l2_l6_i42 l5_l6_i44 l6_l7_i46 l3_l7_i48 l6_l7_i50 l7_l8_i52 l4_l8_i54 l7_l8_i56 l4_l7_i57 l4_l7_i59 l6_l7_i62 l3_l7_i64 l6_l7_i66 l5_l6_i68 l2_l6_i70 l5_l6_i72 l1_l5_i74 l0_l5_i76 l1_l5_i78 l0_l5_i80 l5_l6_i83 l2_l6_i85 l5_l6_i87 l2_l5_i88 l2_l5_i90 l6_l7_i93 l3_l7_i95 l6_l7_i97 l3_l6_i98 l3_l6_i100  - gateid
  ;; logical qubits
  l0 l1 l2 l3 l4 l5 l6 l7 l8 - lqubit)
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
(:action apply_cnot_l7_l8_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l7_l8_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i4)) (mapped l7 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l8 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l4_l8_i6
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l7_l8_i4)) (mapped l8 ?p2) (rcnot l4_l8_i6) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l8_i6)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l7_l8_i8
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l8_i4)) (mapped l7 ?p1) (not (rcnot l4_l8_i6)) (mapped l8 ?p2) (rcnot l7_l8_i8) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i8)))
)
(:action apply_cnot_l4_l7_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l8_i6)) (mapped l4 ?p1) (not (rcnot l7_l8_i8)) (mapped l7 ?p2) (rcnot l4_l7_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l7_i9)))
)
(:action apply_cnot_l4_l7_i11
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l7_i9)) (mapped l4 ?p1) (not (rcnot l4_l7_i9)) (mapped l7 ?p2) (rcnot l4_l7_i11) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l7_i11)))
)
(:action apply_cnot_l6_l7_i13
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l4_l7_i11)) (mapped l7 ?p2) (rcnot l6_l7_i13) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i13)) (mapped l6 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l3_l7_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l6_l7_i13)) (mapped l7 ?p2) (rcnot l3_l7_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i15)) (mapped l3 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l6_l7_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i13)) (mapped l6 ?p1) (not (rcnot l3_l7_i15)) (mapped l7 ?p2) (rcnot l6_l7_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i17)))
)
(:action apply_cnot_l3_l6_i18
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i15)) (mapped l3 ?p1) (not (rcnot l6_l7_i17)) (mapped l6 ?p2) (rcnot l3_l6_i18) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i18)))
)
(:action apply_cnot_l3_l6_i20
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i18)) (mapped l3 ?p1) (not (rcnot l3_l6_i18)) (mapped l6 ?p2) (rcnot l3_l6_i20) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i20)))
)
(:action apply_cnot_l5_l6_i22
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l3_l6_i20)) (mapped l6 ?p2) (rcnot l5_l6_i22) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i22)) (mapped l5 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l2_l6_i24
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l5_l6_i22)) (mapped l6 ?p2) (rcnot l2_l6_i24) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i24)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l5_l6_i26
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i22)) (mapped l5 ?p1) (not (rcnot l2_l6_i24)) (mapped l6 ?p2) (rcnot l5_l6_i26) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i26)))
)
(:action apply_cnot_l2_l5_i27
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i24)) (mapped l2 ?p1) (not (rcnot l5_l6_i26)) (mapped l5 ?p2) (rcnot l2_l5_i27) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i27)))
)
(:action apply_cnot_l2_l5_i29
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i27)) (mapped l2 ?p1) (not (rcnot l2_l5_i27)) (mapped l5 ?p2) (rcnot l2_l5_i29) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i29)))
)
(:action apply_cnot_l1_l5_i31
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l2_l5_i29)) (mapped l5 ?p2) (rcnot l1_l5_i31) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i31)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l0_l5_i33
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l1_l5_i31)) (mapped l5 ?p2) (rcnot l0_l5_i33) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i33)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l1_l5_i35
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l5_i31)) (mapped l1 ?p1) (not (rcnot l0_l5_i33)) (mapped l5 ?p2) (rcnot l1_l5_i35) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i35)))
)
(:action apply_cnot_l0_l5_i37
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i33)) (mapped l0 ?p1) (not (rcnot l1_l5_i35)) (mapped l5 ?p2) (rcnot l0_l5_i37) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i37)))
)
(:action apply_cnot_l5_l6_i40
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i37)) (mapped l5 ?p1) (not (rcnot l5_l6_i26)) (mapped l6 ?p2) (rcnot l5_l6_i40) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i40)))
)
(:action apply_cnot_l2_l6_i42
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i29)) (mapped l2 ?p1) (not (rcnot l5_l6_i40)) (mapped l6 ?p2) (rcnot l2_l6_i42) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i42)))
)
(:action apply_cnot_l5_l6_i44
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i40)) (mapped l5 ?p1) (not (rcnot l2_l6_i42)) (mapped l6 ?p2) (rcnot l5_l6_i44) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i44)))
)
(:action apply_cnot_l6_l7_i46
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i44)) (mapped l6 ?p1) (not (rcnot l6_l7_i17)) (mapped l7 ?p2) (rcnot l6_l7_i46) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i46)))
)
(:action apply_cnot_l3_l7_i48
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i20)) (mapped l3 ?p1) (not (rcnot l6_l7_i46)) (mapped l7 ?p2) (rcnot l3_l7_i48) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i48)))
)
(:action apply_cnot_l6_l7_i50
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i46)) (mapped l6 ?p1) (not (rcnot l3_l7_i48)) (mapped l7 ?p2) (rcnot l6_l7_i50) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i50)))
)
(:action apply_cnot_l7_l8_i52
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i50)) (mapped l7 ?p1) (not (rcnot l7_l8_i8)) (mapped l8 ?p2) (rcnot l7_l8_i52) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i52)))
)
(:action apply_cnot_l4_l8_i54
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l7_i11)) (mapped l4 ?p1) (not (rcnot l7_l8_i52)) (mapped l8 ?p2) (rcnot l4_l8_i54) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l8_i54)))
)
(:action apply_cnot_l7_l8_i56
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l8_i52)) (mapped l7 ?p1) (not (rcnot l4_l8_i54)) (mapped l8 ?p2) (rcnot l7_l8_i56) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i56)))
)
(:action apply_cnot_l4_l7_i57
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l8_i54)) (mapped l4 ?p1) (not (rcnot l7_l8_i56)) (mapped l7 ?p2) (rcnot l4_l7_i57) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l7_i57)))
)
(:action apply_cnot_l4_l7_i59
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l7_i57)) (mapped l4 ?p1) (not (rcnot l4_l7_i57)) (mapped l7 ?p2) (rcnot l4_l7_i59) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l7_i59)))
)
(:action apply_cnot_l6_l7_i62
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i50)) (mapped l6 ?p1) (not (rcnot l4_l7_i59)) (mapped l7 ?p2) (rcnot l6_l7_i62) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i62)))
)
(:action apply_cnot_l3_l7_i64
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i48)) (mapped l3 ?p1) (not (rcnot l6_l7_i62)) (mapped l7 ?p2) (rcnot l3_l7_i64) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i64)))
)
(:action apply_cnot_l6_l7_i66
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i62)) (mapped l6 ?p1) (not (rcnot l3_l7_i64)) (mapped l7 ?p2) (rcnot l6_l7_i66) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i66)))
)
(:action apply_cnot_l5_l6_i68
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i44)) (mapped l5 ?p1) (not (rcnot l6_l7_i66)) (mapped l6 ?p2) (rcnot l5_l6_i68) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i68)))
)
(:action apply_cnot_l2_l6_i70
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i42)) (mapped l2 ?p1) (not (rcnot l5_l6_i68)) (mapped l6 ?p2) (rcnot l2_l6_i70) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i70)))
)
(:action apply_cnot_l5_l6_i72
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i68)) (mapped l5 ?p1) (not (rcnot l2_l6_i70)) (mapped l6 ?p2) (rcnot l5_l6_i72) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i72)))
)
(:action apply_cnot_l1_l5_i74
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l5_i35)) (mapped l1 ?p1) (not (rcnot l5_l6_i72)) (mapped l5 ?p2) (rcnot l1_l5_i74) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i74)))
)
(:action apply_cnot_l0_l5_i76
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i37)) (mapped l0 ?p1) (not (rcnot l1_l5_i74)) (mapped l5 ?p2) (rcnot l0_l5_i76) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i76)))
)
(:action apply_cnot_l1_l5_i78
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l5_i74)) (mapped l1 ?p1) (not (rcnot l0_l5_i76)) (mapped l5 ?p2) (rcnot l1_l5_i78) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i78)))
)
(:action apply_cnot_l0_l5_i80
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i76)) (mapped l0 ?p1) (not (rcnot l1_l5_i78)) (mapped l5 ?p2) (rcnot l0_l5_i80) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i80)))
)
(:action apply_cnot_l5_l6_i83
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i80)) (mapped l5 ?p1) (not (rcnot l5_l6_i72)) (mapped l6 ?p2) (rcnot l5_l6_i83) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i83)))
)
(:action apply_cnot_l2_l6_i85
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i70)) (mapped l2 ?p1) (not (rcnot l5_l6_i83)) (mapped l6 ?p2) (rcnot l2_l6_i85) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i85)))
)
(:action apply_cnot_l5_l6_i87
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i83)) (mapped l5 ?p1) (not (rcnot l2_l6_i85)) (mapped l6 ?p2) (rcnot l5_l6_i87) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i87)))
)
(:action apply_cnot_l2_l5_i88
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i85)) (mapped l2 ?p1) (not (rcnot l5_l6_i87)) (mapped l5 ?p2) (rcnot l2_l5_i88) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i88)))
)
(:action apply_cnot_l2_l5_i90
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i88)) (mapped l2 ?p1) (not (rcnot l2_l5_i88)) (mapped l5 ?p2) (rcnot l2_l5_i90) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i90)))
)
(:action apply_cnot_l6_l7_i93
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i87)) (mapped l6 ?p1) (not (rcnot l6_l7_i66)) (mapped l7 ?p2) (rcnot l6_l7_i93) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i93)))
)
(:action apply_cnot_l3_l7_i95
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i64)) (mapped l3 ?p1) (not (rcnot l6_l7_i93)) (mapped l7 ?p2) (rcnot l3_l7_i95) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i95)))
)
(:action apply_cnot_l6_l7_i97
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i93)) (mapped l6 ?p1) (not (rcnot l3_l7_i95)) (mapped l7 ?p2) (rcnot l6_l7_i97) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i97)))
)
(:action apply_cnot_l3_l6_i98
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i95)) (mapped l3 ?p1) (not (rcnot l6_l7_i97)) (mapped l6 ?p2) (rcnot l3_l6_i98) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i98)))
)
(:action apply_cnot_l3_l6_i100
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i98)) (mapped l3 ?p1) (not (rcnot l3_l6_i98)) (mapped l6 ?p2) (rcnot l3_l6_i100) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i100)))
)
)
