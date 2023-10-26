;; Melbourne_non_bidirectional/Local_compact/problem_3_qaoa5.pddl
(define (problem test)
  (:domain Quantum)
  (:objects
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
)
(:init
  ;; all physical qubits are not occupied, by default
  ;; all logical qubits are not occupied, by default
 ;; connectivity graph
  (connected p1 p0)
  (connected p1 p2)
  (connected p2 p3)
  (connected p4 p3)
  (connected p4 p10)
  (connected p5 p4)
  (connected p5 p6)
  (connected p5 p9)
  (connected p6 p8)
  (connected p7 p8)
  (connected p9 p8)
  (connected p9 p10)
  (connected p11 p3)
  (connected p11 p10)
  (connected p11 p12)
  (connected p12 p2)
  (connected p13 p1)
  (connected p13 p12)
  ;; listing required cnots
  (rcnot l0_l1_i2)
  (rcnot l0_l1_i4)
  (rcnot l1_l2_i7)
  (rcnot l1_l2_i9)
  (rcnot l2_l3_i12)
  (rcnot l2_l3_i14)
  (rcnot l3_l4_i17)
  (rcnot l3_l4_i19)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l0_l1_i2))
 (not (rcnot l0_l1_i4))
 (not (rcnot l1_l2_i7))
 (not (rcnot l1_l2_i9))
 (not (rcnot l2_l3_i12))
 (not (rcnot l2_l3_i14))
 (not (rcnot l3_l4_i17))
 (not (rcnot l3_l4_i19))
  )
)
)