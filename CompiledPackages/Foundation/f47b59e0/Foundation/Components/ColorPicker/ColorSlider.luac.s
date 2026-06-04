PROTO_0:
        0 GETIMPORT                        R1 K2 [ColorSequence.new]
        2 NEWTABLE                         R2 0 2
        4 GETIMPORT                        R3 K4 [ColorSequenceKeypoint.new]
        6 LOADN                            R4 0
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 GETIMPORT                        R4 K4 [ColorSequenceKeypoint.new]
       11 LOADN                            R5 1
       12 MOVE                             R6 R0
       13 CALL                             R4 2 -1
       14 SETLIST                          R2 R3 -1 [1]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETIMPORT                        R2 K4 [Color3.fromHSV]
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 1
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Color3"]
        9 LOADN                            R2 0
       10 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K3 ["baseColor"]
        3 SETTABLEKS                       R2 R1 K0 ["Color3"]
        5 GETTABLEKS                       R3 R0 K5 ["value"]
        7 SUBRK                            R2 R4 K3 ["baseColor"]
        8 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K0 ["sliderType"]
        8 GETTABLEKS                       R4 R1 K1 ["value"]
       10 GETTABLEKS                       R5 R1 K2 ["onValueChanged"]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R7 R7 K3 ["Hue"]
       15 JUMPIFNOTEQ                      R3 R7 ; [+3]
       17 GETUPVAL                         R6 4
       18 JUMP                             ; [+6]
       19 GETTABLEKS                       R6 R1 K4 ["baseColor"]
       21 GETUPVAL                         R8 5
       22 NAMECALL                         R6 R6 K5 ["map"]
       24 CALL                             R6 2 1
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R9 R9 K3 ["Hue"]
       30 JUMPIFNOTEQ                      R3 R9 ; [+7]
       32 DUPCLOSURE                       R11 K6 [PROTO_1]
       33 NAMECALL                         R9 R4 K5 ["map"]
       35 CALL                             R9 2 1
       36 MOVE                             R7 R9
       37 JUMP                             ; [+39]
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R9 R9 K7 ["Alpha"]
       41 JUMPIFNOTEQ                      R3 R9 ; [+35]
       43 GETIMPORT                        R9 K10 [NumberSequence.new]
       45 NEWTABLE                         R10 0 2
       47 GETIMPORT                        R11 K12 [NumberSequenceKeypoint.new]
       49 LOADN                            R12 0
       50 LOADN                            R13 1
       51 CALL                             R11 2 1
       52 GETIMPORT                        R12 K12 [NumberSequenceKeypoint.new]
       54 LOADN                            R13 1
       55 LOADN                            R14 0
       56 CALL                             R12 2 -1
       57 SETLIST                          R10 R11 -1 [1]
       59 CALL                             R9 1 1
       60 MOVE                             R8 R9
       61 GETUPVAL                         R9 6
       62 GETTABLEKS                       R9 R9 K13 ["joinBindings"]
       64 DUPTABLE                         R10 K14 [{"baseColor", "value"}]
       65 GETTABLEKS                       R11 R1 K4 ["baseColor"]
       67 SETTABLEKS                       R11 R10 K4 ["baseColor"]
       69 SETTABLEKS                       R4 R10 K1 ["value"]
       71 CALL                             R9 1 1
       72 DUPCLOSURE                       R11 K15 [PROTO_2]
       73 NAMECALL                         R9 R9 K5 ["map"]
       75 CALL                             R9 2 1
       76 MOVE                             R7 R9
       77 GETUPVAL                         R10 3
       78 GETTABLEKS                       R10 R10 K7 ["Alpha"]
       80 JUMPIFEQ                         R3 R10 ; [+2]
       82 LOADB                            R9 0 +1
       83 LOADB                            R9 1
       84 GETUPVAL                         R10 6
       85 GETTABLEKS                       R10 R10 K16 ["createElement"]
       87 GETUPVAL                         R11 7
       88 DUPTABLE                         R12 K25 [{"value", "onValueChanged", "onDragStarted", "onDragEnded", "size", "variant", "isContained", "width", "knobVisibility", "knob"}]
       89 SETTABLEKS                       R4 R12 K1 ["value"]
       91 SETTABLEKS                       R5 R12 K2 ["onValueChanged"]
       93 GETTABLEKS                       R13 R1 K17 ["onDragStarted"]
       95 SETTABLEKS                       R13 R12 K17 ["onDragStarted"]
       97 GETTABLEKS                       R13 R1 K18 ["onDragEnded"]
       99 SETTABLEKS                       R13 R12 K18 ["onDragEnded"]
      101 GETUPVAL                         R13 8
      102 GETTABLEKS                       R13 R13 K26 ["Medium"]
      104 SETTABLEKS                       R13 R12 K19 ["size"]
      106 GETUPVAL                         R13 9
      107 GETTABLEKS                       R13 R13 K27 ["Utility"]
      109 SETTABLEKS                       R13 R12 K20 ["variant"]
      111 LOADB                            R13 1
      112 SETTABLEKS                       R13 R12 K21 ["isContained"]
      114 GETIMPORT                        R13 K29 [UDim.new]
      116 LOADN                            R14 1
      117 LOADN                            R15 0
      118 CALL                             R13 2 1
      119 SETTABLEKS                       R13 R12 K22 ["width"]
      121 GETUPVAL                         R13 10
      122 GETTABLEKS                       R13 R13 K30 ["Always"]
      124 SETTABLEKS                       R13 R12 K23 ["knobVisibility"]
      126 GETUPVAL                         R13 6
      127 GETTABLEKS                       R13 R13 K16 ["createElement"]
      129 GETUPVAL                         R14 11
      130 DUPTABLE                         R15 K34 [{"size", "style", "stroke", "hasShadow"}]
      131 GETUPVAL                         R16 8
      132 GETTABLEKS                       R16 R16 K35 ["Small"]
      134 SETTABLEKS                       R16 R15 K19 ["size"]
      136 SETTABLEKS                       R7 R15 K31 ["style"]
      138 DUPTABLE                         R16 K39 [{"Color", "Thickness", "Transparency"}]
      139 GETTABLEKS                       R17 R2 K36 ["Color"]
      141 GETTABLEKS                       R17 R17 K40 ["System"]
      143 GETTABLEKS                       R17 R17 K41 ["Contrast"]
      145 GETTABLEKS                       R17 R17 K42 ["Color3"]
      147 SETTABLEKS                       R17 R16 K36 ["Color"]
      149 GETTABLEKS                       R17 R2 K43 ["Stroke"]
      151 GETTABLEKS                       R17 R17 K44 ["Thicker"]
      153 SETTABLEKS                       R17 R16 K37 ["Thickness"]
      155 GETTABLEKS                       R17 R2 K36 ["Color"]
      157 GETTABLEKS                       R17 R17 K40 ["System"]
      159 GETTABLEKS                       R17 R17 K41 ["Contrast"]
      161 GETTABLEKS                       R17 R17 K38 ["Transparency"]
      163 SETTABLEKS                       R17 R16 K38 ["Transparency"]
      165 SETTABLEKS                       R16 R15 K32 ["stroke"]
      167 LOADB                            R16 1
      168 SETTABLEKS                       R16 R15 K33 ["hasShadow"]
      170 CALL                             R13 2 1
      171 SETTABLEKS                       R13 R12 K24 ["knob"]
      173 CALL                             R10 2 1
      174 JUMPIFNOT                        R9 ; [+138]
      175 GETUPVAL                         R11 6
      176 GETTABLEKS                       R11 R11 K16 ["createElement"]
      178 GETUPVAL                         R12 12
      179 GETUPVAL                         R13 13
      180 MOVE                             R14 R1
      181 DUPTABLE                         R15 K46 [{"tag"}]
      182 LOADK                            R16 K47 ["size-full-300"]
      183 SETTABLEKS                       R16 R15 K45 ["tag"]
      185 CALL                             R13 2 1
      186 DUPTABLE                         R14 K50 [{"Background", "SliderContainer"}]
      187 GETUPVAL                         R15 6
      188 GETTABLEKS                       R15 R15 K16 ["createElement"]
      190 GETUPVAL                         R16 12
      191 DUPTABLE                         R17 K53 [{"tag", "ClipsDescendants", "ZIndex"}]
      192 LOADK                            R18 K54 ["size-full stroke-standard stroke-emphasis radius-circle"]
      193 SETTABLEKS                       R18 R17 K45 ["tag"]
      195 LOADB                            R18 1
      196 SETTABLEKS                       R18 R17 K51 ["ClipsDescendants"]
      198 LOADN                            R18 1
      199 SETTABLEKS                       R18 R17 K52 ["ZIndex"]
      201 DUPTABLE                         R18 K57 [{"Checkerboard", "GradientOverlay"}]
      202 GETUPVAL                         R19 6
      203 GETTABLEKS                       R19 R19 K16 ["createElement"]
      205 GETUPVAL                         R20 14
      206 DUPTABLE                         R21 K62 [{"Image", "ScaleType", "TileSize", "cornerRadius", "tag", "ZIndex"}]
      207 LOADK                            R22 K63 ["component_assets/checkerboard_12"]
      208 SETTABLEKS                       R22 R21 K58 ["Image"]
      210 GETIMPORT                        R22 K66 [Enum.ScaleType.Tile]
      212 SETTABLEKS                       R22 R21 K59 ["ScaleType"]
      214 GETIMPORT                        R22 K69 [UDim2.fromOffset]
      216 GETTABLEKS                       R23 R2 K70 ["Size"]
      218 GETTABLEKS                       R23 R23 K71 ["Size_300"]
      220 GETTABLEKS                       R24 R2 K70 ["Size"]
      222 GETTABLEKS                       R24 R24 K71 ["Size_300"]
      224 CALL                             R22 2 1
      225 SETTABLEKS                       R22 R21 K60 ["TileSize"]
      227 GETIMPORT                        R22 K29 [UDim.new]
      229 LOADN                            R23 1
      230 LOADN                            R24 0
      231 CALL                             R22 2 1
      232 SETTABLEKS                       R22 R21 K61 ["cornerRadius"]
      234 LOADK                            R22 K72 ["size-full"]
      235 SETTABLEKS                       R22 R21 K45 ["tag"]
      237 LOADN                            R22 1
      238 SETTABLEKS                       R22 R21 K52 ["ZIndex"]
      240 CALL                             R19 2 1
      241 SETTABLEKS                       R19 R18 K55 ["Checkerboard"]
      243 GETUPVAL                         R19 6
      244 GETTABLEKS                       R19 R19 K16 ["createElement"]
      246 GETUPVAL                         R20 12
      247 DUPTABLE                         R21 K74 [{"tag", "backgroundStyle", "cornerRadius", "ZIndex"}]
      248 LOADK                            R22 K72 ["size-full"]
      249 SETTABLEKS                       R22 R21 K45 ["tag"]
      251 DUPTABLE                         R22 K75 [{"Color3", "Transparency"}]
      252 GETIMPORT                        R23 K76 [Color3.new]
      254 LOADN                            R24 1
      255 LOADN                            R25 1
      256 LOADN                            R26 1
      257 CALL                             R23 3 1
      258 SETTABLEKS                       R23 R22 K42 ["Color3"]
      260 LOADN                            R23 0
      261 SETTABLEKS                       R23 R22 K38 ["Transparency"]
      263 SETTABLEKS                       R22 R21 K73 ["backgroundStyle"]
      265 GETIMPORT                        R22 K29 [UDim.new]
      267 LOADN                            R23 1
      268 LOADN                            R24 0
      269 CALL                             R22 2 1
      270 SETTABLEKS                       R22 R21 K61 ["cornerRadius"]
      272 LOADN                            R22 2
      273 SETTABLEKS                       R22 R21 K52 ["ZIndex"]
      275 DUPTABLE                         R22 K78 [{"Gradient"}]
      276 GETUPVAL                         R23 6
      277 GETTABLEKS                       R23 R23 K16 ["createElement"]
      279 LOADK                            R24 K79 ["UIGradient"]
      280 DUPTABLE                         R25 K80 [{"Color", "Transparency"}]
      281 SETTABLEKS                       R6 R25 K36 ["Color"]
      283 SETTABLEKS                       R8 R25 K38 ["Transparency"]
      285 CALL                             R23 2 1
      286 SETTABLEKS                       R23 R22 K77 ["Gradient"]
      288 CALL                             R19 3 1
      289 SETTABLEKS                       R19 R18 K56 ["GradientOverlay"]
      291 CALL                             R15 3 1
      292 SETTABLEKS                       R15 R14 K48 ["Background"]
      294 GETUPVAL                         R15 6
      295 GETTABLEKS                       R15 R15 K16 ["createElement"]
      297 GETUPVAL                         R16 12
      298 DUPTABLE                         R17 K81 [{"tag", "ZIndex"}]
      299 LOADK                            R18 K82 ["row align-y-center size-full"]
      300 SETTABLEKS                       R18 R17 K45 ["tag"]
      302 LOADN                            R18 2
      303 SETTABLEKS                       R18 R17 K52 ["ZIndex"]
      305 DUPTABLE                         R18 K84 [{"Slider"}]
      306 SETTABLEKS                       R10 R18 K83 ["Slider"]
      308 CALL                             R15 3 1
      309 SETTABLEKS                       R15 R14 K49 ["SliderContainer"]
      311 CALL                             R11 3 -1
      312 RETURN                           R11 -1
      313 GETUPVAL                         R11 6
      314 GETTABLEKS                       R11 R11 K16 ["createElement"]
      316 GETUPVAL                         R12 12
      317 GETUPVAL                         R13 13
      318 MOVE                             R14 R1
      319 DUPTABLE                         R15 K85 [{"tag", "backgroundStyle"}]
      320 LOADK                            R16 K86 ["row align-y-center size-full-300 stroke-standard stroke-emphasis radius-circle"]
      321 SETTABLEKS                       R16 R15 K45 ["tag"]
      323 GETTABLEKS                       R16 R2 K36 ["Color"]
      325 GETTABLEKS                       R16 R16 K87 ["Extended"]
      327 GETTABLEKS                       R16 R16 K88 ["White"]
      329 GETTABLEKS                       R16 R16 K89 ["White_100"]
      331 SETTABLEKS                       R16 R15 K73 ["backgroundStyle"]
      333 CALL                             R13 2 1
      334 DUPTABLE                         R14 K90 [{"Gradient", "Slider"}]
      335 GETUPVAL                         R15 6
      336 GETTABLEKS                       R15 R15 K16 ["createElement"]
      338 LOADK                            R16 K79 ["UIGradient"]
      339 DUPTABLE                         R17 K91 [{"Color"}]
      340 SETTABLEKS                       R6 R17 K36 ["Color"]
      342 CALL                             R15 2 1
      343 SETTABLEKS                       R15 R14 K77 ["Gradient"]
      345 SETTABLEKS                       R10 R14 K83 ["Slider"]
      347 CALL                             R11 3 -1
      348 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R5 K11 ["Style"]
       27 GETTABLEKS                       R5 R5 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R6 K13 ["Image"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Components"]
       41 GETTABLEKS                       R7 R7 K14 ["Knob"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K8 ["Components"]
       48 GETTABLEKS                       R8 R8 K15 ["Slider"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K8 ["Components"]
       55 GETTABLEKS                       R9 R9 K16 ["View"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Enums"]
       62 GETTABLEKS                       R10 R10 K18 ["ColorSliderType"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Enums"]
       69 GETTABLEKS                       R11 R11 K19 ["InputSize"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K17 ["Enums"]
       76 GETTABLEKS                       R12 R12 K20 ["SliderVariant"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K17 ["Enums"]
       83 GETTABLEKS                       R13 R13 K21 ["Visibility"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K22 ["Utility"]
       90 GETTABLEKS                       R14 R14 K23 ["withCommonProps"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K22 ["Utility"]
       97 GETTABLEKS                       R15 R15 K24 ["withDefaults"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K27 [ColorSequence.new]
      102 NEWTABLE                         R16 0 7
      104 GETIMPORT                        R17 K29 [ColorSequenceKeypoint.new]
      106 LOADN                            R18 0
      107 GETIMPORT                        R19 K31 [Color3.new]
      109 LOADN                            R20 1
      110 LOADN                            R21 0
      111 LOADN                            R22 0
      112 CALL                             R19 3 -1
      113 CALL                             R17 -1 1
      114 GETIMPORT                        R18 K29 [ColorSequenceKeypoint.new]
      116 LOADK                            R19 K32 [0.166666666666667]
      117 GETIMPORT                        R20 K31 [Color3.new]
      119 LOADN                            R21 1
      120 LOADN                            R22 1
      121 LOADN                            R23 0
      122 CALL                             R20 3 -1
      123 CALL                             R18 -1 1
      124 GETIMPORT                        R19 K29 [ColorSequenceKeypoint.new]
      126 LOADK                            R20 K33 [0.333333333333333]
      127 GETIMPORT                        R21 K31 [Color3.new]
      129 LOADN                            R22 0
      130 LOADN                            R23 1
      131 LOADN                            R24 0
      132 CALL                             R21 3 -1
      133 CALL                             R19 -1 1
      134 GETIMPORT                        R20 K29 [ColorSequenceKeypoint.new]
      136 LOADK                            R21 K34 [0.5]
      137 GETIMPORT                        R22 K31 [Color3.new]
      139 LOADN                            R23 0
      140 LOADN                            R24 1
      141 LOADN                            R25 1
      142 CALL                             R22 3 -1
      143 CALL                             R20 -1 1
      144 GETIMPORT                        R21 K29 [ColorSequenceKeypoint.new]
      146 LOADK                            R22 K35 [0.666666666666667]
      147 GETIMPORT                        R23 K31 [Color3.new]
      149 LOADN                            R24 0
      150 LOADN                            R25 0
      151 LOADN                            R26 1
      152 CALL                             R23 3 -1
      153 CALL                             R21 -1 1
      154 GETIMPORT                        R22 K29 [ColorSequenceKeypoint.new]
      156 LOADK                            R23 K36 [0.833333333333333]
      157 GETIMPORT                        R24 K31 [Color3.new]
      159 LOADN                            R25 1
      160 LOADN                            R26 0
      161 LOADN                            R27 1
      162 CALL                             R24 3 -1
      163 CALL                             R22 -1 1
      164 GETIMPORT                        R23 K29 [ColorSequenceKeypoint.new]
      166 LOADN                            R24 1
      167 GETIMPORT                        R25 K31 [Color3.new]
      169 LOADN                            R26 1
      170 LOADN                            R27 0
      171 LOADN                            R28 0
      172 CALL                             R25 3 -1
      173 CALL                             R23 -1 -1
      174 SETLIST                          R16 R17 -1 [1]
      176 CALL                             R15 1 1
      177 DUPCLOSURE                       R16 K37 [PROTO_0]
      178 DUPTABLE                         R17 K40 [{"sliderType", "baseColor"}]
      179 GETTABLEKS                       R18 R9 K41 ["Hue"]
      181 SETTABLEKS                       R18 R17 K38 ["sliderType"]
      183 GETTABLEKS                       R18 R2 K42 ["createBinding"]
      185 GETIMPORT                        R19 K31 [Color3.new]
      187 LOADN                            R20 1
      188 LOADN                            R21 1
      189 LOADN                            R22 1
      190 CALL                             R19 3 -1
      191 CALL                             R18 -1 1
      192 SETTABLEKS                       R18 R17 K39 ["baseColor"]
      194 DUPCLOSURE                       R18 K43 [PROTO_3]
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R5
      210 RETURN                           R18 1
