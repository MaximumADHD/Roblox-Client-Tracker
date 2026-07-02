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
      128 GETUPVAL                         R17 12
      129 GETTABLEKS                       R17 R17 K36 ["FoundationColorPickerDesignUpdate"]
      131 JUMPIFNOT                        R17 ; [+4]
      132 GETUPVAL                         R16 8
      133 GETTABLEKS                       R16 R16 K37 ["Small"]
      135 JUMP                             ; [+3]
      136 GETUPVAL                         R16 8
      137 GETTABLEKS                       R16 R16 K38 ["Large"]
      139 SETTABLEKS                       R16 R15 K19 ["size"]
      141 SETTABLEKS                       R7 R15 K32 ["style"]
      143 DUPTABLE                         R16 K42 [{"Color", "Thickness", "Transparency"}]
      144 GETTABLEKS                       R17 R2 K39 ["Color"]
      146 GETTABLEKS                       R17 R17 K43 ["System"]
      148 GETTABLEKS                       R17 R17 K44 ["Contrast"]
      150 GETTABLEKS                       R17 R17 K45 ["Color3"]
      152 SETTABLEKS                       R17 R16 K39 ["Color"]
      154 GETTABLEKS                       R17 R2 K46 ["Stroke"]
      156 GETTABLEKS                       R17 R17 K47 ["Thicker"]
      158 SETTABLEKS                       R17 R16 K40 ["Thickness"]
      160 GETTABLEKS                       R17 R2 K39 ["Color"]
      162 GETTABLEKS                       R17 R17 K43 ["System"]
      164 GETTABLEKS                       R17 R17 K44 ["Contrast"]
      166 GETTABLEKS                       R17 R17 K41 ["Transparency"]
      168 SETTABLEKS                       R17 R16 K41 ["Transparency"]
      170 SETTABLEKS                       R16 R15 K33 ["stroke"]
      172 CALL                             R13 2 1
      173 SETTABLEKS                       R13 R12 K25 ["knob"]
      175 CALL                             R10 2 1
      176 GETUPVAL                         R11 12
      177 GETTABLEKS                       R11 R11 K36 ["FoundationColorPickerDesignUpdate"]
      179 JUMPIFNOT                        R11 ; [+103]
      180 JUMPIFNOT                        R9 ; [+102]
      181 GETUPVAL                         R11 6
      182 GETTABLEKS                       R11 R11 K16 ["createElement"]
      184 GETUPVAL                         R12 13
      185 GETUPVAL                         R13 14
      186 MOVE                             R14 R1
      187 DUPTABLE                         R15 K50 [{["tag"] = "size-full-300"}]
      188 CALL                             R13 2 1
      189 DUPTABLE                         R14 K53 [{"Background", "SliderContainer"}]
      190 GETUPVAL                         R15 6
      191 GETTABLEKS                       R15 R15 K16 ["createElement"]
      193 GETUPVAL                         R16 13
      194 DUPTABLE                         R17 K58 [{["tag"] = "size-full stroke-standard stroke-emphasis radius-circle", ["ClipsDescendants"] = True, ["ZIndex"] = 1}]
      195 DUPTABLE                         R18 K61 [{"Checkerboard", "GradientOverlay"}]
      196 GETUPVAL                         R19 6
      197 GETTABLEKS                       R19 R19 K16 ["createElement"]
      199 GETUPVAL                         R20 15
      200 DUPTABLE                         R21 K68 [{["Image"] = "component_assets/checkerboard_12", ["ScaleType"], ["TileSize"], ["cornerRadius"], ["tag"] = "size-full", ["ZIndex"] = 1}]
      201 GETIMPORT                        R22 K71 [Enum.ScaleType.Tile]
      203 SETTABLEKS                       R22 R21 K64 ["ScaleType"]
      205 GETIMPORT                        R22 K74 [UDim2.fromOffset]
      207 GETTABLEKS                       R23 R2 K75 ["Size"]
      209 GETTABLEKS                       R23 R23 K76 ["Size_300"]
      211 GETTABLEKS                       R24 R2 K75 ["Size"]
      213 GETTABLEKS                       R24 R24 K76 ["Size_300"]
      215 CALL                             R22 2 1
      216 SETTABLEKS                       R22 R21 K65 ["TileSize"]
      218 GETIMPORT                        R22 K30 [UDim.new]
      220 LOADN                            R23 1
      221 LOADN                            R24 0
      222 CALL                             R22 2 1
      223 SETTABLEKS                       R22 R21 K66 ["cornerRadius"]
      225 CALL                             R19 2 1
      226 SETTABLEKS                       R19 R18 K59 ["Checkerboard"]
      228 GETUPVAL                         R19 6
      229 GETTABLEKS                       R19 R19 K16 ["createElement"]
      231 GETUPVAL                         R20 13
      232 DUPTABLE                         R21 K79 [{["tag"] = "size-full", ["backgroundStyle"], ["cornerRadius"], ["ZIndex"] = 2}]
      233 DUPTABLE                         R22 K81 [{["Color3"], ["Transparency"] = 0}]
      234 GETIMPORT                        R23 K82 [Color3.new]
      236 LOADN                            R24 1
      237 LOADN                            R25 1
      238 LOADN                            R26 1
      239 CALL                             R23 3 1
      240 SETTABLEKS                       R23 R22 K45 ["Color3"]
      242 SETTABLEKS                       R22 R21 K77 ["backgroundStyle"]
      244 GETIMPORT                        R22 K30 [UDim.new]
      246 LOADN                            R23 1
      247 LOADN                            R24 0
      248 CALL                             R22 2 1
      249 SETTABLEKS                       R22 R21 K66 ["cornerRadius"]
      251 DUPTABLE                         R22 K84 [{"Gradient"}]
      252 GETUPVAL                         R23 6
      253 GETTABLEKS                       R23 R23 K16 ["createElement"]
      255 LOADK                            R24 K85 ["UIGradient"]
      256 DUPTABLE                         R25 K86 [{"Color", "Transparency"}]
      257 SETTABLEKS                       R6 R25 K39 ["Color"]
      259 SETTABLEKS                       R8 R25 K41 ["Transparency"]
      261 CALL                             R23 2 1
      262 SETTABLEKS                       R23 R22 K83 ["Gradient"]
      264 CALL                             R19 3 1
      265 SETTABLEKS                       R19 R18 K60 ["GradientOverlay"]
      267 CALL                             R15 3 1
      268 SETTABLEKS                       R15 R14 K51 ["Background"]
      270 GETUPVAL                         R15 6
      271 GETTABLEKS                       R15 R15 K16 ["createElement"]
      273 GETUPVAL                         R16 13
      274 DUPTABLE                         R17 K88 [{["tag"] = "row align-y-center size-full", ["ZIndex"] = 2}]
      275 DUPTABLE                         R18 K90 [{"Slider"}]
      276 SETTABLEKS                       R10 R18 K89 ["Slider"]
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K52 ["SliderContainer"]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1
      283 GETUPVAL                         R11 12
      284 GETTABLEKS                       R11 R11 K36 ["FoundationColorPickerDesignUpdate"]
      286 JUMPIF                           R11 ; [+35]
      287 GETUPVAL                         R11 6
      288 GETTABLEKS                       R11 R11 K16 ["createElement"]
      290 GETUPVAL                         R12 13
      291 GETUPVAL                         R13 14
      292 MOVE                             R14 R1
      293 DUPTABLE                         R15 K92 [{["tag"] = "auto-y size-full-0 radius-circle stroke-standard stroke-emphasis", ["backgroundStyle"]}]
      294 GETTABLEKS                       R16 R2 K39 ["Color"]
      296 GETTABLEKS                       R16 R16 K93 ["Extended"]
      298 GETTABLEKS                       R16 R16 K94 ["White"]
      300 GETTABLEKS                       R16 R16 K95 ["White_100"]
      302 SETTABLEKS                       R16 R15 K77 ["backgroundStyle"]
      304 CALL                             R13 2 1
      305 DUPTABLE                         R14 K96 [{"Gradient", "Slider"}]
      306 GETUPVAL                         R15 6
      307 GETTABLEKS                       R15 R15 K16 ["createElement"]
      309 LOADK                            R16 K85 ["UIGradient"]
      310 DUPTABLE                         R17 K86 [{"Color", "Transparency"}]
      311 SETTABLEKS                       R6 R17 K39 ["Color"]
      313 SETTABLEKS                       R8 R17 K41 ["Transparency"]
      315 CALL                             R15 2 1
      316 SETTABLEKS                       R15 R14 K83 ["Gradient"]
      318 SETTABLEKS                       R10 R14 K89 ["Slider"]
      320 CALL                             R11 3 -1
      321 RETURN                           R11 -1
      322 GETUPVAL                         R11 6
      323 GETTABLEKS                       R11 R11 K16 ["createElement"]
      325 GETUPVAL                         R12 13
      326 GETUPVAL                         R13 14
      327 MOVE                             R14 R1
      328 DUPTABLE                         R15 K98 [{["tag"] = "row align-y-center size-full-300 stroke-standard stroke-emphasis radius-circle", ["backgroundStyle"]}]
      329 GETTABLEKS                       R16 R2 K39 ["Color"]
      331 GETTABLEKS                       R16 R16 K93 ["Extended"]
      333 GETTABLEKS                       R16 R16 K94 ["White"]
      335 GETTABLEKS                       R16 R16 K95 ["White_100"]
      337 SETTABLEKS                       R16 R15 K77 ["backgroundStyle"]
      339 CALL                             R13 2 1
      340 DUPTABLE                         R14 K96 [{"Gradient", "Slider"}]
      341 GETUPVAL                         R15 6
      342 GETTABLEKS                       R15 R15 K16 ["createElement"]
      344 LOADK                            R16 K85 ["UIGradient"]
      345 DUPTABLE                         R17 K99 [{"Color"}]
      346 SETTABLEKS                       R6 R17 K39 ["Color"]
      348 CALL                             R15 2 1
      349 SETTABLEKS                       R15 R14 K83 ["Gradient"]
      351 SETTABLEKS                       R10 R14 K89 ["Slider"]
      353 CALL                             R11 3 -1
      354 RETURN                           R11 -1

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
