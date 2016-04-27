(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	instrument1
	instrument2
	satellite1
	instrument3
	satellite2
	instrument4
	satellite3
	instrument5
	instrument6
	instrument7
	satellite4
	instrument8
	satellite5
	instrument9
	satellite6
	instrument10
	instrument11
	satellite7
	instrument12
	satellite8
	instrument13
	satellite9
	instrument14
	instrument15
	instrument16
	image3
	image2
	image0
	image1
	GroundStation2
	GroundStation0
	GroundStation4
	Star1
	Star3
	Phenomenon5
	Star6
	Star7
	Planet8
	Planet9
	Planet10
	Planet11
	Planet12
	Phenomenon13
	Star14
	Phenomenon15
	Phenomenon16
	Phenomenon17
	Phenomenon18
	Planet19
	Star20
	Star21
	Planet22
	Phenomenon23
	Star24
	Planet25
	Phenomenon26
	Star27
	Planet28
	Star29
	Planet30
	Star31
	Planet32
	Planet33
	Planet34
	Planet35
	Planet36
	Planet37
	Phenomenon38
	Planet39
	Phenomenon40
	Phenomenon41
	Star42
	Star43
	Planet44
	Planet45
	Planet46
	Star47
	Planet48
	Planet49
	Star50
	Phenomenon51
	Phenomenon52
	Star53
	Phenomenon54
	Planet55
	Phenomenon56
	Phenomenon57
	Star58
	Phenomenon59
	Planet60
	Phenomenon61
	Star62
	Planet63
	Planet64
	Planet65
	Phenomenon66
	Phenomenon67
	Planet68
	Phenomenon69
	Planet70
	Star71
	Star72
	Phenomenon73
	Star74
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 image0)
	(supports instrument0 image1)
	(calibration_target instrument0 GroundStation0)
	(instrument instrument1)
	(supports instrument1 image1)
	(supports instrument1 image0)
	(calibration_target instrument1 GroundStation2)
	(instrument instrument2)
	(supports instrument2 image3)
	(supports instrument2 image1)
	(supports instrument2 image0)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon16)
	(satellite satellite1)
	(instrument instrument3)
	(supports instrument3 image1)
	(supports instrument3 image3)
	(supports instrument3 image0)
	(calibration_target instrument3 GroundStation4)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star50)
	(satellite satellite2)
	(instrument instrument4)
	(supports instrument4 image3)
	(calibration_target instrument4 Star1)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon52)
	(satellite satellite3)
	(instrument instrument5)
	(supports instrument5 image0)
	(supports instrument5 image3)
	(calibration_target instrument5 GroundStation2)
	(instrument instrument6)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation4)
	(instrument instrument7)
	(supports instrument7 image0)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon13)
	(satellite satellite4)
	(instrument instrument8)
	(supports instrument8 image0)
	(calibration_target instrument8 GroundStation2)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star14)
	(satellite satellite5)
	(instrument instrument9)
	(supports instrument9 image0)
	(calibration_target instrument9 GroundStation0)
	(on_board instrument9 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Planet30)
	(satellite satellite6)
	(instrument instrument10)
	(supports instrument10 image2)
	(calibration_target instrument10 Star1)
	(instrument instrument11)
	(supports instrument11 image0)
	(calibration_target instrument11 Star3)
	(on_board instrument10 satellite6)
	(on_board instrument11 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Star3)
	(satellite satellite7)
	(instrument instrument12)
	(supports instrument12 image3)
	(calibration_target instrument12 GroundStation4)
	(on_board instrument12 satellite7)
	(power_avail satellite7)
	(pointing satellite7 GroundStation4)
	(satellite satellite8)
	(instrument instrument13)
	(supports instrument13 image3)
	(supports instrument13 image1)
	(supports instrument13 image0)
	(calibration_target instrument13 Star1)
	(on_board instrument13 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Planet37)
	(satellite satellite9)
	(instrument instrument14)
	(supports instrument14 image0)
	(calibration_target instrument14 Star1)
	(instrument instrument15)
	(supports instrument15 image0)
	(supports instrument15 image1)
	(supports instrument15 image2)
	(calibration_target instrument15 Star1)
	(instrument instrument16)
	(supports instrument16 image1)
	(calibration_target instrument16 Star3)
	(on_board instrument14 satellite9)
	(on_board instrument15 satellite9)
	(on_board instrument16 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Planet9)
	(mode image3)
	(mode image2)
	(mode image0)
	(mode image1)
	(direction GroundStation2)
	(direction GroundStation0)
	(direction GroundStation4)
	(direction Star1)
	(direction Star3)
	(direction Phenomenon5)
	(direction Star6)
	(direction Star7)
	(direction Planet8)
	(direction Planet9)
	(direction Planet10)
	(direction Planet11)
	(direction Planet12)
	(direction Phenomenon13)
	(direction Star14)
	(direction Phenomenon15)
	(direction Phenomenon16)
	(direction Phenomenon17)
	(direction Phenomenon18)
	(direction Planet19)
	(direction Star20)
	(direction Star21)
	(direction Planet22)
	(direction Phenomenon23)
	(direction Star24)
	(direction Planet25)
	(direction Phenomenon26)
	(direction Star27)
	(direction Planet28)
	(direction Star29)
	(direction Planet30)
	(direction Star31)
	(direction Planet32)
	(direction Planet33)
	(direction Planet34)
	(direction Planet35)
	(direction Planet36)
	(direction Planet37)
	(direction Phenomenon38)
	(direction Planet39)
	(direction Phenomenon40)
	(direction Phenomenon41)
	(direction Star42)
	(direction Star43)
	(direction Planet44)
	(direction Planet45)
	(direction Planet46)
	(direction Star47)
	(direction Planet48)
	(direction Planet49)
	(direction Star50)
	(direction Phenomenon51)
	(direction Phenomenon52)
	(direction Star53)
	(direction Phenomenon54)
	(direction Planet55)
	(direction Phenomenon56)
	(direction Phenomenon57)
	(direction Star58)
	(direction Phenomenon59)
	(direction Planet60)
	(direction Phenomenon61)
	(direction Star62)
	(direction Planet63)
	(direction Planet64)
	(direction Planet65)
	(direction Phenomenon66)
	(direction Phenomenon67)
	(direction Planet68)
	(direction Phenomenon69)
	(direction Planet70)
	(direction Star71)
	(direction Star72)
	(direction Phenomenon73)
	(direction Star74)
)
(:goal (and
	(pointing satellite2 Planet19)
	(have_image Phenomenon5 image0)
	(have_image Star6 image1)
	(have_image Star7 image0)
	(have_image Planet8 image0)
	(have_image Planet9 image3)
	(have_image Planet10 image0)
	(have_image Planet11 image2)
	(have_image Planet12 image1)
	(have_image Phenomenon13 image3)
	(have_image Star14 image3)
	(have_image Phenomenon15 image3)
	(have_image Phenomenon16 image3)
	(have_image Phenomenon17 image2)
	(have_image Phenomenon18 image0)
	(have_image Planet19 image0)
	(have_image Star20 image0)
	(have_image Star21 image0)
	(have_image Planet22 image3)
	(have_image Phenomenon23 image2)
	(have_image Star24 image3)
	(have_image Planet25 image1)
	(have_image Phenomenon26 image2)
	(have_image Star27 image3)
	(have_image Planet28 image3)
	(have_image Star29 image3)
	(have_image Planet30 image0)
	(have_image Planet32 image0)
	(have_image Planet34 image1)
	(have_image Planet35 image2)
	(have_image Planet36 image2)
	(have_image Planet37 image2)
	(have_image Phenomenon38 image0)
	(have_image Planet39 image0)
	(have_image Phenomenon40 image1)
	(have_image Phenomenon41 image1)
	(have_image Star42 image2)
	(have_image Star43 image2)
	(have_image Planet44 image3)
	(have_image Planet45 image2)
	(have_image Star47 image1)
	(have_image Planet48 image3)
	(have_image Planet49 image3)
	(have_image Star50 image1)
	(have_image Phenomenon51 image0)
	(have_image Phenomenon52 image1)
	(have_image Star53 image0)
	(have_image Phenomenon54 image0)
	(have_image Planet55 image1)
	(have_image Phenomenon57 image1)
	(have_image Phenomenon59 image1)
	(have_image Planet60 image1)
	(have_image Phenomenon61 image3)
	(have_image Star62 image3)
	(have_image Planet63 image2)
	(have_image Planet64 image0)
	(have_image Planet65 image3)
	(have_image Phenomenon66 image0)
	(have_image Phenomenon67 image1)
	(have_image Planet68 image0)
	(have_image Planet70 image0)
	(have_image Star71 image0)
	(have_image Star72 image1)
	(have_image Phenomenon73 image0)
	(have_image Star74 image0)
))

)
