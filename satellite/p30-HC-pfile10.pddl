(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	instrument1
	instrument2
	satellite1
	instrument3
	instrument4
	instrument5
	satellite2
	instrument6
	satellite3
	instrument7
	instrument8
	satellite4
	instrument9
	instrument10
	satellite5
	instrument11
	instrument12
	instrument13
	satellite6
	instrument14
	satellite7
	instrument15
	instrument16
	satellite8
	instrument17
	instrument18
	instrument19
	satellite9
	instrument20
	instrument21
	instrument22
	satellite10
	instrument23
	instrument24
	satellite11
	instrument25
	satellite12
	instrument26
	satellite13
	instrument27
	satellite14
	instrument28
	instrument29
	instrument30
	spectrograph1
	infrared3
	image4
	infrared0
	image2
	Star4
	Star2
	Star1
	GroundStation3
	Star0
	Planet5
	Star6
	Star7
	Phenomenon8
	Planet9
	Planet10
	Star11
	Star12
	Phenomenon13
	Phenomenon14
	Star15
	Star16
	Planet17
	Phenomenon18
	Star19
	Phenomenon20
	Star21
	Star22
	Star23
	Star24
	Phenomenon25
	Star26
	Planet27
	Planet28
	Planet29
	Planet30
	Planet31
	Planet32
	Star33
	Planet34
	Star35
	Phenomenon36
	Star37
	Phenomenon38
	Phenomenon39
	Star40
	Phenomenon41
	Phenomenon42
	Planet43
	Planet44
	Planet45
	Star46
	Phenomenon47
	Phenomenon48
	Planet49
	Star50
	Planet51
	Star52
	Phenomenon53
	Star54
	Planet55
	Phenomenon56
	Planet57
	Phenomenon58
	Planet59
	Planet60
	Star61
	Phenomenon62
	Star63
	Star64
	Star65
	Phenomenon66
	Planet67
	Planet68
	Planet69
	Phenomenon70
	Phenomenon71
	Star72
	Planet73
	Planet74
	Star75
	Planet76
	Star77
	Planet78
	Star79
	Phenomenon80
	Planet81
	Planet82
	Star83
	Planet84
	Phenomenon85
	Star86
	Planet87
	Planet88
	Planet89
	Phenomenon90
	Phenomenon91
	Star92
	Planet93
	Phenomenon94
	Planet95
	Planet96
	Phenomenon97
	Phenomenon98
	Planet99
	Phenomenon100
	Phenomenon101
	Planet102
	Planet103
	Planet104
	Star105
	Star106
	Star107
	Phenomenon108
	Phenomenon109
	Phenomenon110
	Star111
	Planet112
	Phenomenon113
	Planet114
	Star115
	Phenomenon116
	Phenomenon117
	Phenomenon118
	Phenomenon119
	Phenomenon120
	Planet121
	Star122
	Phenomenon123
	Planet124
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 infrared0)
	(calibration_target instrument0 Star2)
	(instrument instrument1)
	(supports instrument1 image2)
	(supports instrument1 image4)
	(calibration_target instrument1 Star1)
	(instrument instrument2)
	(supports instrument2 infrared3)
	(supports instrument2 image4)
	(calibration_target instrument2 GroundStation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star24)
	(satellite satellite1)
	(instrument instrument3)
	(supports instrument3 image2)
	(supports instrument3 infrared0)
	(supports instrument3 infrared3)
	(calibration_target instrument3 Star1)
	(instrument instrument4)
	(supports instrument4 infrared0)
	(supports instrument4 image2)
	(supports instrument4 spectrograph1)
	(calibration_target instrument4 Star4)
	(instrument instrument5)
	(supports instrument5 image4)
	(calibration_target instrument5 Star4)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star72)
	(satellite satellite2)
	(instrument instrument6)
	(supports instrument6 image2)
	(calibration_target instrument6 GroundStation3)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon71)
	(satellite satellite3)
	(instrument instrument7)
	(supports instrument7 image2)
	(calibration_target instrument7 Star0)
	(instrument instrument8)
	(supports instrument8 image4)
	(supports instrument8 image2)
	(calibration_target instrument8 Star4)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet10)
	(satellite satellite4)
	(instrument instrument9)
	(supports instrument9 infrared0)
	(calibration_target instrument9 Star1)
	(instrument instrument10)
	(supports instrument10 image2)
	(calibration_target instrument10 Star1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star86)
	(satellite satellite5)
	(instrument instrument11)
	(supports instrument11 image4)
	(supports instrument11 infrared0)
	(supports instrument11 spectrograph1)
	(calibration_target instrument11 Star2)
	(instrument instrument12)
	(supports instrument12 infrared0)
	(calibration_target instrument12 GroundStation3)
	(instrument instrument13)
	(supports instrument13 image4)
	(calibration_target instrument13 Star2)
	(on_board instrument11 satellite5)
	(on_board instrument12 satellite5)
	(on_board instrument13 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Star37)
	(satellite satellite6)
	(instrument instrument14)
	(supports instrument14 infrared3)
	(supports instrument14 image2)
	(calibration_target instrument14 Star4)
	(on_board instrument14 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Planet95)
	(satellite satellite7)
	(instrument instrument15)
	(supports instrument15 infrared3)
	(calibration_target instrument15 Star4)
	(instrument instrument16)
	(supports instrument16 infrared3)
	(calibration_target instrument16 GroundStation3)
	(on_board instrument15 satellite7)
	(on_board instrument16 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Phenomenon20)
	(satellite satellite8)
	(instrument instrument17)
	(supports instrument17 image2)
	(calibration_target instrument17 Star1)
	(instrument instrument18)
	(supports instrument18 image4)
	(calibration_target instrument18 Star2)
	(instrument instrument19)
	(supports instrument19 spectrograph1)
	(calibration_target instrument19 Star1)
	(on_board instrument17 satellite8)
	(on_board instrument18 satellite8)
	(on_board instrument19 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Star115)
	(satellite satellite9)
	(instrument instrument20)
	(supports instrument20 image4)
	(supports instrument20 infrared0)
	(supports instrument20 spectrograph1)
	(calibration_target instrument20 Star4)
	(instrument instrument21)
	(supports instrument21 infrared3)
	(supports instrument21 infrared0)
	(calibration_target instrument21 Star0)
	(instrument instrument22)
	(supports instrument22 spectrograph1)
	(supports instrument22 infrared0)
	(supports instrument22 image4)
	(calibration_target instrument22 Star4)
	(on_board instrument20 satellite9)
	(on_board instrument21 satellite9)
	(on_board instrument22 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Planet124)
	(satellite satellite10)
	(instrument instrument23)
	(supports instrument23 infrared3)
	(supports instrument23 infrared0)
	(supports instrument23 image4)
	(calibration_target instrument23 Star2)
	(instrument instrument24)
	(supports instrument24 image4)
	(supports instrument24 infrared3)
	(supports instrument24 spectrograph1)
	(calibration_target instrument24 Star2)
	(on_board instrument23 satellite10)
	(on_board instrument24 satellite10)
	(power_avail satellite10)
	(pointing satellite10 Planet93)
	(satellite satellite11)
	(instrument instrument25)
	(supports instrument25 spectrograph1)
	(calibration_target instrument25 GroundStation3)
	(on_board instrument25 satellite11)
	(power_avail satellite11)
	(pointing satellite11 Planet17)
	(satellite satellite12)
	(instrument instrument26)
	(supports instrument26 infrared0)
	(supports instrument26 infrared3)
	(calibration_target instrument26 GroundStation3)
	(on_board instrument26 satellite12)
	(power_avail satellite12)
	(pointing satellite12 Star63)
	(satellite satellite13)
	(instrument instrument27)
	(supports instrument27 infrared3)
	(supports instrument27 image2)
	(supports instrument27 image4)
	(calibration_target instrument27 Star1)
	(on_board instrument27 satellite13)
	(power_avail satellite13)
	(pointing satellite13 Star92)
	(satellite satellite14)
	(instrument instrument28)
	(supports instrument28 infrared0)
	(calibration_target instrument28 Star0)
	(instrument instrument29)
	(supports instrument29 image2)
	(supports instrument29 infrared0)
	(supports instrument29 image4)
	(calibration_target instrument29 GroundStation3)
	(instrument instrument30)
	(supports instrument30 image2)
	(calibration_target instrument30 Star0)
	(on_board instrument28 satellite14)
	(on_board instrument29 satellite14)
	(on_board instrument30 satellite14)
	(power_avail satellite14)
	(pointing satellite14 Phenomenon85)
	(mode spectrograph1)
	(mode infrared3)
	(mode image4)
	(mode infrared0)
	(mode image2)
	(direction Star4)
	(direction Star2)
	(direction Star1)
	(direction GroundStation3)
	(direction Star0)
	(direction Planet5)
	(direction Star6)
	(direction Star7)
	(direction Phenomenon8)
	(direction Planet9)
	(direction Planet10)
	(direction Star11)
	(direction Star12)
	(direction Phenomenon13)
	(direction Phenomenon14)
	(direction Star15)
	(direction Star16)
	(direction Planet17)
	(direction Phenomenon18)
	(direction Star19)
	(direction Phenomenon20)
	(direction Star21)
	(direction Star22)
	(direction Star23)
	(direction Star24)
	(direction Phenomenon25)
	(direction Star26)
	(direction Planet27)
	(direction Planet28)
	(direction Planet29)
	(direction Planet30)
	(direction Planet31)
	(direction Planet32)
	(direction Star33)
	(direction Planet34)
	(direction Star35)
	(direction Phenomenon36)
	(direction Star37)
	(direction Phenomenon38)
	(direction Phenomenon39)
	(direction Star40)
	(direction Phenomenon41)
	(direction Phenomenon42)
	(direction Planet43)
	(direction Planet44)
	(direction Planet45)
	(direction Star46)
	(direction Phenomenon47)
	(direction Phenomenon48)
	(direction Planet49)
	(direction Star50)
	(direction Planet51)
	(direction Star52)
	(direction Phenomenon53)
	(direction Star54)
	(direction Planet55)
	(direction Phenomenon56)
	(direction Planet57)
	(direction Phenomenon58)
	(direction Planet59)
	(direction Planet60)
	(direction Star61)
	(direction Phenomenon62)
	(direction Star63)
	(direction Star64)
	(direction Star65)
	(direction Phenomenon66)
	(direction Planet67)
	(direction Planet68)
	(direction Planet69)
	(direction Phenomenon70)
	(direction Phenomenon71)
	(direction Star72)
	(direction Planet73)
	(direction Planet74)
	(direction Star75)
	(direction Planet76)
	(direction Star77)
	(direction Planet78)
	(direction Star79)
	(direction Phenomenon80)
	(direction Planet81)
	(direction Planet82)
	(direction Star83)
	(direction Planet84)
	(direction Phenomenon85)
	(direction Star86)
	(direction Planet87)
	(direction Planet88)
	(direction Planet89)
	(direction Phenomenon90)
	(direction Phenomenon91)
	(direction Star92)
	(direction Planet93)
	(direction Phenomenon94)
	(direction Planet95)
	(direction Planet96)
	(direction Phenomenon97)
	(direction Phenomenon98)
	(direction Planet99)
	(direction Phenomenon100)
	(direction Phenomenon101)
	(direction Planet102)
	(direction Planet103)
	(direction Planet104)
	(direction Star105)
	(direction Star106)
	(direction Star107)
	(direction Phenomenon108)
	(direction Phenomenon109)
	(direction Phenomenon110)
	(direction Star111)
	(direction Planet112)
	(direction Phenomenon113)
	(direction Planet114)
	(direction Star115)
	(direction Phenomenon116)
	(direction Phenomenon117)
	(direction Phenomenon118)
	(direction Phenomenon119)
	(direction Phenomenon120)
	(direction Planet121)
	(direction Star122)
	(direction Phenomenon123)
	(direction Planet124)
)
(:goal (and
	(pointing satellite1 Star0)
	(pointing satellite2 Star61)
	(pointing satellite4 Phenomenon123)
	(pointing satellite5 Phenomenon80)
	(pointing satellite9 Phenomenon14)
	(pointing satellite14 Planet124)
	(have_image Planet5 image4)
	(have_image Star6 infrared3)
	(have_image Star7 image4)
	(have_image Phenomenon8 image4)
	(have_image Planet9 infrared0)
	(have_image Planet10 infrared3)
	(have_image Star12 image4)
	(have_image Phenomenon13 image4)
	(have_image Phenomenon14 spectrograph1)
	(have_image Star15 spectrograph1)
	(have_image Star16 image2)
	(have_image Planet17 infrared3)
	(have_image Phenomenon18 image4)
	(have_image Star19 infrared3)
	(have_image Phenomenon20 image4)
	(have_image Star21 image4)
	(have_image Star22 image4)
	(have_image Star23 image2)
	(have_image Star24 image2)
	(have_image Phenomenon25 image4)
	(have_image Planet28 image4)
	(have_image Planet29 image4)
	(have_image Planet30 infrared3)
	(have_image Planet31 infrared3)
	(have_image Planet32 spectrograph1)
	(have_image Star33 infrared3)
	(have_image Planet34 image4)
	(have_image Star35 image2)
	(have_image Star37 image2)
	(have_image Phenomenon38 image4)
	(have_image Phenomenon39 spectrograph1)
	(have_image Star40 infrared3)
	(have_image Phenomenon41 spectrograph1)
	(have_image Phenomenon42 spectrograph1)
	(have_image Planet44 infrared3)
	(have_image Planet45 infrared0)
	(have_image Star46 image4)
	(have_image Phenomenon47 infrared3)
	(have_image Phenomenon48 image4)
	(have_image Planet49 infrared0)
	(have_image Star50 infrared3)
	(have_image Planet51 infrared0)
	(have_image Star52 infrared3)
	(have_image Star54 spectrograph1)
	(have_image Planet55 spectrograph1)
	(have_image Phenomenon56 infrared3)
	(have_image Planet57 image4)
	(have_image Planet59 image4)
	(have_image Planet60 infrared3)
	(have_image Star61 image2)
	(have_image Phenomenon62 infrared3)
	(have_image Star63 infrared3)
	(have_image Star64 image4)
	(have_image Star65 image2)
	(have_image Planet67 infrared3)
	(have_image Planet68 image4)
	(have_image Planet69 spectrograph1)
	(have_image Phenomenon70 infrared0)
	(have_image Phenomenon71 image4)
	(have_image Star72 image4)
	(have_image Planet73 spectrograph1)
	(have_image Planet74 image4)
	(have_image Star75 infrared3)
	(have_image Planet76 image2)
	(have_image Star77 infrared0)
	(have_image Planet78 spectrograph1)
	(have_image Star79 image4)
	(have_image Phenomenon80 image4)
	(have_image Planet81 image4)
	(have_image Star83 image4)
	(have_image Planet84 infrared0)
	(have_image Phenomenon85 spectrograph1)
	(have_image Star86 image2)
	(have_image Planet87 image4)
	(have_image Planet88 infrared0)
	(have_image Planet89 infrared0)
	(have_image Phenomenon90 infrared0)
	(have_image Phenomenon91 infrared3)
	(have_image Star92 infrared0)
	(have_image Planet93 infrared0)
	(have_image Phenomenon94 infrared3)
	(have_image Planet95 infrared3)
	(have_image Planet96 spectrograph1)
	(have_image Phenomenon97 infrared3)
	(have_image Phenomenon98 image4)
	(have_image Planet99 image4)
	(have_image Phenomenon100 infrared3)
	(have_image Phenomenon101 spectrograph1)
	(have_image Planet102 infrared0)
	(have_image Planet103 image4)
	(have_image Planet104 spectrograph1)
	(have_image Star105 image2)
	(have_image Star106 infrared0)
	(have_image Star107 infrared3)
	(have_image Phenomenon108 infrared3)
	(have_image Phenomenon109 image2)
	(have_image Phenomenon110 image2)
	(have_image Star111 image4)
	(have_image Planet112 infrared0)
	(have_image Phenomenon113 spectrograph1)
	(have_image Planet114 infrared3)
	(have_image Star115 image2)
	(have_image Phenomenon116 spectrograph1)
	(have_image Phenomenon117 infrared3)
	(have_image Phenomenon119 image4)
	(have_image Phenomenon120 infrared0)
	(have_image Planet121 infrared3)
	(have_image Star122 image2)
))

)
