(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	satellite1
	instrument1
	instrument2
	instrument3
	satellite2
	instrument4
	satellite3
	instrument5
	instrument6
	instrument7
	satellite4
	instrument8
	instrument9
	instrument10
	satellite5
	instrument11
	instrument12
	instrument13
	satellite6
	instrument14
	instrument15
	instrument16
	satellite7
	instrument17
	instrument18
	instrument19
	satellite8
	instrument20
	instrument21
	instrument22
	satellite9
	instrument23
	image0
	thermograph2
	thermograph1
	spectrograph3
	Star0
	Star3
	Star4
	GroundStation1
	Star2
	Phenomenon5
	Star6
	Star7
	Phenomenon8
	Phenomenon9
	Star10
	Planet11
	Phenomenon12
	Phenomenon13
	Phenomenon14
	Phenomenon15
	Planet16
	Phenomenon17
	Planet18
	Planet19
	Planet20
	Phenomenon21
	Planet22
	Planet23
	Phenomenon24
	Phenomenon25
	Phenomenon26
	Phenomenon27
	Star28
	Star29
	Phenomenon30
	Phenomenon31
	Phenomenon32
	Phenomenon33
	Phenomenon34
	Planet35
	Star36
	Phenomenon37
	Phenomenon38
	Phenomenon39
	Star40
	Star41
	Phenomenon42
	Star43
	Planet44
	Planet45
	Planet46
	Star47
	Star48
	Star49
	Phenomenon50
	Phenomenon51
	Phenomenon52
	Planet53
	Planet54
	Star55
	Planet56
	Phenomenon57
	Phenomenon58
	Planet59
	Phenomenon60
	Star61
	Star62
	Star63
	Planet64
	Planet65
	Star66
	Planet67
	Phenomenon68
	Star69
	Planet70
	Star71
	Phenomenon72
	Planet73
	Star74
	Phenomenon75
	Planet76
	Star77
	Planet78
	Planet79
	Phenomenon80
	Phenomenon81
	Planet82
	Star83
	Phenomenon84
	Planet85
	Planet86
	Phenomenon87
	Planet88
	Planet89
	Star90
	Phenomenon91
	Star92
	Phenomenon93
	Planet94
	Star95
	Planet96
	Phenomenon97
	Planet98
	Phenomenon99
	Planet100
	Star101
	Planet102
	Phenomenon103
	Phenomenon104
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 thermograph1)
	(supports instrument0 thermograph2)
	(supports instrument0 image0)
	(calibration_target instrument0 Star4)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet23)
	(satellite satellite1)
	(instrument instrument1)
	(supports instrument1 image0)
	(supports instrument1 spectrograph3)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 Star4)
	(instrument instrument2)
	(supports instrument2 thermograph2)
	(supports instrument2 thermograph1)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 Star3)
	(instrument instrument3)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 Star0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation1)
	(satellite satellite2)
	(instrument instrument4)
	(supports instrument4 thermograph1)
	(supports instrument4 image0)
	(calibration_target instrument4 Star4)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet96)
	(satellite satellite3)
	(instrument instrument5)
	(supports instrument5 spectrograph3)
	(supports instrument5 thermograph2)
	(supports instrument5 image0)
	(calibration_target instrument5 Star2)
	(instrument instrument6)
	(supports instrument6 image0)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 GroundStation1)
	(instrument instrument7)
	(supports instrument7 thermograph2)
	(supports instrument7 thermograph1)
	(supports instrument7 spectrograph3)
	(calibration_target instrument7 Star2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon84)
	(satellite satellite4)
	(instrument instrument8)
	(supports instrument8 thermograph2)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 Star2)
	(instrument instrument9)
	(supports instrument9 image0)
	(supports instrument9 thermograph2)
	(supports instrument9 spectrograph3)
	(calibration_target instrument9 Star3)
	(instrument instrument10)
	(supports instrument10 thermograph2)
	(supports instrument10 spectrograph3)
	(supports instrument10 thermograph1)
	(calibration_target instrument10 Star0)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon52)
	(satellite satellite5)
	(instrument instrument11)
	(supports instrument11 image0)
	(calibration_target instrument11 Star0)
	(instrument instrument12)
	(supports instrument12 image0)
	(supports instrument12 thermograph1)
	(supports instrument12 thermograph2)
	(calibration_target instrument12 Star4)
	(instrument instrument13)
	(supports instrument13 spectrograph3)
	(supports instrument13 thermograph1)
	(supports instrument13 image0)
	(calibration_target instrument13 Star2)
	(on_board instrument11 satellite5)
	(on_board instrument12 satellite5)
	(on_board instrument13 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Phenomenon87)
	(satellite satellite6)
	(instrument instrument14)
	(supports instrument14 thermograph1)
	(calibration_target instrument14 Star4)
	(instrument instrument15)
	(supports instrument15 thermograph1)
	(supports instrument15 image0)
	(calibration_target instrument15 Star2)
	(instrument instrument16)
	(supports instrument16 thermograph1)
	(calibration_target instrument16 GroundStation1)
	(on_board instrument14 satellite6)
	(on_board instrument15 satellite6)
	(on_board instrument16 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Phenomenon51)
	(satellite satellite7)
	(instrument instrument17)
	(supports instrument17 image0)
	(calibration_target instrument17 GroundStation1)
	(instrument instrument18)
	(supports instrument18 thermograph2)
	(calibration_target instrument18 Star3)
	(instrument instrument19)
	(supports instrument19 image0)
	(supports instrument19 thermograph2)
	(calibration_target instrument19 Star2)
	(on_board instrument17 satellite7)
	(on_board instrument18 satellite7)
	(on_board instrument19 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Phenomenon93)
	(satellite satellite8)
	(instrument instrument20)
	(supports instrument20 image0)
	(calibration_target instrument20 Star4)
	(instrument instrument21)
	(supports instrument21 spectrograph3)
	(supports instrument21 image0)
	(calibration_target instrument21 Star2)
	(instrument instrument22)
	(supports instrument22 thermograph1)
	(supports instrument22 thermograph2)
	(calibration_target instrument22 GroundStation1)
	(on_board instrument20 satellite8)
	(on_board instrument21 satellite8)
	(on_board instrument22 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Phenomenon17)
	(satellite satellite9)
	(instrument instrument23)
	(supports instrument23 spectrograph3)
	(calibration_target instrument23 Star2)
	(on_board instrument23 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Phenomenon99)
	(mode image0)
	(mode thermograph2)
	(mode thermograph1)
	(mode spectrograph3)
	(direction Star0)
	(direction Star3)
	(direction Star4)
	(direction GroundStation1)
	(direction Star2)
	(direction Phenomenon5)
	(direction Star6)
	(direction Star7)
	(direction Phenomenon8)
	(direction Phenomenon9)
	(direction Star10)
	(direction Planet11)
	(direction Phenomenon12)
	(direction Phenomenon13)
	(direction Phenomenon14)
	(direction Phenomenon15)
	(direction Planet16)
	(direction Phenomenon17)
	(direction Planet18)
	(direction Planet19)
	(direction Planet20)
	(direction Phenomenon21)
	(direction Planet22)
	(direction Planet23)
	(direction Phenomenon24)
	(direction Phenomenon25)
	(direction Phenomenon26)
	(direction Phenomenon27)
	(direction Star28)
	(direction Star29)
	(direction Phenomenon30)
	(direction Phenomenon31)
	(direction Phenomenon32)
	(direction Phenomenon33)
	(direction Phenomenon34)
	(direction Planet35)
	(direction Star36)
	(direction Phenomenon37)
	(direction Phenomenon38)
	(direction Phenomenon39)
	(direction Star40)
	(direction Star41)
	(direction Phenomenon42)
	(direction Star43)
	(direction Planet44)
	(direction Planet45)
	(direction Planet46)
	(direction Star47)
	(direction Star48)
	(direction Star49)
	(direction Phenomenon50)
	(direction Phenomenon51)
	(direction Phenomenon52)
	(direction Planet53)
	(direction Planet54)
	(direction Star55)
	(direction Planet56)
	(direction Phenomenon57)
	(direction Phenomenon58)
	(direction Planet59)
	(direction Phenomenon60)
	(direction Star61)
	(direction Star62)
	(direction Star63)
	(direction Planet64)
	(direction Planet65)
	(direction Star66)
	(direction Planet67)
	(direction Phenomenon68)
	(direction Star69)
	(direction Planet70)
	(direction Star71)
	(direction Phenomenon72)
	(direction Planet73)
	(direction Star74)
	(direction Phenomenon75)
	(direction Planet76)
	(direction Star77)
	(direction Planet78)
	(direction Planet79)
	(direction Phenomenon80)
	(direction Phenomenon81)
	(direction Planet82)
	(direction Star83)
	(direction Phenomenon84)
	(direction Planet85)
	(direction Planet86)
	(direction Phenomenon87)
	(direction Planet88)
	(direction Planet89)
	(direction Star90)
	(direction Phenomenon91)
	(direction Star92)
	(direction Phenomenon93)
	(direction Planet94)
	(direction Star95)
	(direction Planet96)
	(direction Phenomenon97)
	(direction Planet98)
	(direction Phenomenon99)
	(direction Planet100)
	(direction Star101)
	(direction Planet102)
	(direction Phenomenon103)
	(direction Phenomenon104)
)
(:goal (and
	(pointing satellite8 Phenomenon57)
	(have_image Phenomenon5 thermograph1)
	(have_image Star6 thermograph1)
	(have_image Star7 spectrograph3)
	(have_image Phenomenon8 image0)
	(have_image Phenomenon9 image0)
	(have_image Star10 spectrograph3)
	(have_image Planet11 thermograph2)
	(have_image Phenomenon12 image0)
	(have_image Phenomenon13 thermograph1)
	(have_image Phenomenon14 thermograph2)
	(have_image Phenomenon15 thermograph1)
	(have_image Planet16 thermograph2)
	(have_image Phenomenon17 thermograph1)
	(have_image Planet18 thermograph1)
	(have_image Planet19 thermograph1)
	(have_image Phenomenon21 image0)
	(have_image Planet22 spectrograph3)
	(have_image Planet23 thermograph2)
	(have_image Phenomenon24 thermograph2)
	(have_image Phenomenon25 thermograph2)
	(have_image Phenomenon26 thermograph2)
	(have_image Phenomenon27 thermograph2)
	(have_image Star28 thermograph2)
	(have_image Phenomenon30 image0)
	(have_image Phenomenon31 image0)
	(have_image Phenomenon32 image0)
	(have_image Phenomenon33 thermograph2)
	(have_image Planet35 thermograph2)
	(have_image Star36 spectrograph3)
	(have_image Phenomenon37 thermograph1)
	(have_image Phenomenon38 thermograph2)
	(have_image Phenomenon39 thermograph2)
	(have_image Star41 thermograph2)
	(have_image Phenomenon42 thermograph2)
	(have_image Star43 thermograph1)
	(have_image Planet44 thermograph2)
	(have_image Planet45 thermograph2)
	(have_image Planet46 thermograph1)
	(have_image Star47 spectrograph3)
	(have_image Star48 spectrograph3)
	(have_image Phenomenon50 spectrograph3)
	(have_image Phenomenon51 image0)
	(have_image Phenomenon52 spectrograph3)
	(have_image Planet53 spectrograph3)
	(have_image Planet54 spectrograph3)
	(have_image Star55 thermograph1)
	(have_image Planet56 thermograph1)
	(have_image Phenomenon57 spectrograph3)
	(have_image Planet59 spectrograph3)
	(have_image Phenomenon60 thermograph2)
	(have_image Star61 thermograph2)
	(have_image Star62 thermograph2)
	(have_image Star63 thermograph2)
	(have_image Planet64 thermograph2)
	(have_image Planet65 spectrograph3)
	(have_image Star66 spectrograph3)
	(have_image Planet67 thermograph2)
	(have_image Phenomenon68 thermograph1)
	(have_image Star69 thermograph2)
	(have_image Planet70 thermograph1)
	(have_image Star71 image0)
	(have_image Phenomenon72 image0)
	(have_image Planet73 thermograph1)
	(have_image Star74 thermograph1)
	(have_image Phenomenon75 thermograph1)
	(have_image Planet76 spectrograph3)
	(have_image Star77 thermograph1)
	(have_image Planet78 image0)
	(have_image Planet79 thermograph2)
	(have_image Phenomenon80 thermograph2)
	(have_image Phenomenon81 thermograph1)
	(have_image Planet82 image0)
	(have_image Star83 spectrograph3)
	(have_image Phenomenon84 thermograph2)
	(have_image Planet85 image0)
	(have_image Planet86 thermograph1)
	(have_image Phenomenon87 spectrograph3)
	(have_image Planet88 image0)
	(have_image Star90 thermograph2)
	(have_image Phenomenon91 spectrograph3)
	(have_image Star92 thermograph1)
	(have_image Phenomenon93 thermograph2)
	(have_image Planet94 thermograph2)
	(have_image Star95 spectrograph3)
	(have_image Planet96 thermograph1)
	(have_image Phenomenon97 spectrograph3)
	(have_image Planet98 spectrograph3)
	(have_image Phenomenon99 thermograph2)
	(have_image Planet100 thermograph1)
	(have_image Star101 image0)
	(have_image Planet102 thermograph2)
	(have_image Phenomenon103 image0)
	(have_image Phenomenon104 thermograph2)
))

)
