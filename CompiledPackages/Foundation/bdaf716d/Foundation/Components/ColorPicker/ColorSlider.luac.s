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
      131 GETUPVAL                         R17 12
      132 GETTABLEKS                       R17 R17 K35 ["FoundationColorPickerDesignUpdate"]
      134 JUMPIFNOT                        R17 ; [+4]
      135 GETUPVAL                         R16 8
      136 GETTABLEKS                       R16 R16 K36 ["Small"]
      138 JUMP                             ; [+3]
      139 GETUPVAL                         R16 8
      140 GETTABLEKS                       R16 R16 K37 ["Large"]
      142 SETTABLEKS                       R16 R15 K19 ["size"]
      144 SETTABLEKS                       R7 R15 K31 ["style"]
      146 DUPTABLE                         R16 K41 [{"Color", "Thickness", "Transparency"}]
      147 GETTABLEKS                       R17 R2 K38 ["Color"]
      149 GETTABLEKS                       R17 R17 K42 ["System"]
      151 GETTABLEKS                       R17 R17 K43 ["Contrast"]
      153 GETTABLEKS                       R17 R17 K44 ["Color3"]
      155 SETTABLEKS                       R17 R16 K38 ["Color"]
      157 GETTABLEKS                       R17 R2 K45 ["Stroke"]
      159 GETTABLEKS                       R17 R17 K46 ["Thicker"]
      161 SETTABLEKS                       R17 R16 K39 ["Thickness"]
      163 GETTABLEKS                       R17 R2 K38 ["Color"]
      165 GETTABLEKS                       R17 R17 K42 ["System"]
      167 GETTABLEKS                       R17 R17 K43 ["Contrast"]
      169 GETTABLEKS                       R17 R17 K40 ["Transparency"]
      171 SETTABLEKS                       R17 R16 K40 ["Transparency"]
      173 SETTABLEKS                       R16 R15 K32 ["stroke"]
      175 LOADB                            R16 1
      176 SETTABLEKS                       R16 R15 K33 ["hasShadow"]
      178 CALL                             R13 2 1
      179 SETTABLEKS                       R13 R12 K24 ["knob"]
      181 CALL                             R10 2 1
      182 GETUPVAL                         R11 12
      183 GETTABLEKS                       R11 R11 K35 ["FoundationColorPickerDesignUpdate"]
      185 JUMPIFNOT                        R11 ; [+139]
      186 JUMPIFNOT                        R9 ; [+138]
      187 GETUPVAL                         R11 6
      188 GETTABLEKS                       R11 R11 K16 ["createElement"]
      190 GETUPVAL                         R12 13
      191 GETUPVAL                         R13 14
      192 MOVE                             R14 R1
      193 DUPTABLE                         R15 K48 [{"tag"}]
      194 LOADK                            R16 K49 ["size-full-300"]
      195 SETTABLEKS                       R16 R15 K47 ["tag"]
      197 CALL                             R13 2 1
      198 DUPTABLE                         R14 K52 [{"Background", "SliderContainer"}]
      199 GETUPVAL                         R15 6
      200 GETTABLEKS                       R15 R15 K16 ["createElement"]
      202 GETUPVAL                         R16 13
      203 DUPTABLE                         R17 K55 [{"tag", "ClipsDescendants", "ZIndex"}]
      204 LOADK                            R18 K56 ["size-full stroke-standard stroke-emphasis radius-circle"]
      205 SETTABLEKS                       R18 R17 K47 ["tag"]
      207 LOADB                            R18 1
      208 SETTABLEKS                       R18 R17 K53 ["ClipsDescendants"]
      210 LOADN                            R18 1
      211 SETTABLEKS                       R18 R17 K54 ["ZIndex"]
      213 DUPTABLE                         R18 K59 [{"Checkerboard", "GradientOverlay"}]
      214 GETUPVAL                         R19 6
      215 GETTABLEKS                       R19 R19 K16 ["createElement"]
      217 GETUPVAL                         R20 15
      218 DUPTABLE                         R21 K64 [{"Image", "ScaleType", "TileSize", "cornerRadius", "tag", "ZIndex"}]
      219 LOADK                            R22 K65 ["component_assets/checkerboard_12"]
      220 SETTABLEKS                       R22 R21 K60 ["Image"]
      222 GETIMPORT                        R22 K68 [Enum.ScaleType.Tile]
      224 SETTABLEKS                       R22 R21 K61 ["ScaleType"]
      226 GETIMPORT                        R22 K71 [UDim2.fromOffset]
      228 GETTABLEKS                       R23 R2 K72 ["Size"]
      230 GETTABLEKS                       R23 R23 K73 ["Size_300"]
      232 GETTABLEKS                       R24 R2 K72 ["Size"]
      234 GETTABLEKS                       R24 R24 K73 ["Size_300"]
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K62 ["TileSize"]
      239 GETIMPORT                        R22 K29 [UDim.new]
      241 LOADN                            R23 1
      242 LOADN                            R24 0
      243 CALL                             R22 2 1
      244 SETTABLEKS                       R22 R21 K63 ["cornerRadius"]
      246 LOADK                            R22 K74 ["size-full"]
      247 SETTABLEKS                       R22 R21 K47 ["tag"]
      249 LOADN                            R22 1
      250 SETTABLEKS                       R22 R21 K54 ["ZIndex"]
      252 CALL                             R19 2 1
      253 SETTABLEKS                       R19 R18 K57 ["Checkerboard"]
      255 GETUPVAL                         R19 6
      256 GETTABLEKS                       R19 R19 K16 ["createElement"]
      258 GETUPVAL                         R20 13
      259 DUPTABLE                         R21 K76 [{"tag", "backgroundStyle", "cornerRadius", "ZIndex"}]
      260 LOADK                            R22 K74 ["size-full"]
      261 SETTABLEKS                       R22 R21 K47 ["tag"]
      263 DUPTABLE                         R22 K77 [{"Color3", "Transparency"}]
      264 GETIMPORT                        R23 K78 [Color3.new]
      266 LOADN                            R24 1
      267 LOADN                            R25 1
      268 LOADN                            R26 1
      269 CALL                             R23 3 1
      270 SETTABLEKS                       R23 R22 K44 ["Color3"]
      272 LOADN                            R23 0
      273 SETTABLEKS                       R23 R22 K40 ["Transparency"]
      275 SETTABLEKS                       R22 R21 K75 ["backgroundStyle"]
      277 GETIMPORT                        R22 K29 [UDim.new]
      279 LOADN                            R23 1
      280 LOADN                            R24 0
      281 CALL                             R22 2 1
      282 SETTABLEKS                       R22 R21 K63 ["cornerRadius"]
      284 LOADN                            R22 2
      285 SETTABLEKS                       R22 R21 K54 ["ZIndex"]
      287 DUPTABLE                         R22 K80 [{"Gradient"}]
      288 GETUPVAL                         R23 6
      289 GETTABLEKS                       R23 R23 K16 ["createElement"]
      291 LOADK                            R24 K81 ["UIGradient"]
      292 DUPTABLE                         R25 K82 [{"Color", "Transparency"}]
      293 SETTABLEKS                       R6 R25 K38 ["Color"]
      295 SETTABLEKS                       R8 R25 K40 ["Transparency"]
      297 CALL                             R23 2 1
      298 SETTABLEKS                       R23 R22 K79 ["Gradient"]
      300 CALL                             R19 3 1
      301 SETTABLEKS                       R19 R18 K58 ["GradientOverlay"]
      303 CALL                             R15 3 1
      304 SETTABLEKS                       R15 R14 K50 ["Background"]
      306 GETUPVAL                         R15 6
      307 GETTABLEKS                       R15 R15 K16 ["createElement"]
      309 GETUPVAL                         R16 13
      310 DUPTABLE                         R17 K83 [{"tag", "ZIndex"}]
      311 LOADK                            R18 K84 ["row align-y-center size-full"]
      312 SETTABLEKS                       R18 R17 K47 ["tag"]
      314 LOADN                            R18 2
      315 SETTABLEKS                       R18 R17 K54 ["ZIndex"]
      317 DUPTABLE                         R18 K86 [{"Slider"}]
      318 SETTABLEKS                       R10 R18 K85 ["Slider"]
      320 CALL                             R15 3 1
      321 SETTABLEKS                       R15 R14 K51 ["SliderContainer"]
      323 CALL                             R11 3 -1
      324 RETURN                           R11 -1
      325 GETUPVAL                         R11 12
      326 GETTABLEKS                       R11 R11 K35 ["FoundationColorPickerDesignUpdate"]
      328 JUMPIF                           R11 ; [+38]
      329 GETUPVAL                         R11 6
      330 GETTABLEKS                       R11 R11 K16 ["createElement"]
      332 GETUPVAL                         R12 13
      333 GETUPVAL                         R13 14
      334 MOVE                             R14 R1
      335 DUPTABLE                         R15 K87 [{"tag", "backgroundStyle"}]
      336 LOADK                            R16 K88 ["auto-y size-full-0 radius-circle stroke-standard stroke-emphasis"]
      337 SETTABLEKS                       R16 R15 K47 ["tag"]
      339 GETTABLEKS                       R16 R2 K38 ["Color"]
      341 GETTABLEKS                       R16 R16 K89 ["Extended"]
      343 GETTABLEKS                       R16 R16 K90 ["White"]
      345 GETTABLEKS                       R16 R16 K91 ["White_100"]
      347 SETTABLEKS                       R16 R15 K75 ["backgroundStyle"]
      349 CALL                             R13 2 1
      350 DUPTABLE                         R14 K92 [{"Gradient", "Slider"}]
      351 GETUPVAL                         R15 6
      352 GETTABLEKS                       R15 R15 K16 ["createElement"]
      354 LOADK                            R16 K81 ["UIGradient"]
      355 DUPTABLE                         R17 K82 [{"Color", "Transparency"}]
      356 SETTABLEKS                       R6 R17 K38 ["Color"]
      358 SETTABLEKS                       R8 R17 K40 ["Transparency"]
      360 CALL                             R15 2 1
      361 SETTABLEKS                       R15 R14 K79 ["Gradient"]
      363 SETTABLEKS                       R10 R14 K85 ["Slider"]
      365 CALL                             R11 3 -1
      366 RETURN                           R11 -1
      367 GETUPVAL                         R11 6
      368 GETTABLEKS                       R11 R11 K16 ["createElement"]
      370 GETUPVAL                         R12 13
      371 GETUPVAL                         R13 14
      372 MOVE                             R14 R1
      373 DUPTABLE                         R15 K87 [{"tag", "backgroundStyle"}]
      374 LOADK                            R16 K93 ["row align-y-center size-full-300 stroke-standard stroke-emphasis radius-circle"]
      375 SETTABLEKS                       R16 R15 K47 ["tag"]
      377 GETTABLEKS                       R16 R2 K38 ["Color"]
      379 GETTABLEKS                       R16 R16 K89 ["Extended"]
      381 GETTABLEKS                       R16 R16 K90 ["White"]
      383 GETTABLEKS                       R16 R16 K91 ["White_100"]
      385 SETTABLEKS                       R16 R15 K75 ["backgroundStyle"]
      387 CALL                             R13 2 1
      388 DUPTABLE                         R14 K92 [{"Gradient", "Slider"}]
      389 GETUPVAL                         R15 6
      390 GETTABLEKS                       R15 R15 K16 ["createElement"]
      392 LOADK                            R16 K81 ["UIGradient"]
      393 DUPTABLE                         R17 K94 [{"Color"}]
      394 SETTABLEKS                       R6 R17 K38 ["Color"]
      396 CALL                             R15 2 1
      397 SETTABLEKS                       R15 R14 K79 ["Gradient"]
      399 SETTABLEKS                       R10 R14 K85 ["Slider"]
      401 CALL                             R11 3 -1
      402 RETURN                           R11 -1

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
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K22 ["Utility"]
      104 GETTABLEKS                       R16 R16 K25 ["Flags"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K28 [ColorSequence.new]
      109 NEWTABLE                         R17 0 7
      111 GETIMPORT                        R18 K30 [ColorSequenceKeypoint.new]
      113 LOADN                            R19 0
      114 GETIMPORT                        R20 K32 [Color3.new]
      116 LOADN                            R21 1
      117 LOADN                            R22 0
      118 LOADN                            R23 0
      119 CALL                             R20 3 -1
      120 CALL                             R18 -1 1
      121 GETIMPORT                        R19 K30 [ColorSequenceKeypoint.new]
      123 LOADK                            R20 K33 [0.166666666666667]
      124 GETIMPORT                        R21 K32 [Color3.new]
      126 LOADN                            R22 1
      127 LOADN                            R23 1
      128 LOADN                            R24 0
      129 CALL                             R21 3 -1
      130 CALL                             R19 -1 1
      131 GETIMPORT                        R20 K30 [ColorSequenceKeypoint.new]
      133 LOADK                            R21 K34 [0.333333333333333]
      134 GETIMPORT                        R22 K32 [Color3.new]
      136 LOADN                            R23 0
      137 LOADN                            R24 1
      138 LOADN                            R25 0
      139 CALL                             R22 3 -1
      140 CALL                             R20 -1 1
      141 GETIMPORT                        R21 K30 [ColorSequenceKeypoint.new]
      143 LOADK                            R22 K35 [0.5]
      144 GETIMPORT                        R23 K32 [Color3.new]
      146 LOADN                            R24 0
      147 LOADN                            R25 1
      148 LOADN                            R26 1
      149 CALL                             R23 3 -1
      150 CALL                             R21 -1 1
      151 GETIMPORT                        R22 K30 [ColorSequenceKeypoint.new]
      153 LOADK                            R23 K36 [0.666666666666667]
      154 GETIMPORT                        R24 K32 [Color3.new]
      156 LOADN                            R25 0
      157 LOADN                            R26 0
      158 LOADN                            R27 1
      159 CALL                             R24 3 -1
      160 CALL                             R22 -1 1
      161 GETIMPORT                        R23 K30 [ColorSequenceKeypoint.new]
      163 LOADK                            R24 K37 [0.833333333333333]
      164 GETIMPORT                        R25 K32 [Color3.new]
      166 LOADN                            R26 1
      167 LOADN                            R27 0
      168 LOADN                            R28 1
      169 CALL                             R25 3 -1
      170 CALL                             R23 -1 1
      171 GETIMPORT                        R24 K30 [ColorSequenceKeypoint.new]
      173 LOADN                            R25 1
      174 GETIMPORT                        R26 K32 [Color3.new]
      176 LOADN                            R27 1
      177 LOADN                            R28 0
      178 LOADN                            R29 0
      179 CALL                             R26 3 -1
      180 CALL                             R24 -1 -1
      181 SETLIST                          R17 R18 -1 [1]
      183 CALL                             R16 1 1
      184 DUPCLOSURE                       R17 K38 [PROTO_0]
      185 DUPTABLE                         R18 K41 [{"sliderType", "baseColor"}]
      186 GETTABLEKS                       R19 R9 K42 ["Hue"]
      188 SETTABLEKS                       R19 R18 K39 ["sliderType"]
      190 GETTABLEKS                       R19 R2 K43 ["createBinding"]
      192 GETIMPORT                        R20 K32 [Color3.new]
      194 LOADN                            R21 1
      195 LOADN                            R22 1
      196 LOADN                            R23 1
      197 CALL                             R20 3 -1
      198 CALL                             R19 -1 1
      199 SETTABLEKS                       R19 R18 K40 ["baseColor"]
      201 DUPCLOSURE                       R19 K44 [PROTO_3]
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R17
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R5
      218 RETURN                           R19 1
