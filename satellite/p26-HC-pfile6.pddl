(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	instrument1
	satellite1
	instrument2
	instrument3
	satellite2
	instrument4
	instrument5
	instrument6
	satellite3
	instrument7
	instrument8
	instrument9
	satellite4
	instrument10
	instrument11
	instrument12
	satellite5
	instrument13
	satellite6
	instrument14
	instrument15
	instrument16
	satellite7
	instrument17
	instrument18
	instrument19
	infrared3
	infrared1
	thermograph2
	spectrograph0
	Star0
	Star1
	GroundStation3
	Star2
	Planet4
	Planet5
	Star6
	Star7
	Phenomenon8
	Star9
	Star10
	Planet11
	Phenomenon12
	Phenomenon13
	Phenomenon14
	Star15
	Phenomenon16
	Planet17
	Planet18
	Star19
	Planet20
	Planet21
	Planet22
	Star23
	Phenomenon24
	Planet25
	Star26
	Star27
	Phenomenon28
	Star29
	Phenomenon30
	Star31
	Star32
	Star33
	Planet34
	Phenomenon35
	Planet36
	Star37
	Planet38
	Star39
	Star40
	Planet41
	Phenomenon42
	Star43
	Planet44
	Phenomenon45
	Phenomenon46
	Star47
	Star48
	Phenomenon49
	Star50
	Phenomenon51
	Planet52
	Planet53
	Planet54
	Star55
	Star56
	Planet57
	Planet58
	Planet59
	Planet60
	Planet61
	Phenomenon62
	Phenomenon63
	Phenomenon64
	Planet65
	Phenomenon66
	Phenomenon67
	Phenomenon68
	Planet69
	Planet70
	Phenomenon71
	Planet72
	Phenomenon73
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 infrared1)
	(supports instrument0 infrared3)
	(calibration_target instrument0 Star0)
	(instrument instrument1)
	(supports instrument1 infrared1)
	(calibration_target instrument1 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star33)
	(satellite satellite1)
	(instrument instrument2)
	(supports instrument2 infrared1)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 Star2)
	(instrument instrument3)
	(supports instrument3 infrared1)
	(supports instrument3 spectrograph0)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 Star2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon13)
	(satellite satellite2)
	(instrument instrument4)
	(supports instrument4 thermograph2)
	(supports instrument4 infrared1)
	(calibration_target instrument4 GroundStation3)
	(instrument instrument5)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 Star0)
	(instrument instrument6)
	(supports instrument6 infrared1)
	(supports instrument6 infrared3)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 Star1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star31)
	(satellite satellite3)
	(instrument instrument7)
	(supports instrument7 infrared3)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 Star1)
	(instrument instrument8)
	(supports instrument8 spectrograph0)
	(supports instrument8 infrared1)
	(supports instrument8 infrared3)
	(calibration_target instrument8 Star2)
	(instrument instrument9)
	(supports instrument9 infrared1)
	(supports instrument9 infrared3)
	(supports instrument9 spectrograph0)
	(calibration_target instrument9 Star1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon13)
	(satellite satellite4)
	(instrument instrument10)
	(supports instrument10 thermograph2)
	(supports instrument10 spectrograph0)
	(calibration_target instrument10 Star2)
	(instrument instrument11)
	(supports instrument11 thermograph2)
	(supports instrument11 infrared1)
	(supports instrument11 infrared3)
	(calibration_target instrument11 Star1)
	(instrument instrument12)
	(supports instrument12 spectrograph0)
	(supports instrument12 thermograph2)
	(calibration_target instrument12 GroundStation3)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet38)
	(satellite satellite5)
	(instrument instrument13)
	(supports instrument13 spectrograph0)
	(supports instrument13 infrared1)
	(supports instrument13 thermograph2)
	(calibration_target instrument13 GroundStation3)
	(on_board instrument13 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Planet65)
	(satellite satellite6)
	(instrument instrument14)
	(supports instrument14 infrared3)
	(supports instrument14 infrared1)
	(calibration_target instrument14 Star1)
	(instrument instrument15)
	(supports instrument15 infrared3)
	(calibration_target instrument15 GroundStation3)
	(instrument instrument16)
	(supports instrument16 infrared1)
	(supports instrument16 spectrograph0)
	(supports instrument16 infrared3)
	(calibration_target instrument16 GroundStation3)
	(on_board instrument14 satellite6)
	(on_board instrument15 satellite6)
	(on_board instrument16 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Phenomenon28)
	(satellite satellite7)
	(instrument instrument17)
	(supports instrument17 infrared1)
	(supports instrument17 infrared3)
	(calibration_target instrument17 Star2)
	(instrument instrument18)
	(supports instrument18 spectrograph0)
	(supports instrument18 thermograph2)
	(calibration_target instrument18 Star2)
	(instrument instrument19)
	(supports instrument19 spectrograph0)
	(supports instrument19 thermograph2)
	(calibration_target instrument19 Star2)
	(on_board instrument17 satellite7)
	(on_board instrument18 satellite7)
	(on_board instrument19 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Planet17)
	(mode infrared3)
	(mode infrared1)
	(mode thermograph2)
	(mode spectrograph0)
	(direction Star0)
	(direction Star1)
	(direction GroundStation3)
	(direction Star2)
	(direction Planet4)
	(direction Planet5)
	(direction Star6)
	(direction Star7)
	(direction Phenomenon8)
	(direction Star9)
	(direction Star10)
	(direction Planet11)
	(direction Phenomenon12)
	(direction Phenomenon13)
	(direction Phenomenon14)
	(direction Star15)
	(direction Phenomenon16)
	(direction Planet17)
	(direction Planet18)
	(direction Star19)
	(direction Planet20)
	(direction Planet21)
	(direction Planet22)
	(direction Star23)
	(direction Phenomenon24)
	(direction Planet25)
	(direction Star26)
	(direction Star27)
	(direction Phenomenon28)
	(direction Star29)
	(direction Phenomenon30)
	(direction Star31)
	(direction Star32)
	(direction Star33)
	(direction Planet34)
	(direction Phenomenon35)
	(direction Planet36)
	(direction Star37)
	(direction Planet38)
	(direction Star39)
	(direction Star40)
	(direction Planet41)
	(direction Phenomenon42)
	(direction Star43)
	(direction Planet44)
	(direction Phenomenon45)
	(direction Phenomenon46)
	(direction Star47)
	(direction Star48)
	(direction Phenomenon49)
	(direction Star50)
	(direction Phenomenon51)
	(direction Planet52)
	(direction Planet53)
	(direction Planet54)
	(direction Star55)
	(direction Star56)
	(direction Planet57)
	(direction Planet58)
	(direction Planet59)
	(direction Planet60)
	(direction Planet61)
	(direction Phenomenon62)
	(direction Phenomenon63)
	(direction Phenomenon64)
	(direction Planet65)
	(direction Phenomenon66)
	(direction Phenomenon67)
	(direction Phenomenon68)
	(direction Planet69)
	(direction Planet70)
	(direction Phenomenon71)
	(direction Planet72)
	(direction Phenomenon73)
)
(:goal (and
	(pointing satellite3 Planet34)
	(pointing satellite4 Phenomenon12)
	(pointing satellite6 Planet41)
	(pointing satellite7 Star6)
	(have_image Planet4 thermograph2)
	(have_image Planet5 spectrograph0)
	(have_image Star6 thermograph2)
	(have_image Star7 infrared3)
	(have_image Phenomenon8 spectrograph0)
	(have_image Star9 infrared1)
	(have_image Star10 infrared3)
	(have_image Planet11 infrared3)
	(have_image Phenomenon13 infrared3)
	(have_image Phenomenon14 infrared3)
	(have_image Star15 thermograph2)
	(have_image Phenomenon16 spectrograph0)
	(have_image Planet17 infrared1)
	(have_image Planet18 infrared3)
	(have_image Planet20 spectrograph0)
	(have_image Planet21 spectrograph0)
	(have_image Planet22 spectrograph0)
	(have_image Phenomenon24 infrared1)
	(have_image Planet25 spectrograph0)
	(have_image Star26 infrared1)
	(have_image Star27 infrared3)
	(have_image Phenomenon28 spectrograph0)
	(have_image Star29 infrared3)
	(have_image Phenomenon30 thermograph2)
	(have_image Star31 infrared3)
	(have_image Star32 infrared1)
	(have_image Star33 infrared3)
	(have_image Planet34 thermograph2)
	(have_image Phenomenon35 spectrograph0)
	(have_image Planet36 infrared1)
	(have_image Star37 thermograph2)
	(have_image Planet38 spectrograph0)
	(have_image Star39 infrared1)
	(have_image Star40 spectrograph0)
	(have_image Planet41 infrared1)
	(have_image Phenomenon42 infrared3)
	(have_image Star43 infrared1)
	(have_image Planet44 spectrograph0)
	(have_image Phenomenon45 thermograph2)
	(have_image Phenomenon46 infrared1)
	(have_image Star47 spectrograph0)
	(have_image Star48 infrared3)
	(have_image Star50 infrared1)
	(have_image Planet52 infrared1)
	(have_image Planet53 spectrograph0)
	(have_image Planet54 thermograph2)
	(have_image Star55 infrared3)
	(have_image Star56 infrared3)
	(have_image Planet57 infrared3)
	(have_image Planet58 spectrograph0)
	(have_image Planet59 spectrograph0)
	(have_image Planet60 thermograph2)
	(have_image Planet61 infrared1)
	(have_image Phenomenon63 infrared1)
	(have_image Phenomenon64 infrared3)
	(have_image Planet65 thermograph2)
	(have_image Phenomenon66 infrared3)
	(have_image Phenomenon67 infrared3)
	(have_image Phenomenon68 infrared3)
	(have_image Planet69 thermograph2)
	(have_image Planet70 thermograph2)
	(have_image Phenomenon71 infrared1)
	(have_image Planet72 infrared3)
	(have_image Phenomenon73 thermograph2)
))

)
