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
        0 DUPTABLE                         R1 K3 [{[1], ["Transparency"] = 0}]
        1 GETIMPORT                        R2 K5 [Color3.fromHSV]
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 1
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Color3"]
        9 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K3 ["baseColor"]
        3 SETTABLEKS                       R2 R1 K0 ["Color3"]
        5 GETTABLEKS                       R3 R0 K5 ["value"]
        7 SUBRK                            R2 K4 [1] R3
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
       88 DUPTABLE                         R12 K26 [{["value"], ["onValueChanged"], ["onDragStarted"], ["onDragEnded"], ["size"], ["variant"], ["isContained"] = True, ["width"], ["knobVisibility"], ["knob"]}]
       89 SETTABLEKS                       R4 R12 K1 ["value"]
       91 SETTABLEKS                       R5 R12 K2 ["onValueChanged"]
       93 GETTABLEKS                       R13 R1 K17 ["onDragStarted"]
       95 SETTABLEKS                       R13 R12 K17 ["onDragStarted"]
       97 GETTABLEKS                       R13 R1 K18 ["onDragEnded"]
       99 SETTABLEKS                       R13 R12 K18 ["onDragEnded"]
      101 GETUPVAL                         R13 8
      102 GETTABLEKS                       R13 R13 K27 ["Medium"]
      104 SETTABLEKS                       R13 R12 K19 ["size"]
      106 GETUPVAL                         R13 9
      107 GETTABLEKS                       R13 R13 K28 ["Utility"]
      109 SETTABLEKS                       R13 R12 K20 ["variant"]
      111 GETIMPORT                        R13 K30 [UDim.new]
      113 LOADN                            R14 1
      114 LOADN                            R15 0
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K23 ["width"]
      118 GETUPVAL                         R13 10
      119 GETTABLEKS                       R13 R13 K31 ["Always"]
      121 SETTABLEKS                       R13 R12 K24 ["knobVisibility"]
      123 GETUPVAL                         R13 6
      124 GETTABLEKS                       R13 R13 K16 ["createElement"]
      126 GETUPVAL                         R14 11
      127 DUPTABLE                         R15 K35 [{["size"], ["style"], ["stroke"], ["hasShadow"] = True}]
      128 GETUPVAL                         R16 8
      129 GETTABLEKS                       R16 R16 K36 ["Small"]
      131 SETTABLEKS                       R16 R15 K19 ["size"]
      133 SETTABLEKS                       R7 R15 K32 ["style"]
      135 DUPTABLE                         R16 K40 [{"Color", "Thickness", "Transparency"}]
      136 GETTABLEKS                       R17 R2 K37 ["Color"]
      138 GETTABLEKS                       R17 R17 K41 ["System"]
      140 GETTABLEKS                       R17 R17 K42 ["Contrast"]
      142 GETTABLEKS                       R17 R17 K43 ["Color3"]
      144 SETTABLEKS                       R17 R16 K37 ["Color"]
      146 GETTABLEKS                       R17 R2 K44 ["Stroke"]
      148 GETTABLEKS                       R17 R17 K45 ["Thicker"]
      150 SETTABLEKS                       R17 R16 K38 ["Thickness"]
      152 GETTABLEKS                       R17 R2 K37 ["Color"]
      154 GETTABLEKS                       R17 R17 K41 ["System"]
      156 GETTABLEKS                       R17 R17 K42 ["Contrast"]
      158 GETTABLEKS                       R17 R17 K39 ["Transparency"]
      160 SETTABLEKS                       R17 R16 K39 ["Transparency"]
      162 SETTABLEKS                       R16 R15 K33 ["stroke"]
      164 CALL                             R13 2 1
      165 SETTABLEKS                       R13 R12 K25 ["knob"]
      167 CALL                             R10 2 1
      168 JUMPIFNOT                        R9 ; [+102]
      169 GETUPVAL                         R11 6
      170 GETTABLEKS                       R11 R11 K16 ["createElement"]
      172 GETUPVAL                         R12 12
      173 GETUPVAL                         R13 13
      174 MOVE                             R14 R1
      175 DUPTABLE                         R15 K48 [{["tag"] = "size-full-300"}]
      176 CALL                             R13 2 1
      177 DUPTABLE                         R14 K51 [{"Background", "SliderContainer"}]
      178 GETUPVAL                         R15 6
      179 GETTABLEKS                       R15 R15 K16 ["createElement"]
      181 GETUPVAL                         R16 12
      182 DUPTABLE                         R17 K56 [{["tag"] = "size-full stroke-standard stroke-emphasis radius-circle", ["ClipsDescendants"] = True, ["ZIndex"] = 1}]
      183 DUPTABLE                         R18 K59 [{"Checkerboard", "GradientOverlay"}]
      184 GETUPVAL                         R19 6
      185 GETTABLEKS                       R19 R19 K16 ["createElement"]
      187 GETUPVAL                         R20 14
      188 DUPTABLE                         R21 K66 [{["Image"] = "component_assets/checkerboard_12", ["ScaleType"], ["TileSize"], ["cornerRadius"], ["tag"] = "size-full", ["ZIndex"] = 1}]
      189 GETIMPORT                        R22 K69 [Enum.ScaleType.Tile]
      191 SETTABLEKS                       R22 R21 K62 ["ScaleType"]
      193 GETIMPORT                        R22 K72 [UDim2.fromOffset]
      195 GETTABLEKS                       R23 R2 K73 ["Size"]
      197 GETTABLEKS                       R23 R23 K74 ["Size_300"]
      199 GETTABLEKS                       R24 R2 K73 ["Size"]
      201 GETTABLEKS                       R24 R24 K74 ["Size_300"]
      203 CALL                             R22 2 1
      204 SETTABLEKS                       R22 R21 K63 ["TileSize"]
      206 GETIMPORT                        R22 K30 [UDim.new]
      208 LOADN                            R23 1
      209 LOADN                            R24 0
      210 CALL                             R22 2 1
      211 SETTABLEKS                       R22 R21 K64 ["cornerRadius"]
      213 CALL                             R19 2 1
      214 SETTABLEKS                       R19 R18 K57 ["Checkerboard"]
      216 GETUPVAL                         R19 6
      217 GETTABLEKS                       R19 R19 K16 ["createElement"]
      219 GETUPVAL                         R20 12
      220 DUPTABLE                         R21 K77 [{["tag"] = "size-full", ["backgroundStyle"], ["cornerRadius"], ["ZIndex"] = 2}]
      221 DUPTABLE                         R22 K79 [{["Color3"], ["Transparency"] = 0}]
      222 GETIMPORT                        R23 K80 [Color3.new]
      224 LOADN                            R24 1
      225 LOADN                            R25 1
      226 LOADN                            R26 1
      227 CALL                             R23 3 1
      228 SETTABLEKS                       R23 R22 K43 ["Color3"]
      230 SETTABLEKS                       R22 R21 K75 ["backgroundStyle"]
      232 GETIMPORT                        R22 K30 [UDim.new]
      234 LOADN                            R23 1
      235 LOADN                            R24 0
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K64 ["cornerRadius"]
      239 DUPTABLE                         R22 K82 [{"Gradient"}]
      240 GETUPVAL                         R23 6
      241 GETTABLEKS                       R23 R23 K16 ["createElement"]
      243 LOADK                            R24 K83 ["UIGradient"]
      244 DUPTABLE                         R25 K84 [{"Color", "Transparency"}]
      245 SETTABLEKS                       R6 R25 K37 ["Color"]
      247 SETTABLEKS                       R8 R25 K39 ["Transparency"]
      249 CALL                             R23 2 1
      250 SETTABLEKS                       R23 R22 K81 ["Gradient"]
      252 CALL                             R19 3 1
      253 SETTABLEKS                       R19 R18 K58 ["GradientOverlay"]
      255 CALL                             R15 3 1
      256 SETTABLEKS                       R15 R14 K49 ["Background"]
      258 GETUPVAL                         R15 6
      259 GETTABLEKS                       R15 R15 K16 ["createElement"]
      261 GETUPVAL                         R16 12
      262 DUPTABLE                         R17 K86 [{["tag"] = "row align-y-center size-full", ["ZIndex"] = 2}]
      263 DUPTABLE                         R18 K88 [{"Slider"}]
      264 SETTABLEKS                       R10 R18 K87 ["Slider"]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K50 ["SliderContainer"]
      269 CALL                             R11 3 -1
      270 RETURN                           R11 -1
      271 GETUPVAL                         R11 6
      272 GETTABLEKS                       R11 R11 K16 ["createElement"]
      274 GETUPVAL                         R12 12
      275 GETUPVAL                         R13 13
      276 MOVE                             R14 R1
      277 DUPTABLE                         R15 K90 [{["tag"] = "row align-y-center size-full-300 stroke-standard stroke-emphasis radius-circle", ["backgroundStyle"]}]
      278 GETTABLEKS                       R16 R2 K37 ["Color"]
      280 GETTABLEKS                       R16 R16 K91 ["Extended"]
      282 GETTABLEKS                       R16 R16 K92 ["White"]
      284 GETTABLEKS                       R16 R16 K93 ["White_100"]
      286 SETTABLEKS                       R16 R15 K75 ["backgroundStyle"]
      288 CALL                             R13 2 1
      289 DUPTABLE                         R14 K94 [{"Gradient", "Slider"}]
      290 GETUPVAL                         R15 6
      291 GETTABLEKS                       R15 R15 K16 ["createElement"]
      293 LOADK                            R16 K83 ["UIGradient"]
      294 DUPTABLE                         R17 K95 [{"Color"}]
      295 SETTABLEKS                       R6 R17 K37 ["Color"]
      297 CALL                             R15 2 1
      298 SETTABLEKS                       R15 R14 K81 ["Gradient"]
      300 SETTABLEKS                       R10 R14 K87 ["Slider"]
      302 CALL                             R11 3 -1
      303 RETURN                           R11 -1

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
