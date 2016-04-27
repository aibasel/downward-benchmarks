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
	satellite4
	instrument8
	instrument9
	satellite5
	instrument10
	instrument11
	satellite6
	instrument12
	instrument13
	satellite7
	instrument14
	instrument15
	satellite8
	instrument16
	instrument17
	satellite9
	instrument18
	instrument19
	instrument20
	satellite10
	instrument21
	satellite11
	instrument22
	satellite12
	instrument23
	instrument24
	satellite13
	instrument25
	instrument26
	satellite14
	instrument27
	instrument28
	instrument29
	infrared3
	infrared1
	infrared0
	spectrograph4
	thermograph2
	Star4
	Star0
	Star2
	GroundStation1
	Star3
	Planet5
	Phenomenon6
	Star7
	Planet8
	Star9
	Planet10
	Planet11
	Star12
	Phenomenon13
	Star14
	Star15
	Planet16
	Phenomenon17
	Star18
	Star19
	Planet20
	Phenomenon21
	Star22
	Star23
	Phenomenon24
	Star25
	Star26
	Star27
	Phenomenon28
	Star29
	Planet30
	Planet31
	Planet32
	Star33
	Star34
	Star35
	Star36
	Phenomenon37
	Phenomenon38
	Planet39
	Planet40
	Star41
	Planet42
	Phenomenon43
	Phenomenon44
	Phenomenon45
	Phenomenon46
	Planet47
	Phenomenon48
	Planet49
	Phenomenon50
	Star51
	Star52
	Planet53
	Phenomenon54
	Star55
	Phenomenon56
	Phenomenon57
	Planet58
	Planet59
	Planet60
	Phenomenon61
	Planet62
	Star63
	Star64
	Planet65
	Phenomenon66
	Star67
	Star68
	Star69
	Star70
	Star71
	Planet72
	Phenomenon73
	Planet74
	Star75
	Star76
	Planet77
	Star78
	Phenomenon79
	Star80
	Star81
	Star82
	Star83
	Planet84
	Star85
	Planet86
	Star87
	Phenomenon88
	Star89
	Phenomenon90
	Planet91
	Phenomenon92
	Planet93
	Phenomenon94
	Star95
	Star96
	Planet97
	Phenomenon98
	Phenomenon99
	Phenomenon100
	Star101
	Phenomenon102
	Planet103
	Phenomenon104
	Phenomenon105
	Phenomenon106
	Star107
	Phenomenon108
	Planet109
	Star110
	Phenomenon111
	Star112
	Star113
	Phenomenon114
	Phenomenon115
	Star116
	Star117
	Star118
	Phenomenon119
	Planet120
	Phenomenon121
	Phenomenon122
	Phenomenon123
	Star124
	Phenomenon125
	Phenomenon126
	Phenomenon127
	Planet128
	Planet129
	Planet130
	Phenomenon131
	Planet132
	Planet133
	Planet134
	Planet135
	Planet136
	Star137
	Star138
	Star139
	Planet140
	Planet141
	Star142
	Phenomenon143
	Phenomenon144
	Planet145
	Planet146
	Planet147
	Phenomenon148
	Star149
	Phenomenon150
	Planet151
	Phenomenon152
	Star153
	Star154
	Planet155
	Star156
	Star157
	Planet158
	Planet159
	Planet160
	Star161
	Planet162
	Planet163
	Star164
	Phenomenon165
	Phenomenon166
	Star167
	Star168
	Star169
	Star170
	Planet171
	Planet172
	Planet173
	Phenomenon174
	Planet175
	Phenomenon176
	Phenomenon177
	Phenomenon178
	Star179
	Planet180
	Planet181
	Phenomenon182
	Planet183
	Planet184
	Phenomenon185
	Phenomenon186
	Phenomenon187
	Planet188
	Planet189
	Planet190
	Phenomenon191
	Phenomenon192
	Star193
	Planet194
	Star195
	Planet196
	Phenomenon197
	Phenomenon198
	Planet199
	Phenomenon200
	Phenomenon201
	Planet202
	Phenomenon203
	Star204
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 spectrograph4)
	(supports instrument0 infrared0)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 GroundStation1)
	(instrument instrument1)
	(supports instrument1 spectrograph4)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star0)
	(instrument instrument2)
	(supports instrument2 infrared0)
	(supports instrument2 infrared3)
	(supports instrument2 spectrograph4)
	(calibration_target instrument2 Star4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon143)
	(satellite satellite1)
	(instrument instrument3)
	(supports instrument3 infrared0)
	(calibration_target instrument3 Star4)
	(instrument instrument4)
	(supports instrument4 spectrograph4)
	(supports instrument4 infrared0)
	(calibration_target instrument4 Star4)
	(instrument instrument5)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon38)
	(satellite satellite2)
	(instrument instrument6)
	(supports instrument6 infrared3)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 Star4)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon56)
	(satellite satellite3)
	(instrument instrument7)
	(supports instrument7 infrared0)
	(supports instrument7 infrared1)
	(calibration_target instrument7 Star2)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star142)
	(satellite satellite4)
	(instrument instrument8)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 Star0)
	(instrument instrument9)
	(supports instrument9 infrared0)
	(supports instrument9 thermograph2)
	(supports instrument9 spectrograph4)
	(calibration_target instrument9 Star4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon197)
	(satellite satellite5)
	(instrument instrument10)
	(supports instrument10 spectrograph4)
	(calibration_target instrument10 Star3)
	(instrument instrument11)
	(supports instrument11 infrared3)
	(supports instrument11 infrared0)
	(calibration_target instrument11 GroundStation1)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Planet39)
	(satellite satellite6)
	(instrument instrument12)
	(supports instrument12 infrared0)
	(calibration_target instrument12 Star4)
	(instrument instrument13)
	(supports instrument13 spectrograph4)
	(calibration_target instrument13 Star2)
	(on_board instrument12 satellite6)
	(on_board instrument13 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Star0)
	(satellite satellite7)
	(instrument instrument14)
	(supports instrument14 spectrograph4)
	(calibration_target instrument14 Star2)
	(instrument instrument15)
	(supports instrument15 infrared1)
	(supports instrument15 infrared0)
	(supports instrument15 spectrograph4)
	(calibration_target instrument15 Star2)
	(on_board instrument14 satellite7)
	(on_board instrument15 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Phenomenon105)
	(satellite satellite8)
	(instrument instrument16)
	(supports instrument16 infrared0)
	(supports instrument16 infrared1)
	(supports instrument16 thermograph2)
	(calibration_target instrument16 Star0)
	(instrument instrument17)
	(supports instrument17 spectrograph4)
	(supports instrument17 thermograph2)
	(calibration_target instrument17 Star0)
	(on_board instrument16 satellite8)
	(on_board instrument17 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Planet60)
	(satellite satellite9)
	(instrument instrument18)
	(supports instrument18 infrared1)
	(calibration_target instrument18 Star2)
	(instrument instrument19)
	(supports instrument19 infrared0)
	(supports instrument19 thermograph2)
	(supports instrument19 infrared1)
	(calibration_target instrument19 Star0)
	(instrument instrument20)
	(supports instrument20 infrared1)
	(calibration_target instrument20 GroundStation1)
	(on_board instrument18 satellite9)
	(on_board instrument19 satellite9)
	(on_board instrument20 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Star107)
	(satellite satellite10)
	(instrument instrument21)
	(supports instrument21 spectrograph4)
	(calibration_target instrument21 Star4)
	(on_board instrument21 satellite10)
	(power_avail satellite10)
	(pointing satellite10 Planet159)
	(satellite satellite11)
	(instrument instrument22)
	(supports instrument22 infrared1)
	(supports instrument22 thermograph2)
	(calibration_target instrument22 Star3)
	(on_board instrument22 satellite11)
	(power_avail satellite11)
	(pointing satellite11 Star12)
	(satellite satellite12)
	(instrument instrument23)
	(supports instrument23 infrared3)
	(supports instrument23 infrared1)
	(calibration_target instrument23 Star3)
	(instrument instrument24)
	(supports instrument24 infrared0)
	(calibration_target instrument24 Star0)
	(on_board instrument23 satellite12)
	(on_board instrument24 satellite12)
	(power_avail satellite12)
	(pointing satellite12 Phenomenon57)
	(satellite satellite13)
	(instrument instrument25)
	(supports instrument25 infrared3)
	(supports instrument25 infrared0)
	(supports instrument25 infrared1)
	(calibration_target instrument25 Star0)
	(instrument instrument26)
	(supports instrument26 infrared0)
	(calibration_target instrument26 Star3)
	(on_board instrument25 satellite13)
	(on_board instrument26 satellite13)
	(power_avail satellite13)
	(pointing satellite13 Planet84)
	(satellite satellite14)
	(instrument instrument27)
	(supports instrument27 thermograph2)
	(supports instrument27 spectrograph4)
	(supports instrument27 infrared1)
	(calibration_target instrument27 Star2)
	(instrument instrument28)
	(supports instrument28 infrared0)
	(calibration_target instrument28 GroundStation1)
	(instrument instrument29)
	(supports instrument29 thermograph2)
	(supports instrument29 spectrograph4)
	(calibration_target instrument29 Star3)
	(on_board instrument27 satellite14)
	(on_board instrument28 satellite14)
	(on_board instrument29 satellite14)
	(power_avail satellite14)
	(pointing satellite14 Phenomenon197)
	(mode infrared3)
	(mode infrared1)
	(mode infrared0)
	(mode spectrograph4)
	(mode thermograph2)
	(direction Star4)
	(direction Star0)
	(direction Star2)
	(direction GroundStation1)
	(direction Star3)
	(direction Planet5)
	(direction Phenomenon6)
	(direction Star7)
	(direction Planet8)
	(direction Star9)
	(direction Planet10)
	(direction Planet11)
	(direction Star12)
	(direction Phenomenon13)
	(direction Star14)
	(direction Star15)
	(direction Planet16)
	(direction Phenomenon17)
	(direction Star18)
	(direction Star19)
	(direction Planet20)
	(direction Phenomenon21)
	(direction Star22)
	(direction Star23)
	(direction Phenomenon24)
	(direction Star25)
	(direction Star26)
	(direction Star27)
	(direction Phenomenon28)
	(direction Star29)
	(direction Planet30)
	(direction Planet31)
	(direction Planet32)
	(direction Star33)
	(direction Star34)
	(direction Star35)
	(direction Star36)
	(direction Phenomenon37)
	(direction Phenomenon38)
	(direction Planet39)
	(direction Planet40)
	(direction Star41)
	(direction Planet42)
	(direction Phenomenon43)
	(direction Phenomenon44)
	(direction Phenomenon45)
	(direction Phenomenon46)
	(direction Planet47)
	(direction Phenomenon48)
	(direction Planet49)
	(direction Phenomenon50)
	(direction Star51)
	(direction Star52)
	(direction Planet53)
	(direction Phenomenon54)
	(direction Star55)
	(direction Phenomenon56)
	(direction Phenomenon57)
	(direction Planet58)
	(direction Planet59)
	(direction Planet60)
	(direction Phenomenon61)
	(direction Planet62)
	(direction Star63)
	(direction Star64)
	(direction Planet65)
	(direction Phenomenon66)
	(direction Star67)
	(direction Star68)
	(direction Star69)
	(direction Star70)
	(direction Star71)
	(direction Planet72)
	(direction Phenomenon73)
	(direction Planet74)
	(direction Star75)
	(direction Star76)
	(direction Planet77)
	(direction Star78)
	(direction Phenomenon79)
	(direction Star80)
	(direction Star81)
	(direction Star82)
	(direction Star83)
	(direction Planet84)
	(direction Star85)
	(direction Planet86)
	(direction Star87)
	(direction Phenomenon88)
	(direction Star89)
	(direction Phenomenon90)
	(direction Planet91)
	(direction Phenomenon92)
	(direction Planet93)
	(direction Phenomenon94)
	(direction Star95)
	(direction Star96)
	(direction Planet97)
	(direction Phenomenon98)
	(direction Phenomenon99)
	(direction Phenomenon100)
	(direction Star101)
	(direction Phenomenon102)
	(direction Planet103)
	(direction Phenomenon104)
	(direction Phenomenon105)
	(direction Phenomenon106)
	(direction Star107)
	(direction Phenomenon108)
	(direction Planet109)
	(direction Star110)
	(direction Phenomenon111)
	(direction Star112)
	(direction Star113)
	(direction Phenomenon114)
	(direction Phenomenon115)
	(direction Star116)
	(direction Star117)
	(direction Star118)
	(direction Phenomenon119)
	(direction Planet120)
	(direction Phenomenon121)
	(direction Phenomenon122)
	(direction Phenomenon123)
	(direction Star124)
	(direction Phenomenon125)
	(direction Phenomenon126)
	(direction Phenomenon127)
	(direction Planet128)
	(direction Planet129)
	(direction Planet130)
	(direction Phenomenon131)
	(direction Planet132)
	(direction Planet133)
	(direction Planet134)
	(direction Planet135)
	(direction Planet136)
	(direction Star137)
	(direction Star138)
	(direction Star139)
	(direction Planet140)
	(direction Planet141)
	(direction Star142)
	(direction Phenomenon143)
	(direction Phenomenon144)
	(direction Planet145)
	(direction Planet146)
	(direction Planet147)
	(direction Phenomenon148)
	(direction Star149)
	(direction Phenomenon150)
	(direction Planet151)
	(direction Phenomenon152)
	(direction Star153)
	(direction Star154)
	(direction Planet155)
	(direction Star156)
	(direction Star157)
	(direction Planet158)
	(direction Planet159)
	(direction Planet160)
	(direction Star161)
	(direction Planet162)
	(direction Planet163)
	(direction Star164)
	(direction Phenomenon165)
	(direction Phenomenon166)
	(direction Star167)
	(direction Star168)
	(direction Star169)
	(direction Star170)
	(direction Planet171)
	(direction Planet172)
	(direction Planet173)
	(direction Phenomenon174)
	(direction Planet175)
	(direction Phenomenon176)
	(direction Phenomenon177)
	(direction Phenomenon178)
	(direction Star179)
	(direction Planet180)
	(direction Planet181)
	(direction Phenomenon182)
	(direction Planet183)
	(direction Planet184)
	(direction Phenomenon185)
	(direction Phenomenon186)
	(direction Phenomenon187)
	(direction Planet188)
	(direction Planet189)
	(direction Planet190)
	(direction Phenomenon191)
	(direction Phenomenon192)
	(direction Star193)
	(direction Planet194)
	(direction Star195)
	(direction Planet196)
	(direction Phenomenon197)
	(direction Phenomenon198)
	(direction Planet199)
	(direction Phenomenon200)
	(direction Phenomenon201)
	(direction Planet202)
	(direction Phenomenon203)
	(direction Star204)
)
(:goal (and
	(pointing satellite1 Star68)
	(pointing satellite2 Star149)
	(pointing satellite9 Phenomenon37)
	(pointing satellite13 Phenomenon57)
	(have_image Planet5 infrared0)
	(have_image Phenomenon6 spectrograph4)
	(have_image Star7 infrared0)
	(have_image Planet8 infrared1)
	(have_image Star9 spectrograph4)
	(have_image Planet10 thermograph2)
	(have_image Planet11 infrared3)
	(have_image Phenomenon13 spectrograph4)
	(have_image Star14 thermograph2)
	(have_image Star15 infrared3)
	(have_image Planet16 infrared1)
	(have_image Phenomenon17 spectrograph4)
	(have_image Star18 spectrograph4)
	(have_image Star19 thermograph2)
	(have_image Planet20 thermograph2)
	(have_image Phenomenon21 thermograph2)
	(have_image Star22 infrared1)
	(have_image Star23 spectrograph4)
	(have_image Phenomenon24 infrared0)
	(have_image Star25 infrared3)
	(have_image Star26 infrared0)
	(have_image Star27 infrared1)
	(have_image Phenomenon28 spectrograph4)
	(have_image Star29 infrared1)
	(have_image Planet30 infrared1)
	(have_image Planet31 infrared0)
	(have_image Planet32 thermograph2)
	(have_image Star33 infrared3)
	(have_image Star34 infrared1)
	(have_image Star35 infrared1)
	(have_image Phenomenon37 infrared0)
	(have_image Phenomenon38 thermograph2)
	(have_image Planet39 thermograph2)
	(have_image Planet40 spectrograph4)
	(have_image Star41 infrared0)
	(have_image Planet42 spectrograph4)
	(have_image Phenomenon43 spectrograph4)
	(have_image Phenomenon45 spectrograph4)
	(have_image Phenomenon46 thermograph2)
	(have_image Planet47 infrared0)
	(have_image Phenomenon48 infrared1)
	(have_image Planet49 infrared0)
	(have_image Phenomenon50 infrared0)
	(have_image Star51 infrared1)
	(have_image Star52 infrared3)
	(have_image Planet53 infrared0)
	(have_image Star55 infrared1)
	(have_image Phenomenon56 infrared3)
	(have_image Phenomenon57 spectrograph4)
	(have_image Planet59 infrared0)
	(have_image Planet60 thermograph2)
	(have_image Phenomenon61 infrared0)
	(have_image Planet62 infrared3)
	(have_image Star63 infrared0)
	(have_image Star64 infrared0)
	(have_image Planet65 infrared3)
	(have_image Star67 thermograph2)
	(have_image Star68 infrared1)
	(have_image Star69 spectrograph4)
	(have_image Star70 infrared1)
	(have_image Star71 infrared1)
	(have_image Planet72 spectrograph4)
	(have_image Planet74 infrared1)
	(have_image Star75 infrared0)
	(have_image Star76 infrared0)
	(have_image Planet77 thermograph2)
	(have_image Star78 infrared0)
	(have_image Phenomenon79 infrared3)
	(have_image Star80 infrared0)
	(have_image Star81 infrared0)
	(have_image Star83 infrared0)
	(have_image Planet84 thermograph2)
	(have_image Planet86 infrared1)
	(have_image Star87 infrared3)
	(have_image Phenomenon88 infrared1)
	(have_image Star89 infrared3)
	(have_image Phenomenon90 infrared0)
	(have_image Planet91 spectrograph4)
	(have_image Phenomenon92 spectrograph4)
	(have_image Planet93 infrared1)
	(have_image Phenomenon94 infrared3)
	(have_image Star96 infrared3)
	(have_image Planet97 spectrograph4)
	(have_image Phenomenon98 infrared1)
	(have_image Phenomenon99 infrared3)
	(have_image Phenomenon100 thermograph2)
	(have_image Phenomenon102 spectrograph4)
	(have_image Planet103 infrared3)
	(have_image Phenomenon104 infrared1)
	(have_image Phenomenon106 thermograph2)
	(have_image Phenomenon108 infrared1)
	(have_image Planet109 infrared3)
	(have_image Star110 thermograph2)
	(have_image Phenomenon111 spectrograph4)
	(have_image Star113 spectrograph4)
	(have_image Phenomenon114 infrared0)
	(have_image Phenomenon115 infrared1)
	(have_image Star116 thermograph2)
	(have_image Star117 infrared1)
	(have_image Star118 infrared1)
	(have_image Phenomenon119 infrared1)
	(have_image Planet120 infrared0)
	(have_image Phenomenon121 spectrograph4)
	(have_image Phenomenon122 infrared1)
	(have_image Phenomenon123 infrared1)
	(have_image Star124 infrared3)
	(have_image Phenomenon125 spectrograph4)
	(have_image Phenomenon126 spectrograph4)
	(have_image Phenomenon127 infrared0)
	(have_image Planet128 infrared1)
	(have_image Planet129 thermograph2)
	(have_image Planet130 infrared3)
	(have_image Phenomenon131 infrared3)
	(have_image Planet134 spectrograph4)
	(have_image Planet135 spectrograph4)
	(have_image Planet136 thermograph2)
	(have_image Star137 spectrograph4)
	(have_image Star138 thermograph2)
	(have_image Star139 infrared3)
	(have_image Planet140 infrared0)
	(have_image Planet141 infrared3)
	(have_image Star142 thermograph2)
	(have_image Phenomenon144 infrared0)
	(have_image Planet145 infrared1)
	(have_image Planet146 infrared1)
	(have_image Planet147 infrared3)
	(have_image Star149 infrared3)
	(have_image Phenomenon150 thermograph2)
	(have_image Planet151 infrared0)
	(have_image Phenomenon152 infrared3)
	(have_image Star153 infrared3)
	(have_image Star154 infrared1)
	(have_image Planet155 thermograph2)
	(have_image Star156 infrared0)
	(have_image Star157 thermograph2)
	(have_image Planet158 infrared0)
	(have_image Planet159 thermograph2)
	(have_image Planet160 infrared0)
	(have_image Star161 infrared1)
	(have_image Planet162 thermograph2)
	(have_image Planet163 infrared0)
	(have_image Star164 infrared0)
	(have_image Phenomenon165 infrared3)
	(have_image Phenomenon166 infrared0)
	(have_image Star167 infrared3)
	(have_image Star168 infrared0)
	(have_image Star169 infrared0)
	(have_image Star170 spectrograph4)
	(have_image Planet171 infrared3)
	(have_image Planet172 thermograph2)
	(have_image Phenomenon174 thermograph2)
	(have_image Planet175 thermograph2)
	(have_image Phenomenon176 spectrograph4)
	(have_image Phenomenon177 infrared1)
	(have_image Phenomenon178 infrared1)
	(have_image Star179 spectrograph4)
	(have_image Planet180 spectrograph4)
	(have_image Planet181 spectrograph4)
	(have_image Planet183 infrared1)
	(have_image Planet184 thermograph2)
	(have_image Phenomenon185 infrared1)
	(have_image Phenomenon186 infrared3)
	(have_image Phenomenon187 spectrograph4)
	(have_image Planet188 infrared0)
	(have_image Planet189 thermograph2)
	(have_image Planet190 spectrograph4)
	(have_image Phenomenon191 infrared1)
	(have_image Phenomenon192 infrared1)
	(have_image Star193 infrared3)
	(have_image Planet194 infrared3)
	(have_image Star195 spectrograph4)
	(have_image Planet196 spectrograph4)
	(have_image Phenomenon197 thermograph2)
	(have_image Phenomenon198 infrared1)
	(have_image Planet199 thermograph2)
	(have_image Phenomenon201 spectrograph4)
	(have_image Phenomenon203 infrared0)
	(have_image Star204 thermograph2)
))

)
