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
	instrument7
	satellite3
	instrument8
	satellite4
	instrument9
	instrument10
	image1
	thermograph0
	spectrograph2
	GroundStation1
	GroundStation2
	Star0
	Phenomenon3
	Phenomenon4
	Star5
	Phenomenon6
	Planet7
	Planet8
	Star9
	Star10
	Planet11
	Phenomenon12
	Planet13
	Planet14
	Star15
	Phenomenon16
	Phenomenon17
	Phenomenon18
	Planet19
	Phenomenon20
	Star21
	Planet22
	Planet23
	Planet24
	Phenomenon25
	Planet26
	Planet27
	Phenomenon28
	Phenomenon29
	Star30
	Planet31
	Phenomenon32
	Star33
	Planet34
	Phenomenon35
	Star36
	Planet37
	Planet38
	Planet39
	Phenomenon40
	Star41
	Planet42
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 GroundStation1)
	(instrument instrument1)
	(supports instrument1 thermograph0)
	(supports instrument1 image1)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 Star0)
	(instrument instrument2)
	(supports instrument2 thermograph0)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation2)
	(satellite satellite1)
	(instrument instrument3)
	(supports instrument3 image1)
	(calibration_target instrument3 GroundStation1)
	(instrument instrument4)
	(supports instrument4 image1)
	(supports instrument4 spectrograph2)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation2)
	(instrument instrument5)
	(supports instrument5 spectrograph2)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet11)
	(satellite satellite2)
	(instrument instrument6)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation2)
	(instrument instrument7)
	(supports instrument7 image1)
	(supports instrument7 spectrograph2)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star21)
	(satellite satellite3)
	(instrument instrument8)
	(supports instrument8 thermograph0)
	(supports instrument8 image1)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star41)
	(satellite satellite4)
	(instrument instrument9)
	(supports instrument9 image1)
	(supports instrument9 thermograph0)
	(supports instrument9 spectrograph2)
	(calibration_target instrument9 GroundStation2)
	(instrument instrument10)
	(supports instrument10 spectrograph2)
	(supports instrument10 thermograph0)
	(supports instrument10 image1)
	(calibration_target instrument10 Star0)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet19)
	(mode image1)
	(mode thermograph0)
	(mode spectrograph2)
	(direction GroundStation1)
	(direction GroundStation2)
	(direction Star0)
	(direction Phenomenon3)
	(direction Phenomenon4)
	(direction Star5)
	(direction Phenomenon6)
	(direction Planet7)
	(direction Planet8)
	(direction Star9)
	(direction Star10)
	(direction Planet11)
	(direction Phenomenon12)
	(direction Planet13)
	(direction Planet14)
	(direction Star15)
	(direction Phenomenon16)
	(direction Phenomenon17)
	(direction Phenomenon18)
	(direction Planet19)
	(direction Phenomenon20)
	(direction Star21)
	(direction Planet22)
	(direction Planet23)
	(direction Planet24)
	(direction Phenomenon25)
	(direction Planet26)
	(direction Planet27)
	(direction Phenomenon28)
	(direction Phenomenon29)
	(direction Star30)
	(direction Planet31)
	(direction Phenomenon32)
	(direction Star33)
	(direction Planet34)
	(direction Phenomenon35)
	(direction Star36)
	(direction Planet37)
	(direction Planet38)
	(direction Planet39)
	(direction Phenomenon40)
	(direction Star41)
	(direction Planet42)
)
(:goal (and
	(pointing satellite1 Phenomenon35)
	(pointing satellite2 Planet42)
	(pointing satellite3 GroundStation2)
	(have_image Phenomenon4 thermograph0)
	(have_image Star5 thermograph0)
	(have_image Phenomenon6 thermograph0)
	(have_image Planet7 thermograph0)
	(have_image Planet8 thermograph0)
	(have_image Star9 thermograph0)
	(have_image Star10 thermograph0)
	(have_image Planet13 spectrograph2)
	(have_image Planet14 spectrograph2)
	(have_image Star15 thermograph0)
	(have_image Phenomenon17 thermograph0)
	(have_image Phenomenon18 thermograph0)
	(have_image Planet19 spectrograph2)
	(have_image Star21 thermograph0)
	(have_image Planet22 image1)
	(have_image Planet23 spectrograph2)
	(have_image Planet24 thermograph0)
	(have_image Phenomenon25 image1)
	(have_image Planet27 thermograph0)
	(have_image Phenomenon28 thermograph0)
	(have_image Phenomenon29 image1)
	(have_image Star30 spectrograph2)
	(have_image Planet31 spectrograph2)
	(have_image Phenomenon32 thermograph0)
	(have_image Star33 image1)
	(have_image Planet34 image1)
	(have_image Phenomenon35 image1)
	(have_image Star36 spectrograph2)
	(have_image Planet37 thermograph0)
	(have_image Planet38 image1)
	(have_image Planet39 image1)
	(have_image Phenomenon40 thermograph0)
	(have_image Star41 image1)
	(have_image Planet42 spectrograph2)
))

)
