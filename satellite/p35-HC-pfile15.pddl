(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	instrument1
	satellite1
	instrument2
	satellite2
	instrument3
	satellite3
	instrument4
	instrument5
	instrument6
	satellite4
	instrument7
	instrument8
	instrument9
	satellite5
	instrument10
	satellite6
	instrument11
	instrument12
	instrument13
	satellite7
	instrument14
	instrument15
	infrared0
	thermograph3
	spectrograph2
	image1
	thermograph4
	Star1
	GroundStation0
	Star3
	Star4
	GroundStation2
	Phenomenon5
	Planet6
	Planet7
	Star8
	Phenomenon9
	Phenomenon10
	Planet11
	Star12
	Star13
	Planet14
	Star15
	Phenomenon16
	Planet17
	Star18
	Star19
	Planet20
	Planet21
	Planet22
	Planet23
	Planet24
	Phenomenon25
	Planet26
	Phenomenon27
	Phenomenon28
	Planet29
	Planet30
	Phenomenon31
	Planet32
	Planet33
	Star34
	Phenomenon35
	Phenomenon36
	Planet37
	Phenomenon38
	Star39
	Planet40
	Star41
	Phenomenon42
	Phenomenon43
	Planet44
	Star45
	Planet46
	Planet47
	Star48
	Planet49
	Star50
	Star51
	Star52
	Planet53
	Planet54
	Phenomenon55
	Planet56
	Phenomenon57
	Phenomenon58
	Planet59
	Star60
	Planet61
	Star62
	Star63
	Star64
	Phenomenon65
	Star66
	Phenomenon67
	Phenomenon68
	Star69
	Planet70
	Phenomenon71
	Phenomenon72
	Star73
	Phenomenon74
	Planet75
	Star76
	Planet77
	Planet78
	Planet79
	Planet80
	Planet81
	Star82
	Planet83
	Phenomenon84
	Planet85
	Phenomenon86
	Phenomenon87
	Planet88
	Planet89
	Star90
	Phenomenon91
	Planet92
	Planet93
	Planet94
	Star95
	Phenomenon96
	Planet97
	Planet98
	Planet99
	Phenomenon100
	Planet101
	Star102
	Star103
	Phenomenon104
	Planet105
	Star106
	Star107
	Star108
	Star109
	Phenomenon110
	Star111
	Star112
	Star113
	Star114
	Phenomenon115
	Planet116
	Phenomenon117
	Planet118
	Planet119
	Star120
	Phenomenon121
	Planet122
	Phenomenon123
	Phenomenon124
	Planet125
	Star126
	Planet127
	Phenomenon128
	Star129
	Star130
	Phenomenon131
	Star132
	Star133
	Planet134
	Planet135
	Star136
	Phenomenon137
	Planet138
	Planet139
	Phenomenon140
	Planet141
	Phenomenon142
	Planet143
	Star144
	Phenomenon145
	Phenomenon146
	Phenomenon147
	Planet148
	Phenomenon149
	Planet150
	Star151
	Star152
	Phenomenon153
	Planet154
	Star155
	Star156
	Phenomenon157
	Phenomenon158
	Planet159
	Planet160
	Planet161
	Star162
	Planet163
	Planet164
	Star165
	Phenomenon166
	Star167
	Star168
	Star169
	Planet170
	Planet171
	Star172
	Planet173
	Planet174
	Phenomenon175
	Phenomenon176
	Star177
	Planet178
	Planet179
	Phenomenon180
	Star181
	Star182
	Phenomenon183
	Star184
	Star185
	Phenomenon186
	Planet187
	Star188
	Star189
	Phenomenon190
	Planet191
	Star192
	Phenomenon193
	Planet194
	Phenomenon195
	Star196
	Planet197
	Planet198
	Planet199
	Phenomenon200
	Phenomenon201
	Star202
	Phenomenon203
	Star204
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 thermograph4)
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 Star4)
	(instrument instrument1)
	(supports instrument1 thermograph3)
	(supports instrument1 thermograph4)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 Star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon183)
	(satellite satellite1)
	(instrument instrument2)
	(supports instrument2 infrared0)
	(supports instrument2 thermograph4)
	(calibration_target instrument2 Star1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon96)
	(satellite satellite2)
	(instrument instrument3)
	(supports instrument3 thermograph3)
	(supports instrument3 infrared0)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 Star1)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon100)
	(satellite satellite3)
	(instrument instrument4)
	(supports instrument4 thermograph4)
	(supports instrument4 spectrograph2)
	(supports instrument4 thermograph3)
	(calibration_target instrument4 Star4)
	(instrument instrument5)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 Star3)
	(instrument instrument6)
	(supports instrument6 spectrograph2)
	(supports instrument6 image1)
	(supports instrument6 infrared0)
	(calibration_target instrument6 Star3)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet179)
	(satellite satellite4)
	(instrument instrument7)
	(supports instrument7 thermograph3)
	(supports instrument7 infrared0)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 GroundStation2)
	(instrument instrument8)
	(supports instrument8 thermograph4)
	(supports instrument8 thermograph3)
	(calibration_target instrument8 Star4)
	(instrument instrument9)
	(supports instrument9 infrared0)
	(supports instrument9 thermograph3)
	(supports instrument9 thermograph4)
	(calibration_target instrument9 Star3)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet46)
	(satellite satellite5)
	(instrument instrument10)
	(supports instrument10 thermograph4)
	(calibration_target instrument10 GroundStation0)
	(on_board instrument10 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Star106)
	(satellite satellite6)
	(instrument instrument11)
	(supports instrument11 spectrograph2)
	(supports instrument11 thermograph4)
	(supports instrument11 thermograph3)
	(calibration_target instrument11 Star3)
	(instrument instrument12)
	(supports instrument12 thermograph4)
	(supports instrument12 image1)
	(calibration_target instrument12 GroundStation0)
	(instrument instrument13)
	(supports instrument13 spectrograph2)
	(supports instrument13 thermograph4)
	(calibration_target instrument13 Star3)
	(on_board instrument11 satellite6)
	(on_board instrument12 satellite6)
	(on_board instrument13 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Star95)
	(satellite satellite7)
	(instrument instrument14)
	(supports instrument14 spectrograph2)
	(supports instrument14 thermograph3)
	(calibration_target instrument14 Star4)
	(instrument instrument15)
	(supports instrument15 thermograph4)
	(supports instrument15 image1)
	(calibration_target instrument15 GroundStation2)
	(on_board instrument14 satellite7)
	(on_board instrument15 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Star13)
	(mode infrared0)
	(mode thermograph3)
	(mode spectrograph2)
	(mode image1)
	(mode thermograph4)
	(direction Star1)
	(direction GroundStation0)
	(direction Star3)
	(direction Star4)
	(direction GroundStation2)
	(direction Phenomenon5)
	(direction Planet6)
	(direction Planet7)
	(direction Star8)
	(direction Phenomenon9)
	(direction Phenomenon10)
	(direction Planet11)
	(direction Star12)
	(direction Star13)
	(direction Planet14)
	(direction Star15)
	(direction Phenomenon16)
	(direction Planet17)
	(direction Star18)
	(direction Star19)
	(direction Planet20)
	(direction Planet21)
	(direction Planet22)
	(direction Planet23)
	(direction Planet24)
	(direction Phenomenon25)
	(direction Planet26)
	(direction Phenomenon27)
	(direction Phenomenon28)
	(direction Planet29)
	(direction Planet30)
	(direction Phenomenon31)
	(direction Planet32)
	(direction Planet33)
	(direction Star34)
	(direction Phenomenon35)
	(direction Phenomenon36)
	(direction Planet37)
	(direction Phenomenon38)
	(direction Star39)
	(direction Planet40)
	(direction Star41)
	(direction Phenomenon42)
	(direction Phenomenon43)
	(direction Planet44)
	(direction Star45)
	(direction Planet46)
	(direction Planet47)
	(direction Star48)
	(direction Planet49)
	(direction Star50)
	(direction Star51)
	(direction Star52)
	(direction Planet53)
	(direction Planet54)
	(direction Phenomenon55)
	(direction Planet56)
	(direction Phenomenon57)
	(direction Phenomenon58)
	(direction Planet59)
	(direction Star60)
	(direction Planet61)
	(direction Star62)
	(direction Star63)
	(direction Star64)
	(direction Phenomenon65)
	(direction Star66)
	(direction Phenomenon67)
	(direction Phenomenon68)
	(direction Star69)
	(direction Planet70)
	(direction Phenomenon71)
	(direction Phenomenon72)
	(direction Star73)
	(direction Phenomenon74)
	(direction Planet75)
	(direction Star76)
	(direction Planet77)
	(direction Planet78)
	(direction Planet79)
	(direction Planet80)
	(direction Planet81)
	(direction Star82)
	(direction Planet83)
	(direction Phenomenon84)
	(direction Planet85)
	(direction Phenomenon86)
	(direction Phenomenon87)
	(direction Planet88)
	(direction Planet89)
	(direction Star90)
	(direction Phenomenon91)
	(direction Planet92)
	(direction Planet93)
	(direction Planet94)
	(direction Star95)
	(direction Phenomenon96)
	(direction Planet97)
	(direction Planet98)
	(direction Planet99)
	(direction Phenomenon100)
	(direction Planet101)
	(direction Star102)
	(direction Star103)
	(direction Phenomenon104)
	(direction Planet105)
	(direction Star106)
	(direction Star107)
	(direction Star108)
	(direction Star109)
	(direction Phenomenon110)
	(direction Star111)
	(direction Star112)
	(direction Star113)
	(direction Star114)
	(direction Phenomenon115)
	(direction Planet116)
	(direction Phenomenon117)
	(direction Planet118)
	(direction Planet119)
	(direction Star120)
	(direction Phenomenon121)
	(direction Planet122)
	(direction Phenomenon123)
	(direction Phenomenon124)
	(direction Planet125)
	(direction Star126)
	(direction Planet127)
	(direction Phenomenon128)
	(direction Star129)
	(direction Star130)
	(direction Phenomenon131)
	(direction Star132)
	(direction Star133)
	(direction Planet134)
	(direction Planet135)
	(direction Star136)
	(direction Phenomenon137)
	(direction Planet138)
	(direction Planet139)
	(direction Phenomenon140)
	(direction Planet141)
	(direction Phenomenon142)
	(direction Planet143)
	(direction Star144)
	(direction Phenomenon145)
	(direction Phenomenon146)
	(direction Phenomenon147)
	(direction Planet148)
	(direction Phenomenon149)
	(direction Planet150)
	(direction Star151)
	(direction Star152)
	(direction Phenomenon153)
	(direction Planet154)
	(direction Star155)
	(direction Star156)
	(direction Phenomenon157)
	(direction Phenomenon158)
	(direction Planet159)
	(direction Planet160)
	(direction Planet161)
	(direction Star162)
	(direction Planet163)
	(direction Planet164)
	(direction Star165)
	(direction Phenomenon166)
	(direction Star167)
	(direction Star168)
	(direction Star169)
	(direction Planet170)
	(direction Planet171)
	(direction Star172)
	(direction Planet173)
	(direction Planet174)
	(direction Phenomenon175)
	(direction Phenomenon176)
	(direction Star177)
	(direction Planet178)
	(direction Planet179)
	(direction Phenomenon180)
	(direction Star181)
	(direction Star182)
	(direction Phenomenon183)
	(direction Star184)
	(direction Star185)
	(direction Phenomenon186)
	(direction Planet187)
	(direction Star188)
	(direction Star189)
	(direction Phenomenon190)
	(direction Planet191)
	(direction Star192)
	(direction Phenomenon193)
	(direction Planet194)
	(direction Phenomenon195)
	(direction Star196)
	(direction Planet197)
	(direction Planet198)
	(direction Planet199)
	(direction Phenomenon200)
	(direction Phenomenon201)
	(direction Star202)
	(direction Phenomenon203)
	(direction Star204)
)
(:goal (and
	(pointing satellite1 Star45)
	(pointing satellite2 Planet101)
	(pointing satellite4 Phenomenon183)
	(have_image Phenomenon5 spectrograph2)
	(have_image Planet6 spectrograph2)
	(have_image Planet7 infrared0)
	(have_image Phenomenon9 infrared0)
	(have_image Phenomenon10 image1)
	(have_image Planet11 image1)
	(have_image Star12 thermograph3)
	(have_image Star13 thermograph3)
	(have_image Planet14 thermograph4)
	(have_image Star15 thermograph4)
	(have_image Phenomenon16 image1)
	(have_image Planet17 thermograph3)
	(have_image Star18 image1)
	(have_image Planet20 image1)
	(have_image Planet21 infrared0)
	(have_image Planet22 image1)
	(have_image Planet23 thermograph3)
	(have_image Planet24 infrared0)
	(have_image Phenomenon25 thermograph4)
	(have_image Planet26 thermograph4)
	(have_image Phenomenon27 spectrograph2)
	(have_image Phenomenon28 infrared0)
	(have_image Planet29 infrared0)
	(have_image Planet30 thermograph4)
	(have_image Phenomenon31 image1)
	(have_image Planet32 spectrograph2)
	(have_image Planet33 spectrograph2)
	(have_image Star34 thermograph4)
	(have_image Phenomenon35 thermograph3)
	(have_image Phenomenon36 image1)
	(have_image Phenomenon38 image1)
	(have_image Star39 thermograph3)
	(have_image Planet40 thermograph4)
	(have_image Star41 thermograph3)
	(have_image Phenomenon42 infrared0)
	(have_image Phenomenon43 thermograph4)
	(have_image Planet44 infrared0)
	(have_image Planet46 infrared0)
	(have_image Planet47 infrared0)
	(have_image Star48 thermograph4)
	(have_image Planet49 infrared0)
	(have_image Star50 spectrograph2)
	(have_image Star51 spectrograph2)
	(have_image Star52 spectrograph2)
	(have_image Planet53 image1)
	(have_image Planet54 thermograph3)
	(have_image Phenomenon55 thermograph4)
	(have_image Planet56 thermograph3)
	(have_image Phenomenon58 thermograph4)
	(have_image Planet59 thermograph3)
	(have_image Planet61 thermograph4)
	(have_image Star62 thermograph3)
	(have_image Star63 infrared0)
	(have_image Star64 thermograph4)
	(have_image Phenomenon65 infrared0)
	(have_image Star66 thermograph3)
	(have_image Phenomenon67 thermograph3)
	(have_image Phenomenon68 infrared0)
	(have_image Star69 infrared0)
	(have_image Planet70 thermograph3)
	(have_image Phenomenon71 thermograph4)
	(have_image Phenomenon72 thermograph3)
	(have_image Star73 spectrograph2)
	(have_image Planet75 image1)
	(have_image Star76 spectrograph2)
	(have_image Planet77 spectrograph2)
	(have_image Planet78 thermograph4)
	(have_image Planet79 spectrograph2)
	(have_image Planet80 image1)
	(have_image Planet81 thermograph4)
	(have_image Star82 image1)
	(have_image Planet83 infrared0)
	(have_image Phenomenon84 image1)
	(have_image Planet85 thermograph3)
	(have_image Phenomenon86 thermograph3)
	(have_image Phenomenon87 spectrograph2)
	(have_image Planet89 infrared0)
	(have_image Star90 infrared0)
	(have_image Phenomenon91 infrared0)
	(have_image Planet92 infrared0)
	(have_image Planet93 spectrograph2)
	(have_image Planet94 infrared0)
	(have_image Star95 image1)
	(have_image Phenomenon96 infrared0)
	(have_image Planet97 infrared0)
	(have_image Planet98 thermograph4)
	(have_image Planet99 image1)
	(have_image Phenomenon100 infrared0)
	(have_image Planet101 infrared0)
	(have_image Star102 spectrograph2)
	(have_image Star103 thermograph4)
	(have_image Phenomenon104 image1)
	(have_image Planet105 thermograph4)
	(have_image Star106 spectrograph2)
	(have_image Star107 infrared0)
	(have_image Star108 thermograph4)
	(have_image Star109 infrared0)
	(have_image Phenomenon110 spectrograph2)
	(have_image Star111 image1)
	(have_image Star112 thermograph3)
	(have_image Star114 spectrograph2)
	(have_image Phenomenon115 spectrograph2)
	(have_image Planet116 spectrograph2)
	(have_image Phenomenon117 spectrograph2)
	(have_image Planet118 image1)
	(have_image Planet119 thermograph3)
	(have_image Star120 infrared0)
	(have_image Phenomenon121 thermograph3)
	(have_image Planet122 infrared0)
	(have_image Phenomenon123 thermograph3)
	(have_image Phenomenon124 spectrograph2)
	(have_image Planet125 thermograph3)
	(have_image Star126 thermograph3)
	(have_image Planet127 spectrograph2)
	(have_image Phenomenon128 image1)
	(have_image Star129 spectrograph2)
	(have_image Star130 infrared0)
	(have_image Phenomenon131 infrared0)
	(have_image Star132 spectrograph2)
	(have_image Star133 thermograph4)
	(have_image Planet135 image1)
	(have_image Planet138 thermograph3)
	(have_image Planet139 thermograph4)
	(have_image Phenomenon140 infrared0)
	(have_image Planet141 thermograph3)
	(have_image Phenomenon142 spectrograph2)
	(have_image Planet143 thermograph4)
	(have_image Star144 thermograph4)
	(have_image Phenomenon145 image1)
	(have_image Phenomenon146 infrared0)
	(have_image Phenomenon147 spectrograph2)
	(have_image Planet148 spectrograph2)
	(have_image Phenomenon149 thermograph4)
	(have_image Star151 thermograph4)
	(have_image Star152 thermograph3)
	(have_image Phenomenon153 spectrograph2)
	(have_image Planet154 thermograph4)
	(have_image Star155 spectrograph2)
	(have_image Star156 spectrograph2)
	(have_image Phenomenon157 thermograph3)
	(have_image Phenomenon158 spectrograph2)
	(have_image Planet159 infrared0)
	(have_image Planet160 image1)
	(have_image Planet161 image1)
	(have_image Star162 spectrograph2)
	(have_image Planet163 spectrograph2)
	(have_image Planet164 spectrograph2)
	(have_image Star165 infrared0)
	(have_image Phenomenon166 spectrograph2)
	(have_image Star167 image1)
	(have_image Star168 infrared0)
	(have_image Star169 spectrograph2)
	(have_image Planet170 thermograph4)
	(have_image Planet171 spectrograph2)
	(have_image Star172 thermograph4)
	(have_image Planet173 thermograph3)
	(have_image Planet174 thermograph3)
	(have_image Phenomenon175 infrared0)
	(have_image Phenomenon176 spectrograph2)
	(have_image Star177 infrared0)
	(have_image Planet178 spectrograph2)
	(have_image Planet179 spectrograph2)
	(have_image Star181 image1)
	(have_image Star182 thermograph4)
	(have_image Phenomenon183 thermograph3)
	(have_image Star184 spectrograph2)
	(have_image Star185 thermograph3)
	(have_image Phenomenon186 image1)
	(have_image Planet187 infrared0)
	(have_image Star188 image1)
	(have_image Star189 spectrograph2)
	(have_image Phenomenon190 infrared0)
	(have_image Planet191 spectrograph2)
	(have_image Star192 thermograph4)
	(have_image Phenomenon193 thermograph3)
	(have_image Planet194 thermograph4)
	(have_image Phenomenon195 thermograph4)
	(have_image Planet197 infrared0)
	(have_image Planet198 image1)
	(have_image Planet199 spectrograph2)
	(have_image Phenomenon200 spectrograph2)
	(have_image Phenomenon201 thermograph4)
	(have_image Star202 infrared0)
	(have_image Star204 infrared0)
))

)
