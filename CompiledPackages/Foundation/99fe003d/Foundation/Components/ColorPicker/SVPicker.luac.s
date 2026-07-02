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
        5 SUBRK                            R5 K3 [1] R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 DUPTABLE                         R4 K3 [{[1], ["Transparency"] = 0}]
        4 GETIMPORT                        R5 K5 [Color3.fromHSV]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K0 ["Color3"]
       12 RETURN                           R4 1

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
       70 DUPTABLE                         R18 K16 [{["tag"] = "size-full radius-small", ["ref"], ["ClipsDescendants"] = True}]
       71 SETTABLEKS                       R10 R18 K13 ["ref"]
       73 CALL                             R16 2 1
       74 DUPTABLE                         R17 K22 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       75 GETUPVAL                         R18 3
       76 GETTABLEKS                       R18 R18 K10 ["createElement"]
       78 LOADK                            R19 K23 ["UIDragDetector"]
       79 NEWTABLE                         R20 4 0
       81 GETIMPORT                        R21 K27 [Enum.UIDragDetectorDragStyle.Scriptable]
       83 SETTABLEKS                       R21 R20 K28 ["DragStyle"]
       85 GETUPVAL                         R21 3
       86 GETTABLEKS                       R21 R21 K29 ["Event"]
       88 GETTABLEKS                       R21 R21 K30 ["DragStart"]
       90 SETTABLE                         R12 R20 R21
       91 GETUPVAL                         R21 3
       92 GETTABLEKS                       R21 R21 K29 ["Event"]
       94 GETTABLEKS                       R21 R21 K31 ["DragContinue"]
       96 SETTABLE                         R13 R20 R21
       97 GETUPVAL                         R21 3
       98 GETTABLEKS                       R21 R21 K29 ["Event"]
      100 GETTABLEKS                       R21 R21 K32 ["DragEnd"]
      102 SETTABLE                         R7 R20 R21
      103 CALL                             R18 2 1
      104 SETTABLEKS                       R18 R17 K17 ["DragDetector"]
      106 GETUPVAL                         R18 3
      107 GETTABLEKS                       R18 R18 K10 ["createElement"]
      109 LOADK                            R19 K33 ["Frame"]
      110 DUPTABLE                         R20 K40 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 1, ["BorderSizePixel"] = 0}]
      111 GETIMPORT                        R21 K43 [UDim2.fromScale]
      113 LOADN                            R22 1
      114 LOADN                            R23 1
      115 CALL                             R21 2 1
      116 SETTABLEKS                       R21 R20 K34 ["Size"]
      118 GETTABLEKS                       R21 R8 K44 ["Color"]
      120 GETTABLEKS                       R21 R21 K45 ["Extended"]
      122 GETTABLEKS                       R21 R21 K46 ["White"]
      124 GETTABLEKS                       R21 R21 K47 ["White_100"]
      126 GETTABLEKS                       R21 R21 K48 ["Color3"]
      128 SETTABLEKS                       R21 R20 K35 ["BackgroundColor3"]
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K18 ["Base"]
      133 GETUPVAL                         R18 3
      134 GETTABLEKS                       R18 R18 K10 ["createElement"]
      136 LOADK                            R19 K33 ["Frame"]
      137 DUPTABLE                         R20 K50 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0}]
      138 GETIMPORT                        R21 K43 [UDim2.fromScale]
      140 LOADN                            R22 1
      141 LOADN                            R23 1
      142 CALL                             R21 2 1
      143 SETTABLEKS                       R21 R20 K34 ["Size"]
      145 SETTABLEKS                       R9 R20 K35 ["BackgroundColor3"]
      147 DUPTABLE                         R21 K52 [{"Gradient"}]
      148 GETUPVAL                         R22 3
      149 GETTABLEKS                       R22 R22 K10 ["createElement"]
      151 LOADK                            R23 K53 ["UIGradient"]
      152 DUPTABLE                         R24 K55 [{"Transparency"}]
      153 GETIMPORT                        R25 K58 [NumberSequence.new]
      155 NEWTABLE                         R26 0 2
      157 GETIMPORT                        R27 K60 [NumberSequenceKeypoint.new]
      159 LOADN                            R28 0
      160 LOADN                            R29 1
      161 CALL                             R27 2 1
      162 GETIMPORT                        R28 K60 [NumberSequenceKeypoint.new]
      164 LOADN                            R29 1
      165 LOADN                            R30 0
      166 CALL                             R28 2 -1
      167 SETLIST                          R26 R27 -1 [1]
      169 CALL                             R25 1 1
      170 SETTABLEKS                       R25 R24 K54 ["Transparency"]
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K51 ["Gradient"]
      175 CALL                             R18 3 1
      176 SETTABLEKS                       R18 R17 K19 ["Saturation"]
      178 GETUPVAL                         R18 3
      179 GETTABLEKS                       R18 R18 K10 ["createElement"]
      181 LOADK                            R19 K33 ["Frame"]
      182 DUPTABLE                         R20 K62 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 3, ["BorderSizePixel"] = 0}]
      183 GETIMPORT                        R21 K43 [UDim2.fromScale]
      185 LOADN                            R22 1
      186 LOADN                            R23 1
      187 CALL                             R21 2 1
      188 SETTABLEKS                       R21 R20 K34 ["Size"]
      190 GETTABLEKS                       R21 R8 K44 ["Color"]
      192 GETTABLEKS                       R21 R21 K45 ["Extended"]
      194 GETTABLEKS                       R21 R21 K63 ["Black"]
      196 GETTABLEKS                       R21 R21 K64 ["Black_100"]
      198 GETTABLEKS                       R21 R21 K48 ["Color3"]
      200 SETTABLEKS                       R21 R20 K35 ["BackgroundColor3"]
      202 DUPTABLE                         R21 K52 [{"Gradient"}]
      203 GETUPVAL                         R22 3
      204 GETTABLEKS                       R22 R22 K10 ["createElement"]
      206 LOADK                            R23 K53 ["UIGradient"]
      207 DUPTABLE                         R24 K67 [{["Rotation"] = 90, ["Transparency"]}]
      208 GETIMPORT                        R25 K58 [NumberSequence.new]
      210 NEWTABLE                         R26 0 2
      212 GETIMPORT                        R27 K60 [NumberSequenceKeypoint.new]
      214 LOADN                            R28 0
      215 LOADN                            R29 1
      216 CALL                             R27 2 1
      217 GETIMPORT                        R28 K60 [NumberSequenceKeypoint.new]
      219 LOADN                            R29 1
      220 LOADN                            R30 0
      221 CALL                             R28 2 -1
      222 SETLIST                          R26 R27 -1 [1]
      224 CALL                             R25 1 1
      225 SETTABLEKS                       R25 R24 K54 ["Transparency"]
      227 CALL                             R22 2 1
      228 SETTABLEKS                       R22 R21 K51 ["Gradient"]
      230 CALL                             R18 3 1
      231 SETTABLEKS                       R18 R17 K20 ["Value"]
      233 GETTABLEKS                       R19 R1 K68 ["showSelectionKnob"]
      235 JUMPIFNOT                        R19 ; [+81]
      236 GETUPVAL                         R18 3
      237 GETTABLEKS                       R18 R18 K10 ["createElement"]
      239 GETUPVAL                         R19 7
      240 DUPTABLE                         R20 K76 [{["size"], ["AnchorPoint"], ["Position"], ["style"], ["stroke"], ["hasShadow"] = True, ["ZIndex"] = 4}]
      241 GETUPVAL                         R21 8
      242 GETTABLEKS                       R21 R21 K77 ["Medium"]
      244 SETTABLEKS                       R21 R20 K69 ["size"]
      246 GETIMPORT                        R21 K79 [Vector2.new]
      248 LOADK                            R22 K80 [0.5]
      249 LOADK                            R23 K80 [0.5]
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K70 ["AnchorPoint"]
      253 GETUPVAL                         R21 3
      254 GETTABLEKS                       R21 R21 K81 ["joinBindings"]
      256 NEWTABLE                         R22 0 2
      258 MOVE                             R23 R3
      259 MOVE                             R24 R4
      260 SETLIST                          R22 R23 2 [1]
      262 CALL                             R21 1 1
      263 DUPCLOSURE                       R23 K82 [PROTO_4]
      264 NAMECALL                         R21 R21 K7 ["map"]
      266 CALL                             R21 2 1
      267 SETTABLEKS                       R21 R20 K71 ["Position"]
      269 GETUPVAL                         R21 3
      270 GETTABLEKS                       R21 R21 K81 ["joinBindings"]
      272 NEWTABLE                         R22 0 3
      274 MOVE                             R23 R2
      275 MOVE                             R24 R3
      276 MOVE                             R25 R4
      277 SETLIST                          R22 R23 3 [1]
      279 CALL                             R21 1 1
      280 DUPCLOSURE                       R23 K83 [PROTO_5]
      281 NAMECALL                         R21 R21 K7 ["map"]
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K72 ["style"]
      286 DUPTABLE                         R21 K85 [{"Color", "Thickness", "Transparency"}]
      287 GETTABLEKS                       R22 R8 K44 ["Color"]
      289 GETTABLEKS                       R22 R22 K86 ["System"]
      291 GETTABLEKS                       R22 R22 K87 ["Contrast"]
      293 GETTABLEKS                       R22 R22 K48 ["Color3"]
      295 SETTABLEKS                       R22 R21 K44 ["Color"]
      297 GETTABLEKS                       R22 R8 K88 ["Stroke"]
      299 GETTABLEKS                       R22 R22 K89 ["Thicker"]
      301 SETTABLEKS                       R22 R21 K84 ["Thickness"]
      303 GETTABLEKS                       R22 R8 K44 ["Color"]
      305 GETTABLEKS                       R22 R22 K86 ["System"]
      307 GETTABLEKS                       R22 R22 K87 ["Contrast"]
      309 GETTABLEKS                       R22 R22 K54 ["Transparency"]
      311 SETTABLEKS                       R22 R21 K54 ["Transparency"]
      313 SETTABLEKS                       R21 R20 K73 ["stroke"]
      315 CALL                             R18 2 1
      316 JUMP                             ; [+1]
      317 LOADNIL                          R18
      318 SETTABLEKS                       R18 R17 K21 ["Knob"]
      320 CALL                             R14 3 -1
      321 RETURN                           R14 -1

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
       74 DUPTABLE                         R11 K24 [{["showSelectionKnob"] = True}]
       75 DUPCLOSURE                       R12 K25 [PROTO_6]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 RETURN                           R12 1
