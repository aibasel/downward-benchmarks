;; Tokyo/Local_compact/problem_11_barenco_tof_5.pddl
(define (problem test)
  (:domain Quantum)
  (:objects
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 - pqubit
)
(:init
  ;; all physical qubits are not occupied, by default
  ;; all logical qubits are not occupied, by default
 ;; connectivity graph
  (connected p0 p1)
  (connected p0 p5)
  (connected p1 p0)
  (connected p1 p2)
  (connected p1 p6)
  (connected p1 p7)
  (connected p2 p1)
  (connected p2 p6)
  (connected p3 p8)
  (connected p4 p8)
  (connected p4 p9)
  (connected p5 p0)
  (connected p5 p6)
  (connected p5 p10)
  (connected p5 p11)
  (connected p6 p1)
  (connected p6 p2)
  (connected p6 p5)
  (connected p6 p7)
  (connected p6 p10)
  (connected p6 p11)
  (connected p7 p1)
  (connected p7 p6)
  (connected p7 p8)
  (connected p7 p12)
  (connected p8 p3)
  (connected p8 p4)
  (connected p8 p7)
  (connected p8 p9)
  (connected p8 p12)
  (connected p8 p13)
  (connected p9 p4)
  (connected p9 p8)
  (connected p10 p5)
  (connected p10 p6)
  (connected p10 p11)
  (connected p10 p15)
  (connected p11 p5)
  (connected p11 p6)
  (connected p11 p10)
  (connected p11 p12)
  (connected p11 p16)
  (connected p11 p17)
  (connected p12 p7)
  (connected p12 p8)
  (connected p12 p11)
  (connected p12 p13)
  (connected p12 p16)
  (connected p13 p8)
  (connected p13 p12)
  (connected p13 p14)
  (connected p13 p18)
  (connected p13 p19)
  (connected p14 p13)
  (connected p14 p18)
  (connected p14 p19)
  (connected p15 p10)
  (connected p15 p16)
  (connected p16 p11)
  (connected p16 p12)
  (connected p16 p15)
  (connected p16 p17)
  (connected p17 p11)
  (connected p17 p16)
  (connected p17 p18)
  (connected p18 p13)
  (connected p18 p14)
  (connected p18 p17)
  (connected p19 p13)
  (connected p19 p14)
  ;; listing required cnots
  (rcnot l7_l8_i4)
  (rcnot l4_l8_i6)
  (rcnot l7_l8_i8)
  (rcnot l4_l7_i9)
  (rcnot l4_l7_i11)
  (rcnot l6_l7_i13)
  (rcnot l3_l7_i15)
  (rcnot l6_l7_i17)
  (rcnot l3_l6_i18)
  (rcnot l3_l6_i20)
  (rcnot l5_l6_i22)
  (rcnot l2_l6_i24)
  (rcnot l5_l6_i26)
  (rcnot l2_l5_i27)
  (rcnot l2_l5_i29)
  (rcnot l1_l5_i31)
  (rcnot l0_l5_i33)
  (rcnot l1_l5_i35)
  (rcnot l0_l5_i37)
  (rcnot l5_l6_i40)
  (rcnot l2_l6_i42)
  (rcnot l5_l6_i44)
  (rcnot l6_l7_i46)
  (rcnot l3_l7_i48)
  (rcnot l6_l7_i50)
  (rcnot l7_l8_i52)
  (rcnot l4_l8_i54)
  (rcnot l7_l8_i56)
  (rcnot l4_l7_i57)
  (rcnot l4_l7_i59)
  (rcnot l6_l7_i62)
  (rcnot l3_l7_i64)
  (rcnot l6_l7_i66)
  (rcnot l5_l6_i68)
  (rcnot l2_l6_i70)
  (rcnot l5_l6_i72)
  (rcnot l1_l5_i74)
  (rcnot l0_l5_i76)
  (rcnot l1_l5_i78)
  (rcnot l0_l5_i80)
  (rcnot l5_l6_i83)
  (rcnot l2_l6_i85)
  (rcnot l5_l6_i87)
  (rcnot l2_l5_i88)
  (rcnot l2_l5_i90)
  (rcnot l6_l7_i93)
  (rcnot l3_l7_i95)
  (rcnot l6_l7_i97)
  (rcnot l3_l6_i98)
  (rcnot l3_l6_i100)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l7_l8_i4))
 (not (rcnot l4_l8_i6))
 (not (rcnot l7_l8_i8))
 (not (rcnot l4_l7_i9))
 (not (rcnot l4_l7_i11))
 (not (rcnot l6_l7_i13))
 (not (rcnot l3_l7_i15))
 (not (rcnot l6_l7_i17))
 (not (rcnot l3_l6_i18))
 (not (rcnot l3_l6_i20))
 (not (rcnot l5_l6_i22))
 (not (rcnot l2_l6_i24))
 (not (rcnot l5_l6_i26))
 (not (rcnot l2_l5_i27))
 (not (rcnot l2_l5_i29))
 (not (rcnot l1_l5_i31))
 (not (rcnot l0_l5_i33))
 (not (rcnot l1_l5_i35))
 (not (rcnot l0_l5_i37))
 (not (rcnot l5_l6_i40))
 (not (rcnot l2_l6_i42))
 (not (rcnot l5_l6_i44))
 (not (rcnot l6_l7_i46))
 (not (rcnot l3_l7_i48))
 (not (rcnot l6_l7_i50))
 (not (rcnot l7_l8_i52))
 (not (rcnot l4_l8_i54))
 (not (rcnot l7_l8_i56))
 (not (rcnot l4_l7_i57))
 (not (rcnot l4_l7_i59))
 (not (rcnot l6_l7_i62))
 (not (rcnot l3_l7_i64))
 (not (rcnot l6_l7_i66))
 (not (rcnot l5_l6_i68))
 (not (rcnot l2_l6_i70))
 (not (rcnot l5_l6_i72))
 (not (rcnot l1_l5_i74))
 (not (rcnot l0_l5_i76))
 (not (rcnot l1_l5_i78))
 (not (rcnot l0_l5_i80))
 (not (rcnot l5_l6_i83))
 (not (rcnot l2_l6_i85))
 (not (rcnot l5_l6_i87))
 (not (rcnot l2_l5_i88))
 (not (rcnot l2_l5_i90))
 (not (rcnot l6_l7_i93))
 (not (rcnot l3_l7_i95))
 (not (rcnot l6_l7_i97))
 (not (rcnot l3_l6_i98))
 (not (rcnot l3_l6_i100))
  )
)
)