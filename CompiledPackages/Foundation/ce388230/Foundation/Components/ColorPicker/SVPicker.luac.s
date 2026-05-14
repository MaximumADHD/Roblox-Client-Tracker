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
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

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
       12 GETUPVAL                         R6 2
       13 CALL                             R6 0 1
       14 DUPCLOSURE                       R9 K4 [PROTO_0]
       15 NAMECALL                         R7 R2 K5 ["map"]
       17 CALL                             R7 2 1
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K6 ["useRef"]
       21 LOADNIL                          R9
       22 CALL                             R8 1 1
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       26 NEWCLOSURE                       R10 P1
       27 CAPTURE                          VAL R8
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R11 0 1
       32 MOVE                             R12 R5
       33 SETLIST                          R11 R12 1 [1]
       35 CALL                             R9 2 1
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       39 NEWCLOSURE                       R11 P2
       40 CAPTURE                          VAL R9
       41 NEWTABLE                         R12 0 1
       43 MOVE                             R13 R9
       44 SETLIST                          R12 R13 1 [1]
       46 CALL                             R10 2 1
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       50 NEWCLOSURE                       R12 P3
       51 CAPTURE                          VAL R9
       52 NEWTABLE                         R13 0 1
       54 MOVE                             R14 R9
       55 SETLIST                          R13 R14 1 [1]
       57 CALL                             R11 2 1
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K8 ["createElement"]
       61 GETUPVAL                         R13 5
       62 GETUPVAL                         R14 6
       63 MOVE                             R15 R1
       64 DUPTABLE                         R16 K12 [{"tag", "ref", "ClipsDescendants"}]
       65 LOADK                            R17 K13 ["size-full"]
       66 SETTABLEKS                       R17 R16 K9 ["tag"]
       68 SETTABLEKS                       R8 R16 K10 ["ref"]
       70 LOADB                            R17 1
       71 SETTABLEKS                       R17 R16 K11 ["ClipsDescendants"]
       73 CALL                             R14 2 1
       74 DUPTABLE                         R15 K19 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       75 GETUPVAL                         R16 3
       76 GETTABLEKS                       R16 R16 K8 ["createElement"]
       78 LOADK                            R17 K20 ["UIDragDetector"]
       79 NEWTABLE                         R18 4 0
       81 GETIMPORT                        R19 K24 [Enum.UIDragDetectorDragStyle.Scriptable]
       83 SETTABLEKS                       R19 R18 K25 ["DragStyle"]
       85 GETUPVAL                         R19 3
       86 GETTABLEKS                       R19 R19 K26 ["Event"]
       88 GETTABLEKS                       R19 R19 K27 ["DragStart"]
       90 SETTABLE                         R10 R18 R19
       91 GETUPVAL                         R19 3
       92 GETTABLEKS                       R19 R19 K26 ["Event"]
       94 GETTABLEKS                       R19 R19 K28 ["DragContinue"]
       96 SETTABLE                         R11 R18 R19
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K14 ["DragDetector"]
      100 GETUPVAL                         R16 3
      101 GETTABLEKS                       R16 R16 K8 ["createElement"]
      103 LOADK                            R17 K29 ["Frame"]
      104 DUPTABLE                         R18 K34 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      105 GETIMPORT                        R19 K37 [UDim2.fromScale]
      107 LOADN                            R20 1
      108 LOADN                            R21 1
      109 CALL                             R19 2 1
      110 SETTABLEKS                       R19 R18 K30 ["Size"]
      112 GETTABLEKS                       R19 R6 K38 ["Color"]
      114 GETTABLEKS                       R19 R19 K39 ["Extended"]
      116 GETTABLEKS                       R19 R19 K40 ["White"]
      118 GETTABLEKS                       R19 R19 K41 ["White_100"]
      120 GETTABLEKS                       R19 R19 K42 ["Color3"]
      122 SETTABLEKS                       R19 R18 K31 ["BackgroundColor3"]
      124 LOADN                            R19 1
      125 SETTABLEKS                       R19 R18 K32 ["ZIndex"]
      127 LOADN                            R19 0
      128 SETTABLEKS                       R19 R18 K33 ["BorderSizePixel"]
      130 CALL                             R16 2 1
      131 SETTABLEKS                       R16 R15 K15 ["Base"]
      133 GETUPVAL                         R16 3
      134 GETTABLEKS                       R16 R16 K8 ["createElement"]
      136 LOADK                            R17 K29 ["Frame"]
      137 DUPTABLE                         R18 K34 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      138 GETIMPORT                        R19 K37 [UDim2.fromScale]
      140 LOADN                            R20 1
      141 LOADN                            R21 1
      142 CALL                             R19 2 1
      143 SETTABLEKS                       R19 R18 K30 ["Size"]
      145 SETTABLEKS                       R7 R18 K31 ["BackgroundColor3"]
      147 LOADN                            R19 2
      148 SETTABLEKS                       R19 R18 K32 ["ZIndex"]
      150 LOADN                            R19 0
      151 SETTABLEKS                       R19 R18 K33 ["BorderSizePixel"]
      153 DUPTABLE                         R19 K44 [{"Gradient"}]
      154 GETUPVAL                         R20 3
      155 GETTABLEKS                       R20 R20 K8 ["createElement"]
      157 LOADK                            R21 K45 ["UIGradient"]
      158 DUPTABLE                         R22 K47 [{"Transparency"}]
      159 GETIMPORT                        R23 K50 [NumberSequence.new]
      161 NEWTABLE                         R24 0 2
      163 GETIMPORT                        R25 K52 [NumberSequenceKeypoint.new]
      165 LOADN                            R26 0
      166 LOADN                            R27 1
      167 CALL                             R25 2 1
      168 GETIMPORT                        R26 K52 [NumberSequenceKeypoint.new]
      170 LOADN                            R27 1
      171 LOADN                            R28 0
      172 CALL                             R26 2 -1
      173 SETLIST                          R24 R25 -1 [1]
      175 CALL                             R23 1 1
      176 SETTABLEKS                       R23 R22 K46 ["Transparency"]
      178 CALL                             R20 2 1
      179 SETTABLEKS                       R20 R19 K43 ["Gradient"]
      181 CALL                             R16 3 1
      182 SETTABLEKS                       R16 R15 K16 ["Saturation"]
      184 GETUPVAL                         R16 3
      185 GETTABLEKS                       R16 R16 K8 ["createElement"]
      187 LOADK                            R17 K29 ["Frame"]
      188 DUPTABLE                         R18 K34 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      189 GETIMPORT                        R19 K37 [UDim2.fromScale]
      191 LOADN                            R20 1
      192 LOADN                            R21 1
      193 CALL                             R19 2 1
      194 SETTABLEKS                       R19 R18 K30 ["Size"]
      196 GETTABLEKS                       R19 R6 K38 ["Color"]
      198 GETTABLEKS                       R19 R19 K39 ["Extended"]
      200 GETTABLEKS                       R19 R19 K53 ["Black"]
      202 GETTABLEKS                       R19 R19 K54 ["Black_100"]
      204 GETTABLEKS                       R19 R19 K42 ["Color3"]
      206 SETTABLEKS                       R19 R18 K31 ["BackgroundColor3"]
      208 LOADN                            R19 3
      209 SETTABLEKS                       R19 R18 K32 ["ZIndex"]
      211 LOADN                            R19 0
      212 SETTABLEKS                       R19 R18 K33 ["BorderSizePixel"]
      214 DUPTABLE                         R19 K44 [{"Gradient"}]
      215 GETUPVAL                         R20 3
      216 GETTABLEKS                       R20 R20 K8 ["createElement"]
      218 LOADK                            R21 K45 ["UIGradient"]
      219 DUPTABLE                         R22 K56 [{"Rotation", "Transparency"}]
      220 LOADN                            R23 90
      221 SETTABLEKS                       R23 R22 K55 ["Rotation"]
      223 GETIMPORT                        R23 K50 [NumberSequence.new]
      225 NEWTABLE                         R24 0 2
      227 GETIMPORT                        R25 K52 [NumberSequenceKeypoint.new]
      229 LOADN                            R26 0
      230 LOADN                            R27 1
      231 CALL                             R25 2 1
      232 GETIMPORT                        R26 K52 [NumberSequenceKeypoint.new]
      234 LOADN                            R27 1
      235 LOADN                            R28 0
      236 CALL                             R26 2 -1
      237 SETLIST                          R24 R25 -1 [1]
      239 CALL                             R23 1 1
      240 SETTABLEKS                       R23 R22 K46 ["Transparency"]
      242 CALL                             R20 2 1
      243 SETTABLEKS                       R20 R19 K43 ["Gradient"]
      245 CALL                             R16 3 1
      246 SETTABLEKS                       R16 R15 K17 ["Value"]
      248 GETTABLEKS                       R17 R1 K57 ["showSelectionKnob"]
      250 JUMPIFNOT                        R17 ; [+87]
      251 GETUPVAL                         R16 3
      252 GETTABLEKS                       R16 R16 K8 ["createElement"]
      254 GETUPVAL                         R17 7
      255 DUPTABLE                         R18 K64 [{"size", "AnchorPoint", "Position", "style", "stroke", "hasShadow", "ZIndex"}]
      256 GETUPVAL                         R19 8
      257 GETTABLEKS                       R19 R19 K65 ["Large"]
      259 SETTABLEKS                       R19 R18 K58 ["size"]
      261 GETIMPORT                        R19 K67 [Vector2.new]
      263 LOADK                            R20 K68 [0.5]
      264 LOADK                            R21 K68 [0.5]
      265 CALL                             R19 2 1
      266 SETTABLEKS                       R19 R18 K59 ["AnchorPoint"]
      268 GETUPVAL                         R19 3
      269 GETTABLEKS                       R19 R19 K69 ["joinBindings"]
      271 NEWTABLE                         R20 0 2
      273 MOVE                             R21 R3
      274 MOVE                             R22 R4
      275 SETLIST                          R20 R21 2 [1]
      277 CALL                             R19 1 1
      278 DUPCLOSURE                       R21 K70 [PROTO_4]
      279 NAMECALL                         R19 R19 K5 ["map"]
      281 CALL                             R19 2 1
      282 SETTABLEKS                       R19 R18 K60 ["Position"]
      284 GETUPVAL                         R19 3
      285 GETTABLEKS                       R19 R19 K69 ["joinBindings"]
      287 NEWTABLE                         R20 0 3
      289 MOVE                             R21 R2
      290 MOVE                             R22 R3
      291 MOVE                             R23 R4
      292 SETLIST                          R20 R21 3 [1]
      294 CALL                             R19 1 1
      295 DUPCLOSURE                       R21 K71 [PROTO_5]
      296 NAMECALL                         R19 R19 K5 ["map"]
      298 CALL                             R19 2 1
      299 SETTABLEKS                       R19 R18 K61 ["style"]
      301 DUPTABLE                         R19 K73 [{"Color", "Thickness", "Transparency"}]
      302 GETTABLEKS                       R20 R6 K38 ["Color"]
      304 GETTABLEKS                       R20 R20 K74 ["System"]
      306 GETTABLEKS                       R20 R20 K75 ["Contrast"]
      308 GETTABLEKS                       R20 R20 K42 ["Color3"]
      310 SETTABLEKS                       R20 R19 K38 ["Color"]
      312 GETTABLEKS                       R20 R6 K76 ["Stroke"]
      314 GETTABLEKS                       R20 R20 K77 ["Thicker"]
      316 SETTABLEKS                       R20 R19 K72 ["Thickness"]
      318 GETTABLEKS                       R20 R6 K38 ["Color"]
      320 GETTABLEKS                       R20 R20 K74 ["System"]
      322 GETTABLEKS                       R20 R20 K75 ["Contrast"]
      324 GETTABLEKS                       R20 R20 K46 ["Transparency"]
      326 SETTABLEKS                       R20 R19 K46 ["Transparency"]
      328 SETTABLEKS                       R19 R18 K62 ["stroke"]
      330 LOADB                            R19 1
      331 SETTABLEKS                       R19 R18 K63 ["hasShadow"]
      333 LOADN                            R19 4
      334 SETTABLEKS                       R19 R18 K32 ["ZIndex"]
      336 CALL                             R16 2 1
      337 JUMP                             ; [+1]
      338 LOADNIL                          R16
      339 SETTABLEKS                       R16 R15 K18 ["Knob"]
      341 CALL                             R12 3 -1
      342 RETURN                           R12 -1

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
