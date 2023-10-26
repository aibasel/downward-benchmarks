;; Tokyo/Local_compact/domain_9_tof_5.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l1_l5_i1 l0_l5_i3 l1_l5_i5 l0_l5_i7 l5_l6_i11 l2_l6_i13 l5_l6_i15 l2_l6_i17 l6_l7_i21 l3_l7_i23 l6_l7_i25 l3_l7_i27 l7_l8_i31 l4_l8_i33 l7_l8_i35 l4_l8_i37 l4_l7_i38 l4_l7_i40 l6_l7_i44 l3_l7_i46 l6_l7_i48 l5_l6_i50 l2_l6_i52 l5_l6_i54 l1_l5_i56 l0_l5_i58 l1_l5_i60 l0_l5_i62 l2_l6_i66 l3_l7_i70  - gateid
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
(:action apply_cnot_l1_l5_i1
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l1_l5_i1) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i1)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l5 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l0_l5_i3
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l1_l5_i1)) (mapped l5 ?p2) (rcnot l0_l5_i3) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i3)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l1_l5_i5
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l5_i1)) (mapped l1 ?p1) (not (rcnot l0_l5_i3)) (mapped l5 ?p2) (rcnot l1_l5_i5) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i5)))
)
(:action apply_cnot_l0_l5_i7
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i3)) (mapped l0 ?p1) (not (rcnot l1_l5_i5)) (mapped l5 ?p2) (rcnot l0_l5_i7) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i7)))
)
(:action apply_cnot_l5_l6_i11
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i7)) (mapped l5 ?p1) (not (initialized ?p2)) (rcnot l5_l6_i11) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i11)) (mapped l6 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l2_l6_i13
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l5_l6_i11)) (mapped l6 ?p2) (rcnot l2_l6_i13) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i13)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l5_l6_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i11)) (mapped l5 ?p1) (not (rcnot l2_l6_i13)) (mapped l6 ?p2) (rcnot l5_l6_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i15)))
)
(:action apply_cnot_l2_l6_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i13)) (mapped l2 ?p1) (not (rcnot l5_l6_i15)) (mapped l6 ?p2) (rcnot l2_l6_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i17)))
)
(:action apply_cnot_l6_l7_i21
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i17)) (mapped l6 ?p1) (not (initialized ?p2)) (rcnot l6_l7_i21) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i21)) (mapped l7 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l3_l7_i23
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l6_l7_i21)) (mapped l7 ?p2) (rcnot l3_l7_i23) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i23)) (mapped l3 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l6_l7_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i21)) (mapped l6 ?p1) (not (rcnot l3_l7_i23)) (mapped l7 ?p2) (rcnot l6_l7_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i25)))
)
(:action apply_cnot_l3_l7_i27
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i23)) (mapped l3 ?p1) (not (rcnot l6_l7_i25)) (mapped l7 ?p2) (rcnot l3_l7_i27) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i27)))
)
(:action apply_cnot_l7_l8_i31
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i27)) (mapped l7 ?p1) (not (initialized ?p2)) (rcnot l7_l8_i31) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i31)) (mapped l8 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l4_l8_i33
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l7_l8_i31)) (mapped l8 ?p2) (rcnot l4_l8_i33) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l8_i33)) (mapped l4 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l7_l8_i35
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l7_l8_i31)) (mapped l7 ?p1) (not (rcnot l4_l8_i33)) (mapped l8 ?p2) (rcnot l7_l8_i35) (connected ?p1 ?p2))
:effect (and (not (rcnot l7_l8_i35)))
)
(:action apply_cnot_l4_l8_i37
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l8_i33)) (mapped l4 ?p1) (not (rcnot l7_l8_i35)) (mapped l8 ?p2) (rcnot l4_l8_i37) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l8_i37)))
)
(:action apply_cnot_l4_l7_i38
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l8_i37)) (mapped l4 ?p1) (not (rcnot l7_l8_i35)) (mapped l7 ?p2) (rcnot l4_l7_i38) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l7_i38)))
)
(:action apply_cnot_l4_l7_i40
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l7_i38)) (mapped l4 ?p1) (not (rcnot l4_l7_i38)) (mapped l7 ?p2) (rcnot l4_l7_i40) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l7_i40)))
)
(:action apply_cnot_l6_l7_i44
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i25)) (mapped l6 ?p1) (not (rcnot l4_l7_i40)) (mapped l7 ?p2) (rcnot l6_l7_i44) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i44)))
)
(:action apply_cnot_l3_l7_i46
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i27)) (mapped l3 ?p1) (not (rcnot l6_l7_i44)) (mapped l7 ?p2) (rcnot l3_l7_i46) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i46)))
)
(:action apply_cnot_l6_l7_i48
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l6_l7_i44)) (mapped l6 ?p1) (not (rcnot l3_l7_i46)) (mapped l7 ?p2) (rcnot l6_l7_i48) (connected ?p1 ?p2))
:effect (and (not (rcnot l6_l7_i48)))
)
(:action apply_cnot_l5_l6_i50
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i15)) (mapped l5 ?p1) (not (rcnot l6_l7_i48)) (mapped l6 ?p2) (rcnot l5_l6_i50) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i50)))
)
(:action apply_cnot_l2_l6_i52
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i17)) (mapped l2 ?p1) (not (rcnot l5_l6_i50)) (mapped l6 ?p2) (rcnot l2_l6_i52) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i52)))
)
(:action apply_cnot_l5_l6_i54
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i50)) (mapped l5 ?p1) (not (rcnot l2_l6_i52)) (mapped l6 ?p2) (rcnot l5_l6_i54) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i54)))
)
(:action apply_cnot_l1_l5_i56
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l5_i5)) (mapped l1 ?p1) (not (rcnot l5_l6_i54)) (mapped l5 ?p2) (rcnot l1_l5_i56) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i56)))
)
(:action apply_cnot_l0_l5_i58
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i7)) (mapped l0 ?p1) (not (rcnot l1_l5_i56)) (mapped l5 ?p2) (rcnot l0_l5_i58) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i58)))
)
(:action apply_cnot_l1_l5_i60
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l5_i56)) (mapped l1 ?p1) (not (rcnot l0_l5_i58)) (mapped l5 ?p2) (rcnot l1_l5_i60) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l5_i60)))
)
(:action apply_cnot_l0_l5_i62
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l5_i58)) (mapped l0 ?p1) (not (rcnot l1_l5_i60)) (mapped l5 ?p2) (rcnot l0_l5_i62) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l5_i62)))
)
(:action apply_cnot_l2_l6_i66
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l6_i52)) (mapped l2 ?p1) (not (rcnot l5_l6_i54)) (mapped l6 ?p2) (rcnot l2_l6_i66) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l6_i66)))
)
(:action apply_cnot_l3_l7_i70
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l7_i46)) (mapped l3 ?p1) (not (rcnot l6_l7_i48)) (mapped l7 ?p2) (rcnot l3_l7_i70) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l7_i70)))
)
)
