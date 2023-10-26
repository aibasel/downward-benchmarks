;; Tokyo/Local_compact/domain_7_tof_4.pddl
(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l1_l4_i1 l0_l4_i3 l1_l4_i5 l0_l4_i7 l4_l5_i11 l2_l5_i13 l4_l5_i15 l2_l5_i17 l5_l6_i21 l3_l6_i23 l5_l6_i25 l3_l6_i27 l3_l5_i28 l3_l5_i30 l4_l5_i34 l2_l5_i36 l4_l5_i38 l1_l4_i40 l0_l4_i42 l1_l4_i44 l0_l4_i46 l2_l5_i50  - gateid
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
(:action apply_cnot_l1_l4_i1
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (initialized ?p2)) (rcnot l1_l4_i1) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i1)) (mapped l1 ?p1) (occupied_pqubit ?p1) (initialized ?p1) (mapped l4 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l0_l4_i3
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l1_l4_i1)) (mapped l4 ?p2) (rcnot l0_l4_i3) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i3)) (mapped l0 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l1_l4_i5
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i1)) (mapped l1 ?p1) (not (rcnot l0_l4_i3)) (mapped l4 ?p2) (rcnot l1_l4_i5) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i5)))
)
(:action apply_cnot_l0_l4_i7
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i3)) (mapped l0 ?p1) (not (rcnot l1_l4_i5)) (mapped l4 ?p2) (rcnot l0_l4_i7) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i7)))
)
(:action apply_cnot_l4_l5_i11
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i7)) (mapped l4 ?p1) (not (initialized ?p2)) (rcnot l4_l5_i11) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i11)) (mapped l5 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l2_l5_i13
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l4_l5_i11)) (mapped l5 ?p2) (rcnot l2_l5_i13) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i13)) (mapped l2 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l4_l5_i15
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i11)) (mapped l4 ?p1) (not (rcnot l2_l5_i13)) (mapped l5 ?p2) (rcnot l4_l5_i15) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i15)))
)
(:action apply_cnot_l2_l5_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i13)) (mapped l2 ?p1) (not (rcnot l4_l5_i15)) (mapped l5 ?p2) (rcnot l2_l5_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i17)))
)
(:action apply_cnot_l5_l6_i21
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i17)) (mapped l5 ?p1) (not (initialized ?p2)) (rcnot l5_l6_i21) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i21)) (mapped l6 ?p2) (occupied_pqubit ?p2) (initialized ?p2))
)
(:action apply_cnot_l3_l6_i23
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (initialized ?p1)) (not (rcnot l5_l6_i21)) (mapped l6 ?p2) (rcnot l3_l6_i23) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i23)) (mapped l3 ?p1) (occupied_pqubit ?p1) (initialized ?p1))
)
(:action apply_cnot_l5_l6_i25
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l5_l6_i21)) (mapped l5 ?p1) (not (rcnot l3_l6_i23)) (mapped l6 ?p2) (rcnot l5_l6_i25) (connected ?p1 ?p2))
:effect (and (not (rcnot l5_l6_i25)))
)
(:action apply_cnot_l3_l6_i27
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i23)) (mapped l3 ?p1) (not (rcnot l5_l6_i25)) (mapped l6 ?p2) (rcnot l3_l6_i27) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l6_i27)))
)
(:action apply_cnot_l3_l5_i28
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l6_i27)) (mapped l3 ?p1) (not (rcnot l5_l6_i25)) (mapped l5 ?p2) (rcnot l3_l5_i28) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l5_i28)))
)
(:action apply_cnot_l3_l5_i30
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l5_i28)) (mapped l3 ?p1) (not (rcnot l3_l5_i28)) (mapped l5 ?p2) (rcnot l3_l5_i30) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l5_i30)))
)
(:action apply_cnot_l4_l5_i34
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i15)) (mapped l4 ?p1) (not (rcnot l3_l5_i30)) (mapped l5 ?p2) (rcnot l4_l5_i34) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i34)))
)
(:action apply_cnot_l2_l5_i36
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i17)) (mapped l2 ?p1) (not (rcnot l4_l5_i34)) (mapped l5 ?p2) (rcnot l2_l5_i36) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i36)))
)
(:action apply_cnot_l4_l5_i38
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l4_l5_i34)) (mapped l4 ?p1) (not (rcnot l2_l5_i36)) (mapped l5 ?p2) (rcnot l4_l5_i38) (connected ?p1 ?p2))
:effect (and (not (rcnot l4_l5_i38)))
)
(:action apply_cnot_l1_l4_i40
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i5)) (mapped l1 ?p1) (not (rcnot l4_l5_i38)) (mapped l4 ?p2) (rcnot l1_l4_i40) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i40)))
)
(:action apply_cnot_l0_l4_i42
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i7)) (mapped l0 ?p1) (not (rcnot l1_l4_i40)) (mapped l4 ?p2) (rcnot l0_l4_i42) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i42)))
)
(:action apply_cnot_l1_l4_i44
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l4_i40)) (mapped l1 ?p1) (not (rcnot l0_l4_i42)) (mapped l4 ?p2) (rcnot l1_l4_i44) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l4_i44)))
)
(:action apply_cnot_l0_l4_i46
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l4_i42)) (mapped l0 ?p1) (not (rcnot l1_l4_i44)) (mapped l4 ?p2) (rcnot l0_l4_i46) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l4_i46)))
)
(:action apply_cnot_l2_l5_i50
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l5_i36)) (mapped l2 ?p1) (not (rcnot l4_l5_i38)) (mapped l5 ?p2) (rcnot l2_l5_i50) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l5_i50)))
)
)
