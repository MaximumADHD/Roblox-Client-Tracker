PROTO_0:
        0 GETIMPORT                        R1 K2 [Color3.fromHSV]
        2 MOVE                             R2 R0
        3 LOADN                            R3 1
        4 LOADN                            R4 1
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["calculateSVFromPosition"]
        8 MOVE                             R3 R0
        9 GETTABLEKS                       R4 R1 K2 ["AbsolutePosition"]
       11 GETTABLEKS                       R5 R1 K3 ["AbsoluteSize"]
       13 CALL                             R2 3 2
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.fromScale]
        4 MOVE                             R4 R1
        5 SUBRK                            R5 R3 K2 [UDim2.fromScale]
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 DUPTABLE                         R4 K2 [{"Color3", "Transparency"}]
        4 GETIMPORT                        R5 K4 [Color3.fromHSV]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K0 ["Color3"]
       12 LOADN                            R5 0
       13 SETTABLEKS                       R5 R4 K1 ["Transparency"]
       15 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETTABLEKS                       R2 R1 K0 ["hue"]
        6 GETTABLEKS                       R3 R1 K1 ["saturation"]
        8 GETTABLEKS                       R4 R1 K2 ["value"]
       10 GETTABLEKS                       R5 R1 K3 ["onChanged"]
       12 GETTABLEKS                       R6 R1 K4 ["onDragStarted"]
       14 GETTABLEKS                       R7 R1 K5 ["onDragEnded"]
       16 GETUPVAL                         R8 2
       17 CALL                             R8 0 1
       18 DUPCLOSURE                       R11 K6 [PROTO_0]
       19 NAMECALL                         R9 R2 K7 ["map"]
       21 CALL                             R9 2 1
       22 GETUPVAL                         R10 3
       23 GETTABLEKS                       R10 R10 K8 ["useRef"]
       25 LOADNIL                          R11
       26 CALL                             R10 1 1
       27 GETUPVAL                         R11 3
       28 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       30 NEWCLOSURE                       R12 P1
       31 CAPTURE                          VAL R10
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R13 0 1
       36 MOVE                             R14 R5
       37 SETLIST                          R13 R14 1 [1]
       39 CALL                             R11 2 1
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       43 NEWCLOSURE                       R13 P2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R11
       46 NEWTABLE                         R14 0 2
       48 MOVE                             R15 R11
       49 MOVE                             R16 R6
       50 SETLIST                          R14 R15 2 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       56 NEWCLOSURE                       R14 P3
       57 CAPTURE                          VAL R11
       58 NEWTABLE                         R15 0 1
       60 MOVE                             R16 R11
       61 SETLIST                          R15 R16 1 [1]
       63 CALL                             R13 2 1
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R14 R14 K10 ["createElement"]
       67 GETUPVAL                         R15 5
       68 GETUPVAL                         R16 6
       69 MOVE                             R17 R1
       70 DUPTABLE                         R18 K14 [{"tag", "ref", "ClipsDescendants"}]
       71 LOADK                            R19 K15 ["size-full radius-small"]
       72 SETTABLEKS                       R19 R18 K11 ["tag"]
       74 SETTABLEKS                       R10 R18 K12 ["ref"]
       76 LOADB                            R19 1
       77 SETTABLEKS                       R19 R18 K13 ["ClipsDescendants"]
       79 CALL                             R16 2 1
       80 DUPTABLE                         R17 K21 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       81 GETUPVAL                         R18 3
       82 GETTABLEKS                       R18 R18 K10 ["createElement"]
       84 LOADK                            R19 K22 ["UIDragDetector"]
       85 NEWTABLE                         R20 4 0
       87 GETIMPORT                        R21 K26 [Enum.UIDragDetectorDragStyle.Scriptable]
       89 SETTABLEKS                       R21 R20 K27 ["DragStyle"]
       91 GETUPVAL                         R21 3
       92 GETTABLEKS                       R21 R21 K28 ["Event"]
       94 GETTABLEKS                       R21 R21 K29 ["DragStart"]
       96 SETTABLE                         R12 R20 R21
       97 GETUPVAL                         R21 3
       98 GETTABLEKS                       R21 R21 K28 ["Event"]
      100 GETTABLEKS                       R21 R21 K30 ["DragContinue"]
      102 SETTABLE                         R13 R20 R21
      103 GETUPVAL                         R21 3
      104 GETTABLEKS                       R21 R21 K28 ["Event"]
      106 GETTABLEKS                       R21 R21 K31 ["DragEnd"]
      108 SETTABLE                         R7 R20 R21
      109 CALL                             R18 2 1
      110 SETTABLEKS                       R18 R17 K16 ["DragDetector"]
      112 GETUPVAL                         R18 3
      113 GETTABLEKS                       R18 R18 K10 ["createElement"]
      115 LOADK                            R19 K32 ["Frame"]
      116 DUPTABLE                         R20 K37 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      117 GETIMPORT                        R21 K40 [UDim2.fromScale]
      119 LOADN                            R22 1
      120 LOADN                            R23 1
      121 CALL                             R21 2 1
      122 SETTABLEKS                       R21 R20 K33 ["Size"]
      124 GETTABLEKS                       R21 R8 K41 ["Color"]
      126 GETTABLEKS                       R21 R21 K42 ["Extended"]
      128 GETTABLEKS                       R21 R21 K43 ["White"]
      130 GETTABLEKS                       R21 R21 K44 ["White_100"]
      132 GETTABLEKS                       R21 R21 K45 ["Color3"]
      134 SETTABLEKS                       R21 R20 K34 ["BackgroundColor3"]
      136 LOADN                            R21 1
      137 SETTABLEKS                       R21 R20 K35 ["ZIndex"]
      139 LOADN                            R21 0
      140 SETTABLEKS                       R21 R20 K36 ["BorderSizePixel"]
      142 CALL                             R18 2 1
      143 SETTABLEKS                       R18 R17 K17 ["Base"]
      145 GETUPVAL                         R18 3
      146 GETTABLEKS                       R18 R18 K10 ["createElement"]
      148 LOADK                            R19 K32 ["Frame"]
      149 DUPTABLE                         R20 K37 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      150 GETIMPORT                        R21 K40 [UDim2.fromScale]
      152 LOADN                            R22 1
      153 LOADN                            R23 1
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K33 ["Size"]
      157 SETTABLEKS                       R9 R20 K34 ["BackgroundColor3"]
      159 LOADN                            R21 2
      160 SETTABLEKS                       R21 R20 K35 ["ZIndex"]
      162 LOADN                            R21 0
      163 SETTABLEKS                       R21 R20 K36 ["BorderSizePixel"]
      165 DUPTABLE                         R21 K47 [{"Gradient"}]
      166 GETUPVAL                         R22 3
      167 GETTABLEKS                       R22 R22 K10 ["createElement"]
      169 LOADK                            R23 K48 ["UIGradient"]
      170 DUPTABLE                         R24 K50 [{"Transparency"}]
      171 GETIMPORT                        R25 K53 [NumberSequence.new]
      173 NEWTABLE                         R26 0 2
      175 GETIMPORT                        R27 K55 [NumberSequenceKeypoint.new]
      177 LOADN                            R28 0
      178 LOADN                            R29 1
      179 CALL                             R27 2 1
      180 GETIMPORT                        R28 K55 [NumberSequenceKeypoint.new]
      182 LOADN                            R29 1
      183 LOADN                            R30 0
      184 CALL                             R28 2 -1
      185 SETLIST                          R26 R27 -1 [1]
      187 CALL                             R25 1 1
      188 SETTABLEKS                       R25 R24 K49 ["Transparency"]
      190 CALL                             R22 2 1
      191 SETTABLEKS                       R22 R21 K46 ["Gradient"]
      193 CALL                             R18 3 1
      194 SETTABLEKS                       R18 R17 K18 ["Saturation"]
      196 GETUPVAL                         R18 3
      197 GETTABLEKS                       R18 R18 K10 ["createElement"]
      199 LOADK                            R19 K32 ["Frame"]
      200 DUPTABLE                         R20 K37 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      201 GETIMPORT                        R21 K40 [UDim2.fromScale]
      203 LOADN                            R22 1
      204 LOADN                            R23 1
      205 CALL                             R21 2 1
      206 SETTABLEKS                       R21 R20 K33 ["Size"]
      208 GETTABLEKS                       R21 R8 K41 ["Color"]
      210 GETTABLEKS                       R21 R21 K42 ["Extended"]
      212 GETTABLEKS                       R21 R21 K56 ["Black"]
      214 GETTABLEKS                       R21 R21 K57 ["Black_100"]
      216 GETTABLEKS                       R21 R21 K45 ["Color3"]
      218 SETTABLEKS                       R21 R20 K34 ["BackgroundColor3"]
      220 LOADN                            R21 3
      221 SETTABLEKS                       R21 R20 K35 ["ZIndex"]
      223 LOADN                            R21 0
      224 SETTABLEKS                       R21 R20 K36 ["BorderSizePixel"]
      226 DUPTABLE                         R21 K47 [{"Gradient"}]
      227 GETUPVAL                         R22 3
      228 GETTABLEKS                       R22 R22 K10 ["createElement"]
      230 LOADK                            R23 K48 ["UIGradient"]
      231 DUPTABLE                         R24 K59 [{"Rotation", "Transparency"}]
      232 LOADN                            R25 90
      233 SETTABLEKS                       R25 R24 K58 ["Rotation"]
      235 GETIMPORT                        R25 K53 [NumberSequence.new]
      237 NEWTABLE                         R26 0 2
      239 GETIMPORT                        R27 K55 [NumberSequenceKeypoint.new]
      241 LOADN                            R28 0
      242 LOADN                            R29 1
      243 CALL                             R27 2 1
      244 GETIMPORT                        R28 K55 [NumberSequenceKeypoint.new]
      246 LOADN                            R29 1
      247 LOADN                            R30 0
      248 CALL                             R28 2 -1
      249 SETLIST                          R26 R27 -1 [1]
      251 CALL                             R25 1 1
      252 SETTABLEKS                       R25 R24 K49 ["Transparency"]
      254 CALL                             R22 2 1
      255 SETTABLEKS                       R22 R21 K46 ["Gradient"]
      257 CALL                             R18 3 1
      258 SETTABLEKS                       R18 R17 K19 ["Value"]
      260 GETTABLEKS                       R19 R1 K60 ["showSelectionKnob"]
      262 JUMPIFNOT                        R19 ; [+87]
      263 GETUPVAL                         R18 3
      264 GETTABLEKS                       R18 R18 K10 ["createElement"]
      266 GETUPVAL                         R19 7
      267 DUPTABLE                         R20 K67 [{"size", "AnchorPoint", "Position", "style", "stroke", "hasShadow", "ZIndex"}]
      268 GETUPVAL                         R21 8
      269 GETTABLEKS                       R21 R21 K68 ["Medium"]
      271 SETTABLEKS                       R21 R20 K61 ["size"]
      273 GETIMPORT                        R21 K70 [Vector2.new]
      275 LOADK                            R22 K71 [0.5]
      276 LOADK                            R23 K71 [0.5]
      277 CALL                             R21 2 1
      278 SETTABLEKS                       R21 R20 K62 ["AnchorPoint"]
      280 GETUPVAL                         R21 3
      281 GETTABLEKS                       R21 R21 K72 ["joinBindings"]
      283 NEWTABLE                         R22 0 2
      285 MOVE                             R23 R3
      286 MOVE                             R24 R4
      287 SETLIST                          R22 R23 2 [1]
      289 CALL                             R21 1 1
      290 DUPCLOSURE                       R23 K73 [PROTO_4]
      291 NAMECALL                         R21 R21 K7 ["map"]
      293 CALL                             R21 2 1
      294 SETTABLEKS                       R21 R20 K63 ["Position"]
      296 GETUPVAL                         R21 3
      297 GETTABLEKS                       R21 R21 K72 ["joinBindings"]
      299 NEWTABLE                         R22 0 3
      301 MOVE                             R23 R2
      302 MOVE                             R24 R3
      303 MOVE                             R25 R4
      304 SETLIST                          R22 R23 3 [1]
      306 CALL                             R21 1 1
      307 DUPCLOSURE                       R23 K74 [PROTO_5]
      308 NAMECALL                         R21 R21 K7 ["map"]
      310 CALL                             R21 2 1
      311 SETTABLEKS                       R21 R20 K64 ["style"]
      313 DUPTABLE                         R21 K76 [{"Color", "Thickness", "Transparency"}]
      314 GETTABLEKS                       R22 R8 K41 ["Color"]
      316 GETTABLEKS                       R22 R22 K77 ["System"]
      318 GETTABLEKS                       R22 R22 K78 ["Contrast"]
      320 GETTABLEKS                       R22 R22 K45 ["Color3"]
      322 SETTABLEKS                       R22 R21 K41 ["Color"]
      324 GETTABLEKS                       R22 R8 K79 ["Stroke"]
      326 GETTABLEKS                       R22 R22 K80 ["Thicker"]
      328 SETTABLEKS                       R22 R21 K75 ["Thickness"]
      330 GETTABLEKS                       R22 R8 K41 ["Color"]
      332 GETTABLEKS                       R22 R22 K77 ["System"]
      334 GETTABLEKS                       R22 R22 K78 ["Contrast"]
      336 GETTABLEKS                       R22 R22 K49 ["Transparency"]
      338 SETTABLEKS                       R22 R21 K49 ["Transparency"]
      340 SETTABLEKS                       R21 R20 K65 ["stroke"]
      342 LOADB                            R21 1
      343 SETTABLEKS                       R21 R20 K66 ["hasShadow"]
      345 LOADN                            R21 4
      346 SETTABLEKS                       R21 R20 K35 ["ZIndex"]
      348 CALL                             R18 2 1
      349 JUMP                             ; [+1]
      350 LOADNIL                          R18
      351 SETTABLEKS                       R18 R17 K20 ["Knob"]
      353 CALL                             R14 3 -1
      354 RETURN                           R14 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Knob"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["ColorPicker"]
       41 GETTABLEKS                       R7 R7 K14 ["colorUtils"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Providers"]
       48 GETTABLEKS                       R8 R8 K16 ["Style"]
       50 GETTABLEKS                       R8 R8 K17 ["useTokens"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K18 ["Utility"]
       57 GETTABLEKS                       R9 R9 K19 ["withCommonProps"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K18 ["Utility"]
       64 GETTABLEKS                       R10 R10 K20 ["withDefaults"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R11 K21 ["Types"]
       73 CALL                             R10 1 1
       74 DUPTABLE                         R11 K23 [{"showSelectionKnob"}]
       75 LOADB                            R12 1
       76 SETTABLEKS                       R12 R11 K22 ["showSelectionKnob"]
       78 DUPCLOSURE                       R12 K24 [PROTO_6]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 RETURN                           R12 1
