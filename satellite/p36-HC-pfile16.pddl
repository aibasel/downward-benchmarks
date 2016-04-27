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
	satellite2
	instrument5
	instrument6
	satellite3
	instrument7
	satellite4
	instrument8
	instrument9
	instrument10
	satellite5
	instrument11
	satellite6
	instrument12
	instrument13
	satellite7
	instrument14
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
	image0
	infrared4
	thermograph1
	spectrograph3
	image2
	GroundStation4
	Star2
	GroundStation0
	Star3
	GroundStation1
	Phenomenon5
	Planet6
	Planet7
	Planet8
	Phenomenon9
	Planet10
	Planet11
	Star12
	Star13
	Star14
	Star15
	Star16
	Phenomenon17
	Phenomenon18
	Planet19
	Star20
	Planet21
	Planet22
	Phenomenon23
	Star24
	Planet25
	Planet26
	Star27
	Phenomenon28
	Planet29
	Phenomenon30
	Planet31
	Star32
	Phenomenon33
	Star34
	Phenomenon35
	Phenomenon36
	Phenomenon37
	Star38
	Phenomenon39
	Planet40
	Planet41
	Star42
	Phenomenon43
	Star44
	Phenomenon45
	Phenomenon46
	Phenomenon47
	Planet48
	Planet49
	Star50
	Phenomenon51
	Star52
	Star53
	Star54
	Phenomenon55
	Star56
	Phenomenon57
	Star58
	Planet59
	Phenomenon60
	Phenomenon61
	Star62
	Phenomenon63
	Planet64
	Phenomenon65
	Planet66
	Planet67
	Phenomenon68
	Planet69
	Phenomenon70
	Planet71
	Planet72
	Phenomenon73
	Phenomenon74
	Planet75
	Star76
	Phenomenon77
	Phenomenon78
	Phenomenon79
	Phenomenon80
	Planet81
	Phenomenon82
	Phenomenon83
	Planet84
	Star85
	Planet86
	Star87
	Star88
	Star89
	Planet90
	Star91
	Planet92
	Star93
	Phenomenon94
	Phenomenon95
	Phenomenon96
	Star97
	Star98
	Star99
	Planet100
	Planet101
	Phenomenon102
	Phenomenon103
	Star104
	Star105
	Planet106
	Star107
	Planet108
	Phenomenon109
	Star110
	Star111
	Planet112
	Phenomenon113
	Phenomenon114
	Star115
	Planet116
	Planet117
	Star118
	Star119
	Planet120
	Phenomenon121
	Phenomenon122
	Phenomenon123
	Phenomenon124
	Phenomenon125
	Phenomenon126
	Phenomenon127
	Planet128
	Planet129
	Planet130
	Planet131
	Phenomenon132
	Star133
	Star134
	Star135
	Phenomenon136
	Planet137
	Star138
	Planet139
	Planet140
	Phenomenon141
	Star142
	Phenomenon143
	Planet144
	Planet145
	Planet146
	Star147
	Planet148
	Planet149
	Planet150
	Planet151
	Planet152
	Planet153
	Star154
	Star155
	Star156
	Planet157
	Star158
	Planet159
	Planet160
	Planet161
	Phenomenon162
	Star163
	Planet164
	Star165
	Star166
	Star167
	Planet168
	Planet169
	Planet170
	Phenomenon171
	Phenomenon172
	Phenomenon173
	Phenomenon174
	Planet175
	Planet176
	Phenomenon177
	Phenomenon178
	Planet179
	Phenomenon180
	Star181
	Planet182
	Star183
	Star184
	Planet185
	Planet186
	Star187
	Planet188
	Star189
	Planet190
	Phenomenon191
	Planet192
	Planet193
	Planet194
	Phenomenon195
	Star196
	Planet197
	Planet198
	Phenomenon199
	Star200
	Planet201
	Planet202
	Phenomenon203
	Star204
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 image0)
	(supports instrument0 image2)
	(calibration_target instrument0 Star3)
	(instrument instrument1)
	(supports instrument1 image2)
	(supports instrument1 spectrograph3)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 GroundStation4)
	(instrument instrument2)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet128)
	(satellite satellite1)
	(instrument instrument3)
	(supports instrument3 image0)
	(supports instrument3 infrared4)
	(supports instrument3 image2)
	(calibration_target instrument3 GroundStation1)
	(instrument instrument4)
	(supports instrument4 image2)
	(supports instrument4 infrared4)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet149)
	(satellite satellite2)
	(instrument instrument5)
	(supports instrument5 spectrograph3)
	(supports instrument5 thermograph1)
	(supports instrument5 infrared4)
	(calibration_target instrument5 GroundStation1)
	(instrument instrument6)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 Star2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet144)
	(satellite satellite3)
	(instrument instrument7)
	(supports instrument7 image2)
	(calibration_target instrument7 Star2)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star105)
	(satellite satellite4)
	(instrument instrument8)
	(supports instrument8 infrared4)
	(calibration_target instrument8 GroundStation0)
	(instrument instrument9)
	(supports instrument9 spectrograph3)
	(supports instrument9 image0)
	(supports instrument9 infrared4)
	(calibration_target instrument9 GroundStation4)
	(instrument instrument10)
	(supports instrument10 image0)
	(supports instrument10 spectrograph3)
	(supports instrument10 image2)
	(calibration_target instrument10 GroundStation0)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet137)
	(satellite satellite5)
	(instrument instrument11)
	(supports instrument11 spectrograph3)
	(calibration_target instrument11 Star2)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Planet31)
	(satellite satellite6)
	(instrument instrument12)
	(supports instrument12 infrared4)
	(calibration_target instrument12 GroundStation4)
	(instrument instrument13)
	(supports instrument13 image2)
	(calibration_target instrument13 Star2)
	(on_board instrument12 satellite6)
	(on_board instrument13 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Planet168)
	(satellite satellite7)
	(instrument instrument14)
	(supports instrument14 thermograph1)
	(supports instrument14 image0)
	(calibration_target instrument14 GroundStation0)
	(instrument instrument15)
	(supports instrument15 infrared4)
	(supports instrument15 image2)
	(supports instrument15 spectrograph3)
	(calibration_target instrument15 GroundStation1)
	(instrument instrument16)
	(supports instrument16 spectrograph3)
	(supports instrument16 thermograph1)
	(supports instrument16 image0)
	(calibration_target instrument16 GroundStation0)
	(on_board instrument14 satellite7)
	(on_board instrument15 satellite7)
	(on_board instrument16 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Phenomenon79)
	(satellite satellite8)
	(instrument instrument17)
	(supports instrument17 spectrograph3)
	(supports instrument17 image0)
	(supports instrument17 thermograph1)
	(calibration_target instrument17 GroundStation1)
	(instrument instrument18)
	(supports instrument18 infrared4)
	(supports instrument18 thermograph1)
	(supports instrument18 image0)
	(calibration_target instrument18 GroundStation0)
	(instrument instrument19)
	(supports instrument19 infrared4)
	(supports instrument19 image0)
	(supports instrument19 spectrograph3)
	(calibration_target instrument19 GroundStation0)
	(on_board instrument17 satellite8)
	(on_board instrument18 satellite8)
	(on_board instrument19 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Planet176)
	(satellite satellite9)
	(instrument instrument20)
	(supports instrument20 thermograph1)
	(calibration_target instrument20 Star3)
	(instrument instrument21)
	(supports instrument21 thermograph1)
	(calibration_target instrument21 Star3)
	(instrument instrument22)
	(supports instrument22 image2)
	(supports instrument22 spectrograph3)
	(calibration_target instrument22 GroundStation1)
	(on_board instrument20 satellite9)
	(on_board instrument21 satellite9)
	(on_board instrument22 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Planet116)
	(mode image0)
	(mode infrared4)
	(mode thermograph1)
	(mode spectrograph3)
	(mode image2)
	(direction GroundStation4)
	(direction Star2)
	(direction GroundStation0)
	(direction Star3)
	(direction GroundStation1)
	(direction Phenomenon5)
	(direction Planet6)
	(direction Planet7)
	(direction Planet8)
	(direction Phenomenon9)
	(direction Planet10)
	(direction Planet11)
	(direction Star12)
	(direction Star13)
	(direction Star14)
	(direction Star15)
	(direction Star16)
	(direction Phenomenon17)
	(direction Phenomenon18)
	(direction Planet19)
	(direction Star20)
	(direction Planet21)
	(direction Planet22)
	(direction Phenomenon23)
	(direction Star24)
	(direction Planet25)
	(direction Planet26)
	(direction Star27)
	(direction Phenomenon28)
	(direction Planet29)
	(direction Phenomenon30)
	(direction Planet31)
	(direction Star32)
	(direction Phenomenon33)
	(direction Star34)
	(direction Phenomenon35)
	(direction Phenomenon36)
	(direction Phenomenon37)
	(direction Star38)
	(direction Phenomenon39)
	(direction Planet40)
	(direction Planet41)
	(direction Star42)
	(direction Phenomenon43)
	(direction Star44)
	(direction Phenomenon45)
	(direction Phenomenon46)
	(direction Phenomenon47)
	(direction Planet48)
	(direction Planet49)
	(direction Star50)
	(direction Phenomenon51)
	(direction Star52)
	(direction Star53)
	(direction Star54)
	(direction Phenomenon55)
	(direction Star56)
	(direction Phenomenon57)
	(direction Star58)
	(direction Planet59)
	(direction Phenomenon60)
	(direction Phenomenon61)
	(direction Star62)
	(direction Phenomenon63)
	(direction Planet64)
	(direction Phenomenon65)
	(direction Planet66)
	(direction Planet67)
	(direction Phenomenon68)
	(direction Planet69)
	(direction Phenomenon70)
	(direction Planet71)
	(direction Planet72)
	(direction Phenomenon73)
	(direction Phenomenon74)
	(direction Planet75)
	(direction Star76)
	(direction Phenomenon77)
	(direction Phenomenon78)
	(direction Phenomenon79)
	(direction Phenomenon80)
	(direction Planet81)
	(direction Phenomenon82)
	(direction Phenomenon83)
	(direction Planet84)
	(direction Star85)
	(direction Planet86)
	(direction Star87)
	(direction Star88)
	(direction Star89)
	(direction Planet90)
	(direction Star91)
	(direction Planet92)
	(direction Star93)
	(direction Phenomenon94)
	(direction Phenomenon95)
	(direction Phenomenon96)
	(direction Star97)
	(direction Star98)
	(direction Star99)
	(direction Planet100)
	(direction Planet101)
	(direction Phenomenon102)
	(direction Phenomenon103)
	(direction Star104)
	(direction Star105)
	(direction Planet106)
	(direction Star107)
	(direction Planet108)
	(direction Phenomenon109)
	(direction Star110)
	(direction Star111)
	(direction Planet112)
	(direction Phenomenon113)
	(direction Phenomenon114)
	(direction Star115)
	(direction Planet116)
	(direction Planet117)
	(direction Star118)
	(direction Star119)
	(direction Planet120)
	(direction Phenomenon121)
	(direction Phenomenon122)
	(direction Phenomenon123)
	(direction Phenomenon124)
	(direction Phenomenon125)
	(direction Phenomenon126)
	(direction Phenomenon127)
	(direction Planet128)
	(direction Planet129)
	(direction Planet130)
	(direction Planet131)
	(direction Phenomenon132)
	(direction Star133)
	(direction Star134)
	(direction Star135)
	(direction Phenomenon136)
	(direction Planet137)
	(direction Star138)
	(direction Planet139)
	(direction Planet140)
	(direction Phenomenon141)
	(direction Star142)
	(direction Phenomenon143)
	(direction Planet144)
	(direction Planet145)
	(direction Planet146)
	(direction Star147)
	(direction Planet148)
	(direction Planet149)
	(direction Planet150)
	(direction Planet151)
	(direction Planet152)
	(direction Planet153)
	(direction Star154)
	(direction Star155)
	(direction Star156)
	(direction Planet157)
	(direction Star158)
	(direction Planet159)
	(direction Planet160)
	(direction Planet161)
	(direction Phenomenon162)
	(direction Star163)
	(direction Planet164)
	(direction Star165)
	(direction Star166)
	(direction Star167)
	(direction Planet168)
	(direction Planet169)
	(direction Planet170)
	(direction Phenomenon171)
	(direction Phenomenon172)
	(direction Phenomenon173)
	(direction Phenomenon174)
	(direction Planet175)
	(direction Planet176)
	(direction Phenomenon177)
	(direction Phenomenon178)
	(direction Planet179)
	(direction Phenomenon180)
	(direction Star181)
	(direction Planet182)
	(direction Star183)
	(direction Star184)
	(direction Planet185)
	(direction Planet186)
	(direction Star187)
	(direction Planet188)
	(direction Star189)
	(direction Planet190)
	(direction Phenomenon191)
	(direction Planet192)
	(direction Planet193)
	(direction Planet194)
	(direction Phenomenon195)
	(direction Star196)
	(direction Planet197)
	(direction Planet198)
	(direction Phenomenon199)
	(direction Star200)
	(direction Planet201)
	(direction Planet202)
	(direction Phenomenon203)
	(direction Star204)
)
(:goal (and
	(pointing satellite1 Star142)
	(pointing satellite4 Phenomenon78)
	(pointing satellite7 Planet26)
	(have_image Phenomenon5 thermograph1)
	(have_image Planet6 infrared4)
	(have_image Planet7 image0)
	(have_image Planet8 thermograph1)
	(have_image Phenomenon9 image2)
	(have_image Planet10 image0)
	(have_image Planet11 infrared4)
	(have_image Star12 image0)
	(have_image Star13 image0)
	(have_image Star14 thermograph1)
	(have_image Star15 image0)
	(have_image Star16 thermograph1)
	(have_image Phenomenon17 infrared4)
	(have_image Phenomenon18 spectrograph3)
	(have_image Star20 image0)
	(have_image Planet21 thermograph1)
	(have_image Planet22 image2)
	(have_image Phenomenon23 image0)
	(have_image Star24 infrared4)
	(have_image Planet26 infrared4)
	(have_image Star27 image2)
	(have_image Phenomenon28 image2)
	(have_image Planet29 image0)
	(have_image Planet31 spectrograph3)
	(have_image Star32 image0)
	(have_image Phenomenon33 spectrograph3)
	(have_image Star34 image0)
	(have_image Phenomenon35 image2)
	(have_image Phenomenon36 infrared4)
	(have_image Phenomenon37 image2)
	(have_image Star38 thermograph1)
	(have_image Phenomenon39 image2)
	(have_image Planet40 image0)
	(have_image Planet41 thermograph1)
	(have_image Star42 infrared4)
	(have_image Star44 thermograph1)
	(have_image Phenomenon45 thermograph1)
	(have_image Phenomenon46 image0)
	(have_image Planet48 spectrograph3)
	(have_image Planet49 thermograph1)
	(have_image Phenomenon51 infrared4)
	(have_image Star52 infrared4)
	(have_image Star53 image0)
	(have_image Star54 spectrograph3)
	(have_image Phenomenon55 image0)
	(have_image Star56 infrared4)
	(have_image Phenomenon57 thermograph1)
	(have_image Star58 thermograph1)
	(have_image Planet59 infrared4)
	(have_image Phenomenon60 infrared4)
	(have_image Phenomenon61 infrared4)
	(have_image Star62 infrared4)
	(have_image Phenomenon63 infrared4)
	(have_image Planet64 image2)
	(have_image Phenomenon65 spectrograph3)
	(have_image Planet67 image2)
	(have_image Phenomenon68 spectrograph3)
	(have_image Phenomenon70 spectrograph3)
	(have_image Planet72 image2)
	(have_image Phenomenon73 image2)
	(have_image Phenomenon74 spectrograph3)
	(have_image Planet75 infrared4)
	(have_image Phenomenon77 image2)
	(have_image Phenomenon78 image0)
	(have_image Phenomenon79 spectrograph3)
	(have_image Phenomenon80 infrared4)
	(have_image Planet81 infrared4)
	(have_image Phenomenon82 infrared4)
	(have_image Phenomenon83 spectrograph3)
	(have_image Planet84 image0)
	(have_image Star85 infrared4)
	(have_image Planet86 thermograph1)
	(have_image Star87 image2)
	(have_image Star88 image0)
	(have_image Star89 infrared4)
	(have_image Planet90 image0)
	(have_image Planet92 image2)
	(have_image Star93 thermograph1)
	(have_image Phenomenon94 image0)
	(have_image Phenomenon96 image0)
	(have_image Star97 infrared4)
	(have_image Star98 image0)
	(have_image Star99 infrared4)
	(have_image Planet100 spectrograph3)
	(have_image Planet101 image0)
	(have_image Phenomenon102 spectrograph3)
	(have_image Phenomenon103 thermograph1)
	(have_image Star104 spectrograph3)
	(have_image Star105 image0)
	(have_image Planet106 thermograph1)
	(have_image Star107 image0)
	(have_image Planet108 image2)
	(have_image Phenomenon109 image0)
	(have_image Star110 infrared4)
	(have_image Star111 spectrograph3)
	(have_image Planet112 spectrograph3)
	(have_image Phenomenon113 infrared4)
	(have_image Star115 spectrograph3)
	(have_image Planet116 thermograph1)
	(have_image Planet117 image2)
	(have_image Star118 spectrograph3)
	(have_image Star119 infrared4)
	(have_image Planet120 spectrograph3)
	(have_image Phenomenon121 image0)
	(have_image Phenomenon122 image2)
	(have_image Phenomenon124 image2)
	(have_image Phenomenon125 image0)
	(have_image Phenomenon126 infrared4)
	(have_image Planet128 image0)
	(have_image Planet129 image2)
	(have_image Planet130 thermograph1)
	(have_image Planet131 image2)
	(have_image Phenomenon132 spectrograph3)
	(have_image Star133 spectrograph3)
	(have_image Star134 infrared4)
	(have_image Star135 image2)
	(have_image Phenomenon136 image2)
	(have_image Planet137 infrared4)
	(have_image Star138 image2)
	(have_image Planet139 spectrograph3)
	(have_image Phenomenon141 thermograph1)
	(have_image Star142 thermograph1)
	(have_image Phenomenon143 image2)
	(have_image Planet144 infrared4)
	(have_image Planet145 image0)
	(have_image Planet146 thermograph1)
	(have_image Star147 image0)
	(have_image Planet148 infrared4)
	(have_image Planet150 thermograph1)
	(have_image Planet151 image0)
	(have_image Planet152 spectrograph3)
	(have_image Planet153 spectrograph3)
	(have_image Star154 thermograph1)
	(have_image Star155 image2)
	(have_image Star156 image0)
	(have_image Planet157 image2)
	(have_image Star158 image0)
	(have_image Planet159 image0)
	(have_image Planet160 spectrograph3)
	(have_image Planet161 thermograph1)
	(have_image Phenomenon162 spectrograph3)
	(have_image Star163 image2)
	(have_image Star166 image0)
	(have_image Planet168 spectrograph3)
	(have_image Planet169 image2)
	(have_image Planet170 infrared4)
	(have_image Phenomenon171 thermograph1)
	(have_image Phenomenon172 image0)
	(have_image Phenomenon173 image2)
	(have_image Phenomenon174 thermograph1)
	(have_image Planet175 image2)
	(have_image Planet176 spectrograph3)
	(have_image Phenomenon177 infrared4)
	(have_image Phenomenon178 thermograph1)
	(have_image Planet179 infrared4)
	(have_image Star181 thermograph1)
	(have_image Planet182 infrared4)
	(have_image Star183 thermograph1)
	(have_image Planet185 image0)
	(have_image Planet186 image2)
	(have_image Planet188 image0)
	(have_image Star189 thermograph1)
	(have_image Planet190 image0)
	(have_image Phenomenon191 image0)
	(have_image Planet192 image0)
	(have_image Planet193 thermograph1)
	(have_image Planet194 thermograph1)
	(have_image Phenomenon195 spectrograph3)
	(have_image Star196 infrared4)
	(have_image Planet198 infrared4)
	(have_image Phenomenon199 image2)
	(have_image Star200 image2)
	(have_image Planet202 image2)
	(have_image Phenomenon203 thermograph1)
	(have_image Star204 infrared4)
))

)
