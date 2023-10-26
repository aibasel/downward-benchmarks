;; Melbourne/Local_compact/domain_13_rc_adder_6.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l4_l3_i0 l4_l2_i1 l1_l2_i3 l0_l2_i5 l1_l2_i7 l0_l2_i9 l6_l5_i12 l6_l4_i13 l3_l4_i15 l2_l4_i17 l3_l4_i19 l2_l4_i21 l2_l3_i22 l8_l7_i25 l8_l6_i26 l5_l6_i28 l4_l6_i30 l5_l6_i32 l4_l6_i34 l4_l5_i35 l10_l9_i38 l10_l8_i39 l7_l8_i41 l6_l8_i43 l7_l8_i45 l6_l8_i47 l6_l7_i48 l12_l11_i51 l12_l10_i53 l9_l10_i55 l8_l10_i57 l9_l10_i59 l8_l10_i61 l8_l9_i65 l12_l13_i66 l11_l13_i68 l10_l13_i70 l11_l13_i72 l10_l13_i74 l10_l11_i75 l8_l10_i80 l9_l10_i82 l8_l10_i84 l6_l8_i87 l7_l8_i89 l6_l8_i91 l4_l6_i93 l5_l6_i95 l4_l6_i97 l2_l4_i99 l3_l4_i101 l2_l4_i103 l1_l2_i105 l0_l2_i107 l1_l2_i109 l0_l2_i111 l1_l0_i112 l3_l4_i116 l5_l6_i120 l7_l8_i124 l9_l10_i127 l12_l10_i130 l10_l8_i131 l10_l9_i132 l12_l11_i133 l8_l6_i134 l6_l4_i135 l4_l2_i136 l4_l3_i137 l6_l5_i138 l8_l7_i139  - gateid
  ;; logical qubits
  l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 - lqubit)
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
(:action apply_cnot_l4_l3_i0
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l4_l3_i0) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l3_i0)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l3 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l4_l2_i1
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l3_i0)) (mapped l4 ?p1) (not (initialized ?p2)) (rcnot l4_l2_i1) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i1)) (mapped l2 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l1_l2_i3
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l4_l2_i1)) (mapped l2 ?p2) (rcnot l1_l2_i3) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i3)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l0_l2_i5
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l1_l2_i3)) (mapped l2 ?p2) (rcnot l0_l2_i5) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l2_i5)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l1_l2_i7
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i3)) (mapped l1 ?p1) (not (rcnot l0_l2_i5)) (mapped l2 ?p2) (rcnot l1_l2_i7) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i7)))
)
(:action apply_cnot_l0_l2_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l2_i5)) (mapped l0 ?p1) (not (rcnot l1_l2_i7)) (mapped l2 ?p2) (rcnot l0_l2_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l2_i9)))
)
(:action apply_cnot_l6_l5_i12
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l6_l5_i12) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l5_i12)) (mapped l6 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l5 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l6_l4_i13
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l5_i12)) (mapped l6 ?p1) (not (rcnot l4_l2_i1)) (mapped l4 ?p2) (rcnot l6_l4_i13) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l4_i13)))
)
(:action apply_cnot_l3_l4_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l3_i0)) (mapped l3 ?p1) (not (rcnot l6_l4_i13)) (mapped l4 ?p2) (rcnot l3_l4_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i15)))
)
(:action apply_cnot_l2_l4_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l2_i9)) (mapped l2 ?p1) (not (rcnot l3_l4_i15)) (mapped l4 ?p2) (rcnot l2_l4_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i17)))
)
(:action apply_cnot_l3_l4_i19
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i15)) (mapped l3 ?p1) (not (rcnot l2_l4_i17)) (mapped l4 ?p2) (rcnot l3_l4_i19) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i19)))
)
(:action apply_cnot_l2_l4_i21
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i17)) (mapped l2 ?p1) (not (rcnot l3_l4_i19)) (mapped l4 ?p2) (rcnot l2_l4_i21) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i21)))
)
(:action apply_cnot_l2_l3_i22
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i21)) (mapped l2 ?p1) (not (rcnot l3_l4_i19)) (mapped l3 ?p2) (rcnot l2_l3_i22) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i22)))
)
(:action apply_cnot_l8_l7_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l8_l7_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l7_i25)) (mapped l8 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l7 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l8_l6_i26
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l7_i25)) (mapped l8 ?p1) (not (rcnot l6_l4_i13)) (mapped l6 ?p2) (rcnot l8_l6_i26) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l6_i26)))
)
(:action apply_cnot_l5_l6_i28
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l5_i12)) (mapped l5 ?p1) (not (rcnot l8_l6_i26)) (mapped l6 ?p2) (rcnot l5_l6_i28) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i28)))
)
(:action apply_cnot_l4_l6_i30
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i21)) (mapped l4 ?p1) (not (rcnot l5_l6_i28)) (mapped l6 ?p2) (rcnot l4_l6_i30) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i30)))
)
(:action apply_cnot_l5_l6_i32
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i28)) (mapped l5 ?p1) (not (rcnot l4_l6_i30)) (mapped l6 ?p2) (rcnot l5_l6_i32) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i32)))
)
(:action apply_cnot_l4_l6_i34
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i30)) (mapped l4 ?p1) (not (rcnot l5_l6_i32)) (mapped l6 ?p2) (rcnot l4_l6_i34) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i34)))
)
(:action apply_cnot_l4_l5_i35
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i34)) (mapped l4 ?p1) (not (rcnot l5_l6_i32)) (mapped l5 ?p2) (rcnot l4_l5_i35) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i35)))
)
(:action apply_cnot_l10_l9_i38
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l10_l9_i38) (connected ?p1 ?p2))
:effect (and (not (rcnot l10_l9_i38)) (mapped l10 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l9 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l10_l8_i39
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l10_l9_i38)) (mapped l10 ?p1) (not (rcnot l8_l6_i26)) (mapped l8 ?p2) (rcnot l10_l8_i39) (connected ?p1 ?p2))
:effect (and (not (rcnot l10_l8_i39)))
)
(:action apply_cnot_l7_l8_i41
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l7_i25)) (mapped l7 ?p1) (not (rcnot l10_l8_i39)) (mapped l8 ?p2) (rcnot l7_l8_i41) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i41)))
)
(:action apply_cnot_l6_l8_i43
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i34)) (mapped l6 ?p1) (not (rcnot l7_l8_i41)) (mapped l8 ?p2) (rcnot l6_l8_i43) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l8_i43)))
)
(:action apply_cnot_l7_l8_i45
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l8_i41)) (mapped l7 ?p1) (not (rcnot l6_l8_i43)) (mapped l8 ?p2) (rcnot l7_l8_i45) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i45)))
)
(:action apply_cnot_l6_l8_i47
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l8_i43)) (mapped l6 ?p1) (not (rcnot l7_l8_i45)) (mapped l8 ?p2) (rcnot l6_l8_i47) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l8_i47)))
)
(:action apply_cnot_l6_l7_i48
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l8_i47)) (mapped l6 ?p1) (not (rcnot l7_l8_i45)) (mapped l7 ?p2) (rcnot l6_l7_i48) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i48)))
)
(:action apply_cnot_l12_l11_i51
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l12_l11_i51) (connected ?p1 ?p2))
:effect (and (not (rcnot l12_l11_i51)) (mapped l12 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l11 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l12_l10_i53
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l12_l11_i51)) (mapped l12 ?p1) (not (rcnot l10_l8_i39)) (mapped l10 ?p2) (rcnot l12_l10_i53) (connected ?p1 ?p2))
:effect (and (not (rcnot l12_l10_i53)))
)
(:action apply_cnot_l9_l10_i55
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l10_l9_i38)) (mapped l9 ?p1) (not (rcnot l12_l10_i53)) (mapped l10 ?p2) (rcnot l9_l10_i55) (connected ?p1 ?p2))
:effect (and (not (rcnot l9_l10_i55)))
)
(:action apply_cnot_l8_l10_i57
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l8_i47)) (mapped l8 ?p1) (not (rcnot l9_l10_i55)) (mapped l10 ?p2) (rcnot l8_l10_i57) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l10_i57)))
)
(:action apply_cnot_l9_l10_i59
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l9_l10_i55)) (mapped l9 ?p1) (not (rcnot l8_l10_i57)) (mapped l10 ?p2) (rcnot l9_l10_i59) (connected ?p1 ?p2))
:effect (and (not (rcnot l9_l10_i59)))
)
(:action apply_cnot_l8_l10_i61
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l10_i57)) (mapped l8 ?p1) (not (rcnot l9_l10_i59)) (mapped l10 ?p2) (rcnot l8_l10_i61) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l10_i61)))
)
(:action apply_cnot_l8_l9_i65
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l10_i61)) (mapped l8 ?p1) (not (rcnot l9_l10_i59)) (mapped l9 ?p2) (rcnot l8_l9_i65) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l9_i65)))
)
(:action apply_cnot_l12_l13_i66
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l12_l10_i53)) (mapped l12 ?p1) (not (initialized ?p2)) (rcnot l12_l13_i66) (connected ?p1 ?p2))
:effect (and (not (rcnot l12_l13_i66)) (mapped l13 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l11_l13_i68
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l12_l11_i51)) (mapped l11 ?p1) (not (rcnot l12_l13_i66)) (mapped l13 ?p2) (rcnot l11_l13_i68) (connected ?p1 ?p2))
:effect (and (not (rcnot l11_l13_i68)))
)
(:action apply_cnot_l10_l13_i70
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l10_i61)) (mapped l10 ?p1) (not (rcnot l11_l13_i68)) (mapped l13 ?p2) (rcnot l10_l13_i70) (connected ?p1 ?p2))
:effect (and (not (rcnot l10_l13_i70)))
)
(:action apply_cnot_l11_l13_i72
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l11_l13_i68)) (mapped l11 ?p1) (not (rcnot l10_l13_i70)) (mapped l13 ?p2) (rcnot l11_l13_i72) (connected ?p1 ?p2))
:effect (and (not (rcnot l11_l13_i72)))
)
(:action apply_cnot_l10_l13_i74
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l10_l13_i70)) (mapped l10 ?p1) (not (rcnot l11_l13_i72)) (mapped l13 ?p2) (rcnot l10_l13_i74) (connected ?p1 ?p2))
:effect (and (not (rcnot l10_l13_i74)))
)
(:action apply_cnot_l10_l11_i75
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l10_l13_i74)) (mapped l10 ?p1) (not (rcnot l11_l13_i72)) (mapped l11 ?p2) (rcnot l10_l11_i75) (connected ?p1 ?p2))
:effect (and (not (rcnot l10_l11_i75)))
)
(:action apply_cnot_l8_l10_i80
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l9_i65)) (mapped l8 ?p1) (not (rcnot l10_l11_i75)) (mapped l10 ?p2) (rcnot l8_l10_i80) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l10_i80)))
)
(:action apply_cnot_l9_l10_i82
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l9_i65)) (mapped l9 ?p1) (not (rcnot l8_l10_i80)) (mapped l10 ?p2) (rcnot l9_l10_i82) (connected ?p1 ?p2))
:effect (and (not (rcnot l9_l10_i82)))
)
(:action apply_cnot_l8_l10_i84
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l10_i80)) (mapped l8 ?p1) (not (rcnot l9_l10_i82)) (mapped l10 ?p2) (rcnot l8_l10_i84) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l10_i84)))
)
(:action apply_cnot_l6_l8_i87
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i48)) (mapped l6 ?p1) (not (rcnot l8_l10_i84)) (mapped l8 ?p2) (rcnot l6_l8_i87) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l8_i87)))
)
(:action apply_cnot_l7_l8_i89
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i48)) (mapped l7 ?p1) (not (rcnot l6_l8_i87)) (mapped l8 ?p2) (rcnot l7_l8_i89) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i89)))
)
(:action apply_cnot_l6_l8_i91
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l8_i87)) (mapped l6 ?p1) (not (rcnot l7_l8_i89)) (mapped l8 ?p2) (rcnot l6_l8_i91) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l8_i91)))
)
(:action apply_cnot_l4_l6_i93
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i35)) (mapped l4 ?p1) (not (rcnot l6_l8_i91)) (mapped l6 ?p2) (rcnot l4_l6_i93) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i93)))
)
(:action apply_cnot_l5_l6_i95
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i35)) (mapped l5 ?p1) (not (rcnot l4_l6_i93)) (mapped l6 ?p2) (rcnot l5_l6_i95) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i95)))
)
(:action apply_cnot_l4_l6_i97
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l6_i93)) (mapped l4 ?p1) (not (rcnot l5_l6_i95)) (mapped l6 ?p2) (rcnot l4_l6_i97) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l6_i97)))
)
(:action apply_cnot_l2_l4_i99
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i22)) (mapped l2 ?p1) (not (rcnot l4_l6_i97)) (mapped l4 ?p2) (rcnot l2_l4_i99) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i99)))
)
(:action apply_cnot_l3_l4_i101
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i22)) (mapped l3 ?p1) (not (rcnot l2_l4_i99)) (mapped l4 ?p2) (rcnot l3_l4_i101) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i101)))
)
(:action apply_cnot_l2_l4_i103
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l4_i99)) (mapped l2 ?p1) (not (rcnot l3_l4_i101)) (mapped l4 ?p2) (rcnot l2_l4_i103) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l4_i103)))
)
(:action apply_cnot_l1_l2_i105
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i7)) (mapped l1 ?p1) (not (rcnot l2_l4_i103)) (mapped l2 ?p2) (rcnot l1_l2_i105) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i105)))
)
(:action apply_cnot_l0_l2_i107
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l2_i9)) (mapped l0 ?p1) (not (rcnot l1_l2_i105)) (mapped l2 ?p2) (rcnot l0_l2_i107) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l2_i107)))
)
(:action apply_cnot_l1_l2_i109
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i105)) (mapped l1 ?p1) (not (rcnot l0_l2_i107)) (mapped l2 ?p2) (rcnot l1_l2_i109) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i109)))
)
(:action apply_cnot_l0_l2_i111
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l2_i107)) (mapped l0 ?p1) (not (rcnot l1_l2_i109)) (mapped l2 ?p2) (rcnot l0_l2_i111) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l2_i111)))
)
(:action apply_cnot_l1_l0_i112
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i109)) (mapped l1 ?p1) (not (rcnot l0_l2_i111)) (mapped l0 ?p2) (rcnot l1_l0_i112) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l0_i112)))
)
(:action apply_cnot_l3_l4_i116
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i101)) (mapped l3 ?p1) (not (rcnot l2_l4_i103)) (mapped l4 ?p2) (rcnot l3_l4_i116) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i116)))
)
(:action apply_cnot_l5_l6_i120
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i95)) (mapped l5 ?p1) (not (rcnot l4_l6_i97)) (mapped l6 ?p2) (rcnot l5_l6_i120) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i120)))
)
(:action apply_cnot_l7_l8_i124
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l8_i89)) (mapped l7 ?p1) (not (rcnot l6_l8_i91)) (mapped l8 ?p2) (rcnot l7_l8_i124) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i124)))
)
(:action apply_cnot_l9_l10_i127
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l9_l10_i82)) (mapped l9 ?p1) (not (rcnot l8_l10_i84)) (mapped l10 ?p2) (rcnot l9_l10_i127) (connected ?p1 ?p2))
:effect (and (not (rcnot l9_l10_i127)))
)
(:action apply_cnot_l12_l10_i130
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l12_l13_i66)) (mapped l12 ?p1) (not (rcnot l9_l10_i127)) (mapped l10 ?p2) (rcnot l12_l10_i130) (connected ?p1 ?p2))
:effect (and (not (rcnot l12_l10_i130)))
)
(:action apply_cnot_l10_l8_i131
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l12_l10_i130)) (mapped l10 ?p1) (not (rcnot l7_l8_i124)) (mapped l8 ?p2) (rcnot l10_l8_i131) (connected ?p1 ?p2))
:effect (and (not (rcnot l10_l8_i131)))
)
(:action apply_cnot_l10_l9_i132
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l10_l8_i131)) (mapped l10 ?p1) (not (rcnot l9_l10_i127)) (mapped l9 ?p2) (rcnot l10_l9_i132) (connected ?p1 ?p2))
:effect (and (not (rcnot l10_l9_i132)))
)
(:action apply_cnot_l12_l11_i133
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l12_l10_i130)) (mapped l12 ?p1) (not (rcnot l10_l11_i75)) (mapped l11 ?p2) (rcnot l12_l11_i133) (connected ?p1 ?p2))
:effect (and (not (rcnot l12_l11_i133)))
)
(:action apply_cnot_l8_l6_i134
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l10_l8_i131)) (mapped l8 ?p1) (not (rcnot l5_l6_i120)) (mapped l6 ?p2) (rcnot l8_l6_i134) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l6_i134)))
)
(:action apply_cnot_l6_l4_i135
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l6_i134)) (mapped l6 ?p1) (not (rcnot l3_l4_i116)) (mapped l4 ?p2) (rcnot l6_l4_i135) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l4_i135)))
)
(:action apply_cnot_l4_l2_i136
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l4_i135)) (mapped l4 ?p1) (not (rcnot l0_l2_i111)) (mapped l2 ?p2) (rcnot l4_l2_i136) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l2_i136)))
)
(:action apply_cnot_l4_l3_i137
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l2_i136)) (mapped l4 ?p1) (not (rcnot l3_l4_i116)) (mapped l3 ?p2) (rcnot l4_l3_i137) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l3_i137)))
)
(:action apply_cnot_l6_l5_i138
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l4_i135)) (mapped l6 ?p1) (not (rcnot l5_l6_i120)) (mapped l5 ?p2) (rcnot l6_l5_i138) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l5_i138)))
)
(:action apply_cnot_l8_l7_i139
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l8_l6_i134)) (mapped l8 ?p1) (not (rcnot l7_l8_i124)) (mapped l7 ?p2) (rcnot l8_l7_i139) (connected ?p1 ?p2))
:effect (and (not (rcnot l8_l7_i139)))
)
)
