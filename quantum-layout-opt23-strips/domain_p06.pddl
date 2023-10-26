;; Melbourne/Local_compact/domain_12_vbe_adder_3.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l2_l3_i1 l1_l3_i3 l2_l3_i4 l1_l3_i6 l1_l2_i7 l2_l3_i8 l0_l3_i9 l2_l3_i11 l0_l3_i13 l5_l6_i17 l4_l6_i19 l5_l6_i20 l4_l6_i22 l4_l5_i23 l5_l6_i24 l3_l6_i25 l5_l6_i27 l3_l6_i29 l8_l9_i36 l7_l9_i38 l8_l9_i39 l7_l9_i41 l7_l8_i42 l8_l9_i43 l6_l9_i44 l8_l9_i46 l6_l9_i48 l6_l8_i49 l5_l6_i52 l3_l6_i53 l5_l6_i55 l4_l5_i56 l3_l6_i58 l5_l6_i59 l4_l6_i61 l5_l6_i62 l3_l5_i63 l2_l3_i66 l0_l3_i67 l2_l3_i69 l1_l2_i70 l0_l3_i72 l2_l3_i73 l1_l3_i75 l2_l3_i76 l0_l2_i77 l1_l3_i79 l1_l2_i80 l4_l6_i83 l4_l5_i84  - gateid
  ;; logical qubits
  l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - lqubit)
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
(:action apply_cnot_l2_l3_i1
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l2_l3_i1) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i1)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l3 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l1_l3_i3
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l2_l3_i1)) (mapped l3 ?p2) (rcnot l1_l3_i3) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i3)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l2_l3_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i1)) (mapped l2 ?p1) (not (rcnot l1_l3_i3)) (mapped l3 ?p2) (rcnot l2_l3_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i4)))
)
(:action apply_cnot_l1_l3_i6
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l3_i3)) (mapped l1 ?p1) (not (rcnot l2_l3_i4)) (mapped l3 ?p2) (rcnot l1_l3_i6) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i6)))
)
(:action apply_cnot_l1_l2_i7
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l3_i6)) (mapped l1 ?p1) (not (rcnot l2_l3_i4)) (mapped l2 ?p2) (rcnot l1_l2_i7) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i7)))
)
(:action apply_cnot_l2_l3_i8
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i7)) (mapped l2 ?p1) (not (rcnot l1_l3_i6)) (mapped l3 ?p2) (rcnot l2_l3_i8) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i8)))
)
(:action apply_cnot_l0_l3_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l2_l3_i8)) (mapped l3 ?p2) (rcnot l0_l3_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l3_i9)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l2_l3_i11
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i8)) (mapped l2 ?p1) (not (rcnot l0_l3_i9)) (mapped l3 ?p2) (rcnot l2_l3_i11) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i11)))
)
(:action apply_cnot_l0_l3_i13
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l3_i9)) (mapped l0 ?p1) (not (rcnot l2_l3_i11)) (mapped l3 ?p2) (rcnot l0_l3_i13) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l3_i13)))
)
(:action apply_cnot_l5_l6_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l5_l6_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i17)) (mapped l5 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l6 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l4_l6_i19
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l5_l6_i17)) (mapped l6 ?p2) (rcnot l4_l6_i19) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i19)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l5_l6_i20
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i17)) (mapped l5 ?p1) (not (rcnot l4_l6_i19)) (mapped l6 ?p2) (rcnot l5_l6_i20) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i20)))
)
(:action apply_cnot_l4_l6_i22
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i19)) (mapped l4 ?p1) (not (rcnot l5_l6_i20)) (mapped l6 ?p2) (rcnot l4_l6_i22) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i22)))
)
(:action apply_cnot_l4_l5_i23
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i22)) (mapped l4 ?p1) (not (rcnot l5_l6_i20)) (mapped l5 ?p2) (rcnot l4_l5_i23) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i23)))
)
(:action apply_cnot_l5_l6_i24
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i23)) (mapped l5 ?p1) (not (rcnot l4_l6_i22)) (mapped l6 ?p2) (rcnot l5_l6_i24) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i24)))
)
(:action apply_cnot_l3_l6_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l3_i13)) (mapped l3 ?p1) (not (rcnot l5_l6_i24)) (mapped l6 ?p2) (rcnot l3_l6_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i25)))
)
(:action apply_cnot_l5_l6_i27
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i24)) (mapped l5 ?p1) (not (rcnot l3_l6_i25)) (mapped l6 ?p2) (rcnot l5_l6_i27) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i27)))
)
(:action apply_cnot_l3_l6_i29
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i25)) (mapped l3 ?p1) (not (rcnot l5_l6_i27)) (mapped l6 ?p2) (rcnot l3_l6_i29) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i29)))
)
(:action apply_cnot_l8_l9_i36
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l8_l9_i36) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l9_i36)) (mapped l8 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l9 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l7_l9_i38
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l8_l9_i36)) (mapped l9 ?p2) (rcnot l7_l9_i38) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l9_i38)) (mapped l7 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l8_l9_i39
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l9_i36)) (mapped l8 ?p1) (not (rcnot l7_l9_i38)) (mapped l9 ?p2) (rcnot l8_l9_i39) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l9_i39)))
)
(:action apply_cnot_l7_l9_i41
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l9_i38)) (mapped l7 ?p1) (not (rcnot l8_l9_i39)) (mapped l9 ?p2) (rcnot l7_l9_i41) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l9_i41)))
)
(:action apply_cnot_l7_l8_i42
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l9_i41)) (mapped l7 ?p1) (not (rcnot l8_l9_i39)) (mapped l8 ?p2) (rcnot l7_l8_i42) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i42)))
)
(:action apply_cnot_l8_l9_i43
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l8_i42)) (mapped l8 ?p1) (not (rcnot l7_l9_i41)) (mapped l9 ?p2) (rcnot l8_l9_i43) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l9_i43)))
)
(:action apply_cnot_l6_l9_i44
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i29)) (mapped l6 ?p1) (not (rcnot l8_l9_i43)) (mapped l9 ?p2) (rcnot l6_l9_i44) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l9_i44)))
)
(:action apply_cnot_l8_l9_i46
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l9_i43)) (mapped l8 ?p1) (not (rcnot l6_l9_i44)) (mapped l9 ?p2) (rcnot l8_l9_i46) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l9_i46)))
)
(:action apply_cnot_l6_l9_i48
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l9_i44)) (mapped l6 ?p1) (not (rcnot l8_l9_i46)) (mapped l9 ?p2) (rcnot l6_l9_i48) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l9_i48)))
)
(:action apply_cnot_l6_l8_i49
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l9_i48)) (mapped l6 ?p1) (not (rcnot l8_l9_i46)) (mapped l8 ?p2) (rcnot l6_l8_i49) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l8_i49)))
)
(:action apply_cnot_l5_l6_i52
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i27)) (mapped l5 ?p1) (not (rcnot l6_l8_i49)) (mapped l6 ?p2) (rcnot l5_l6_i52) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i52)))
)
(:action apply_cnot_l3_l6_i53
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i29)) (mapped l3 ?p1) (not (rcnot l5_l6_i52)) (mapped l6 ?p2) (rcnot l3_l6_i53) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i53)))
)
(:action apply_cnot_l5_l6_i55
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i52)) (mapped l5 ?p1) (not (rcnot l3_l6_i53)) (mapped l6 ?p2) (rcnot l5_l6_i55) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i55)))
)
(:action apply_cnot_l4_l5_i56
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i23)) (mapped l4 ?p1) (not (rcnot l5_l6_i55)) (mapped l5 ?p2) (rcnot l4_l5_i56) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i56)))
)
(:action apply_cnot_l3_l6_i58
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i53)) (mapped l3 ?p1) (not (rcnot l5_l6_i55)) (mapped l6 ?p2) (rcnot l3_l6_i58) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i58)))
)
(:action apply_cnot_l5_l6_i59
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i56)) (mapped l5 ?p1) (not (rcnot l3_l6_i58)) (mapped l6 ?p2) (rcnot l5_l6_i59) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i59)))
)
(:action apply_cnot_l4_l6_i61
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i56)) (mapped l4 ?p1) (not (rcnot l5_l6_i59)) (mapped l6 ?p2) (rcnot l4_l6_i61) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i61)))
)
(:action apply_cnot_l5_l6_i62
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i59)) (mapped l5 ?p1) (not (rcnot l4_l6_i61)) (mapped l6 ?p2) (rcnot l5_l6_i62) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i62)))
)
(:action apply_cnot_l3_l5_i63
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i58)) (mapped l3 ?p1) (not (rcnot l5_l6_i62)) (mapped l5 ?p2) (rcnot l3_l5_i63) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l5_i63)))
)
(:action apply_cnot_l2_l3_i66
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i11)) (mapped l2 ?p1) (not (rcnot l3_l5_i63)) (mapped l3 ?p2) (rcnot l2_l3_i66) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i66)))
)
(:action apply_cnot_l0_l3_i67
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l3_i13)) (mapped l0 ?p1) (not (rcnot l2_l3_i66)) (mapped l3 ?p2) (rcnot l0_l3_i67) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l3_i67)))
)
(:action apply_cnot_l2_l3_i69
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i66)) (mapped l2 ?p1) (not (rcnot l0_l3_i67)) (mapped l3 ?p2) (rcnot l2_l3_i69) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i69)))
)
(:action apply_cnot_l1_l2_i70
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i7)) (mapped l1 ?p1) (not (rcnot l2_l3_i69)) (mapped l2 ?p2) (rcnot l1_l2_i70) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i70)))
)
(:action apply_cnot_l0_l3_i72
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l3_i67)) (mapped l0 ?p1) (not (rcnot l2_l3_i69)) (mapped l3 ?p2) (rcnot l0_l3_i72) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l3_i72)))
)
(:action apply_cnot_l2_l3_i73
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i70)) (mapped l2 ?p1) (not (rcnot l0_l3_i72)) (mapped l3 ?p2) (rcnot l2_l3_i73) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i73)))
)
(:action apply_cnot_l1_l3_i75
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i70)) (mapped l1 ?p1) (not (rcnot l2_l3_i73)) (mapped l3 ?p2) (rcnot l1_l3_i75) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i75)))
)
(:action apply_cnot_l2_l3_i76
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i73)) (mapped l2 ?p1) (not (rcnot l1_l3_i75)) (mapped l3 ?p2) (rcnot l2_l3_i76) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i76)))
)
(:action apply_cnot_l0_l2_i77
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l3_i72)) (mapped l0 ?p1) (not (rcnot l2_l3_i76)) (mapped l2 ?p2) (rcnot l0_l2_i77) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l2_i77)))
)
(:action apply_cnot_l1_l3_i79
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l3_i75)) (mapped l1 ?p1) (not (rcnot l2_l3_i76)) (mapped l3 ?p2) (rcnot l1_l3_i79) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l3_i79)))
)
(:action apply_cnot_l1_l2_i80
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l3_i79)) (mapped l1 ?p1) (not (rcnot l0_l2_i77)) (mapped l2 ?p2) (rcnot l1_l2_i80) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i80)))
)
(:action apply_cnot_l4_l6_i83
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i61)) (mapped l4 ?p1) (not (rcnot l5_l6_i62)) (mapped l6 ?p2) (rcnot l4_l6_i83) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i83)))
)
(:action apply_cnot_l4_l5_i84
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i83)) (mapped l4 ?p1) (not (rcnot l3_l5_i63)) (mapped l5 ?p2) (rcnot l4_l5_i84) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i84)))
)
)
