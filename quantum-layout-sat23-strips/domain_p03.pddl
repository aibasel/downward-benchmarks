;; Melbourne/Local_compact/domain_10_mod_mult_55.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l0_l7_i2 l2_l7_i4 l0_l7_i6 l2_l7_i8 l2_l0_i9 l2_l0_i12 l7_l6_i15 l1_l6_i17 l7_l6_i19 l1_l6_i21 l1_l7_i22 l6_l5_i25 l6_l3_i26 l1_l7_i30 l2_l8_i33 l0_l8_i35 l2_l8_i37 l0_l8_i39 l8_l7_i42 l7_l3_i43 l8_l6_i45 l1_l6_i47 l8_l6_i49 l1_l6_i51 l1_l8_i52 l6_l4_i55 l1_l8_i57 l1_l3_i58 l7_l3_i60 l1_l3_i62 l5_l8_i66 l1_l5_i68 l7_l5_i70 l1_l5_i72 l7_l5_i74 l2_l8_i79 l0_l8_i81 l2_l8_i83 l0_l8_i86 l5_l8_i90  - gateid
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
(:action apply_cnot_l0_l7_i2
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l0_l7_i2) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l7_i2)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l7 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l2_l7_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l0_l7_i2)) (mapped l7 ?p2) (rcnot l2_l7_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l7_i4)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l0_l7_i6
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l7_i2)) (mapped l0 ?p1) (not (rcnot l2_l7_i4)) (mapped l7 ?p2) (rcnot l0_l7_i6) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l7_i6)))
)
(:action apply_cnot_l2_l7_i8
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l7_i4)) (mapped l2 ?p1) (not (rcnot l0_l7_i6)) (mapped l7 ?p2) (rcnot l2_l7_i8) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l7_i8)))
)
(:action apply_cnot_l2_l0_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l7_i8)) (mapped l2 ?p1) (not (rcnot l0_l7_i6)) (mapped l0 ?p2) (rcnot l2_l0_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l0_i9)))
)
(:action apply_cnot_l2_l0_i12
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l0_i9)) (mapped l2 ?p1) (not (rcnot l2_l0_i9)) (mapped l0 ?p2) (rcnot l2_l0_i12) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l0_i12)))
)
(:action apply_cnot_l7_l6_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l7_i8)) (mapped l7 ?p1) (not (initialized ?p2)) (rcnot l7_l6_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l6_i15)) (mapped l6 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l1_l6_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l7_l6_i15)) (mapped l6 ?p2) (rcnot l1_l6_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l6_i17)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l7_l6_i19
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l6_i15)) (mapped l7 ?p1) (not (rcnot l1_l6_i17)) (mapped l6 ?p2) (rcnot l7_l6_i19) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l6_i19)))
)
(:action apply_cnot_l1_l6_i21
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l6_i17)) (mapped l1 ?p1) (not (rcnot l7_l6_i19)) (mapped l6 ?p2) (rcnot l1_l6_i21) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l6_i21)))
)
(:action apply_cnot_l1_l7_i22
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l6_i21)) (mapped l1 ?p1) (not (rcnot l7_l6_i19)) (mapped l7 ?p2) (rcnot l1_l7_i22) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l7_i22)))
)
(:action apply_cnot_l6_l5_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l6_i21)) (mapped l6 ?p1) (not (initialized ?p2)) (rcnot l6_l5_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l5_i25)) (mapped l5 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l6_l3_i26
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l5_i25)) (mapped l6 ?p1) (not (initialized ?p2)) (rcnot l6_l3_i26) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l3_i26)) (mapped l3 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l1_l7_i30
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l7_i22)) (mapped l1 ?p1) (not (rcnot l1_l7_i22)) (mapped l7 ?p2) (rcnot l1_l7_i30) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l7_i30)))
)
(:action apply_cnot_l2_l8_i33
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l0_i12)) (mapped l2 ?p1) (not (initialized ?p2)) (rcnot l2_l8_i33) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l8_i33)) (mapped l8 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l0_l8_i35
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l0_i12)) (mapped l0 ?p1) (not (rcnot l2_l8_i33)) (mapped l8 ?p2) (rcnot l0_l8_i35) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l8_i35)))
)
(:action apply_cnot_l2_l8_i37
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l8_i33)) (mapped l2 ?p1) (not (rcnot l0_l8_i35)) (mapped l8 ?p2) (rcnot l2_l8_i37) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l8_i37)))
)
(:action apply_cnot_l0_l8_i39
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l8_i35)) (mapped l0 ?p1) (not (rcnot l2_l8_i37)) (mapped l8 ?p2) (rcnot l0_l8_i39) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l8_i39)))
)
(:action apply_cnot_l8_l7_i42
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l8_i39)) (mapped l8 ?p1) (not (rcnot l1_l7_i30)) (mapped l7 ?p2) (rcnot l8_l7_i42) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l7_i42)))
)
(:action apply_cnot_l7_l3_i43
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l7_i42)) (mapped l7 ?p1) (not (rcnot l6_l3_i26)) (mapped l3 ?p2) (rcnot l7_l3_i43) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l3_i43)))
)
(:action apply_cnot_l8_l6_i45
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l7_i42)) (mapped l8 ?p1) (not (rcnot l6_l3_i26)) (mapped l6 ?p2) (rcnot l8_l6_i45) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l6_i45)))
)
(:action apply_cnot_l1_l6_i47
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l7_i30)) (mapped l1 ?p1) (not (rcnot l8_l6_i45)) (mapped l6 ?p2) (rcnot l1_l6_i47) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l6_i47)))
)
(:action apply_cnot_l8_l6_i49
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l6_i45)) (mapped l8 ?p1) (not (rcnot l1_l6_i47)) (mapped l6 ?p2) (rcnot l8_l6_i49) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l6_i49)))
)
(:action apply_cnot_l1_l6_i51
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l6_i47)) (mapped l1 ?p1) (not (rcnot l8_l6_i49)) (mapped l6 ?p2) (rcnot l1_l6_i51) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l6_i51)))
)
(:action apply_cnot_l1_l8_i52
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l6_i51)) (mapped l1 ?p1) (not (rcnot l8_l6_i49)) (mapped l8 ?p2) (rcnot l1_l8_i52) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l8_i52)))
)
(:action apply_cnot_l6_l4_i55
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l6_i51)) (mapped l6 ?p1) (not (initialized ?p2)) (rcnot l6_l4_i55) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l4_i55)) (mapped l4 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l1_l8_i57
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l8_i52)) (mapped l1 ?p1) (not (rcnot l1_l8_i52)) (mapped l8 ?p2) (rcnot l1_l8_i57) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l8_i57)))
)
(:action apply_cnot_l1_l3_i58
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l8_i57)) (mapped l1 ?p1) (not (rcnot l7_l3_i43)) (mapped l3 ?p2) (rcnot l1_l3_i58) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i58)))
)
(:action apply_cnot_l7_l3_i60
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l3_i43)) (mapped l7 ?p1) (not (rcnot l1_l3_i58)) (mapped l3 ?p2) (rcnot l7_l3_i60) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l3_i60)))
)
(:action apply_cnot_l1_l3_i62
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l3_i58)) (mapped l1 ?p1) (not (rcnot l7_l3_i60)) (mapped l3 ?p2) (rcnot l1_l3_i62) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i62)))
)
(:action apply_cnot_l5_l8_i66
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l5_i25)) (mapped l5 ?p1) (not (rcnot l1_l8_i57)) (mapped l8 ?p2) (rcnot l5_l8_i66) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l8_i66)))
)
(:action apply_cnot_l1_l5_i68
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l3_i62)) (mapped l1 ?p1) (not (rcnot l5_l8_i66)) (mapped l5 ?p2) (rcnot l1_l5_i68) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i68)))
)
(:action apply_cnot_l7_l5_i70
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l3_i60)) (mapped l7 ?p1) (not (rcnot l1_l5_i68)) (mapped l5 ?p2) (rcnot l7_l5_i70) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l5_i70)))
)
(:action apply_cnot_l1_l5_i72
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l5_i68)) (mapped l1 ?p1) (not (rcnot l7_l5_i70)) (mapped l5 ?p2) (rcnot l1_l5_i72) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i72)))
)
(:action apply_cnot_l7_l5_i74
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l5_i70)) (mapped l7 ?p1) (not (rcnot l1_l5_i72)) (mapped l5 ?p2) (rcnot l7_l5_i74) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l5_i74)))
)
(:action apply_cnot_l2_l8_i79
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l8_i37)) (mapped l2 ?p1) (not (rcnot l5_l8_i66)) (mapped l8 ?p2) (rcnot l2_l8_i79) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l8_i79)))
)
(:action apply_cnot_l0_l8_i81
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l8_i39)) (mapped l0 ?p1) (not (rcnot l2_l8_i79)) (mapped l8 ?p2) (rcnot l0_l8_i81) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l8_i81)))
)
(:action apply_cnot_l2_l8_i83
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l8_i79)) (mapped l2 ?p1) (not (rcnot l0_l8_i81)) (mapped l8 ?p2) (rcnot l2_l8_i83) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l8_i83)))
)
(:action apply_cnot_l0_l8_i86
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l8_i81)) (mapped l0 ?p1) (not (rcnot l2_l8_i83)) (mapped l8 ?p2) (rcnot l0_l8_i86) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l8_i86)))
)
(:action apply_cnot_l5_l8_i90
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l5_i74)) (mapped l5 ?p1) (not (rcnot l0_l8_i86)) (mapped l8 ?p2) (rcnot l5_l8_i90) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l8_i90)))
)
)
