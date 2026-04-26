PROTO_0:
        0 GETIMPORT                        R1 K2 [Color3.fromHSV]
        2 MOVE                             R2 R0
        3 LOADN                            R3 1
        4 LOADN                            R4 1
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["calculateSVFromPosition"]
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
       22 GETUPVAL                         R11 3
       23 GETTABLEKS                       R10 R11 K8 ["useRef"]
       25 LOADNIL                          R11
       26 CALL                             R10 1 1
       27 GETUPVAL                         R12 3
       28 GETTABLEKS                       R11 R12 K9 ["useCallback"]
       30 NEWCLOSURE                       R12 P1
       31 CAPTURE                          VAL R10
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R13 0 1
       36 MOVE                             R14 R5
       37 SETLIST                          R13 R14 1 [1]
       39 CALL                             R11 2 1
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K9 ["useCallback"]
       43 NEWCLOSURE                       R13 P2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R11
       46 NEWTABLE                         R14 0 2
       48 MOVE                             R15 R11
       49 MOVE                             R16 R6
       50 SETLIST                          R14 R15 2 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R14 3
       54 GETTABLEKS                       R13 R14 K9 ["useCallback"]
       56 NEWCLOSURE                       R14 P3
       57 CAPTURE                          VAL R11
       58 NEWTABLE                         R15 0 1
       60 MOVE                             R16 R11
       61 SETLIST                          R15 R16 1 [1]
       63 CALL                             R13 2 1
       64 GETUPVAL                         R15 3
       65 GETTABLEKS                       R14 R15 K10 ["createElement"]
       67 GETUPVAL                         R15 5
       68 GETUPVAL                         R16 6
       69 MOVE                             R17 R1
       70 DUPTABLE                         R18 K14 [{"tag", "ref", "ClipsDescendants"}]
       71 GETUPVAL                         R21 7
       72 GETTABLEKS                       R20 R21 K15 ["FoundationColorPickerDesignUpdate"]
       74 JUMPIFNOT                        R20 ; [+2]
       75 LOADK                            R19 K16 ["size-full radius-small"]
       76 JUMP                             ; [+1]
       77 LOADK                            R19 K17 ["size-full"]
       78 SETTABLEKS                       R19 R18 K11 ["tag"]
       80 SETTABLEKS                       R10 R18 K12 ["ref"]
       82 LOADB                            R19 1
       83 SETTABLEKS                       R19 R18 K13 ["ClipsDescendants"]
       85 CALL                             R16 2 1
       86 DUPTABLE                         R17 K23 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       87 GETUPVAL                         R19 3
       88 GETTABLEKS                       R18 R19 K10 ["createElement"]
       90 LOADK                            R19 K24 ["UIDragDetector"]
       91 NEWTABLE                         R20 4 0
       93 GETIMPORT                        R21 K28 [Enum.UIDragDetectorDragStyle.Scriptable]
       95 SETTABLEKS                       R21 R20 K29 ["DragStyle"]
       97 GETUPVAL                         R23 3
       98 GETTABLEKS                       R22 R23 K30 ["Event"]
      100 GETTABLEKS                       R21 R22 K31 ["DragStart"]
      102 SETTABLE                         R12 R20 R21
      103 GETUPVAL                         R23 3
      104 GETTABLEKS                       R22 R23 K30 ["Event"]
      106 GETTABLEKS                       R21 R22 K32 ["DragContinue"]
      108 SETTABLE                         R13 R20 R21
      109 GETUPVAL                         R23 3
      110 GETTABLEKS                       R22 R23 K30 ["Event"]
      112 GETTABLEKS                       R21 R22 K33 ["DragEnd"]
      114 SETTABLE                         R7 R20 R21
      115 CALL                             R18 2 1
      116 SETTABLEKS                       R18 R17 K18 ["DragDetector"]
      118 GETUPVAL                         R19 3
      119 GETTABLEKS                       R18 R19 K10 ["createElement"]
      121 LOADK                            R19 K34 ["Frame"]
      122 DUPTABLE                         R20 K39 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      123 GETIMPORT                        R21 K42 [UDim2.fromScale]
      125 LOADN                            R22 1
      126 LOADN                            R23 1
      127 CALL                             R21 2 1
      128 SETTABLEKS                       R21 R20 K35 ["Size"]
      130 GETTABLEKS                       R25 R8 K43 ["Color"]
      132 GETTABLEKS                       R24 R25 K44 ["Extended"]
      134 GETTABLEKS                       R23 R24 K45 ["White"]
      136 GETTABLEKS                       R22 R23 K46 ["White_100"]
      138 GETTABLEKS                       R21 R22 K47 ["Color3"]
      140 SETTABLEKS                       R21 R20 K36 ["BackgroundColor3"]
      142 LOADN                            R21 1
      143 SETTABLEKS                       R21 R20 K37 ["ZIndex"]
      145 LOADN                            R21 0
      146 SETTABLEKS                       R21 R20 K38 ["BorderSizePixel"]
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K19 ["Base"]
      151 GETUPVAL                         R19 3
      152 GETTABLEKS                       R18 R19 K10 ["createElement"]
      154 LOADK                            R19 K34 ["Frame"]
      155 DUPTABLE                         R20 K39 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      156 GETIMPORT                        R21 K42 [UDim2.fromScale]
      158 LOADN                            R22 1
      159 LOADN                            R23 1
      160 CALL                             R21 2 1
      161 SETTABLEKS                       R21 R20 K35 ["Size"]
      163 SETTABLEKS                       R9 R20 K36 ["BackgroundColor3"]
      165 LOADN                            R21 2
      166 SETTABLEKS                       R21 R20 K37 ["ZIndex"]
      168 LOADN                            R21 0
      169 SETTABLEKS                       R21 R20 K38 ["BorderSizePixel"]
      171 DUPTABLE                         R21 K49 [{"Gradient"}]
      172 GETUPVAL                         R23 3
      173 GETTABLEKS                       R22 R23 K10 ["createElement"]
      175 LOADK                            R23 K50 ["UIGradient"]
      176 DUPTABLE                         R24 K52 [{"Transparency"}]
      177 GETIMPORT                        R25 K55 [NumberSequence.new]
      179 NEWTABLE                         R26 0 2
      181 GETIMPORT                        R27 K57 [NumberSequenceKeypoint.new]
      183 LOADN                            R28 0
      184 LOADN                            R29 1
      185 CALL                             R27 2 1
      186 GETIMPORT                        R28 K57 [NumberSequenceKeypoint.new]
      188 LOADN                            R29 1
      189 LOADN                            R30 0
      190 CALL                             R28 2 -1
      191 SETLIST                          R26 R27 -1 [1]
      193 CALL                             R25 1 1
      194 SETTABLEKS                       R25 R24 K51 ["Transparency"]
      196 CALL                             R22 2 1
      197 SETTABLEKS                       R22 R21 K48 ["Gradient"]
      199 CALL                             R18 3 1
      200 SETTABLEKS                       R18 R17 K20 ["Saturation"]
      202 GETUPVAL                         R19 3
      203 GETTABLEKS                       R18 R19 K10 ["createElement"]
      205 LOADK                            R19 K34 ["Frame"]
      206 DUPTABLE                         R20 K39 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      207 GETIMPORT                        R21 K42 [UDim2.fromScale]
      209 LOADN                            R22 1
      210 LOADN                            R23 1
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K35 ["Size"]
      214 GETTABLEKS                       R25 R8 K43 ["Color"]
      216 GETTABLEKS                       R24 R25 K44 ["Extended"]
      218 GETTABLEKS                       R23 R24 K58 ["Black"]
      220 GETTABLEKS                       R22 R23 K59 ["Black_100"]
      222 GETTABLEKS                       R21 R22 K47 ["Color3"]
      224 SETTABLEKS                       R21 R20 K36 ["BackgroundColor3"]
      226 LOADN                            R21 3
      227 SETTABLEKS                       R21 R20 K37 ["ZIndex"]
      229 LOADN                            R21 0
      230 SETTABLEKS                       R21 R20 K38 ["BorderSizePixel"]
      232 DUPTABLE                         R21 K49 [{"Gradient"}]
      233 GETUPVAL                         R23 3
      234 GETTABLEKS                       R22 R23 K10 ["createElement"]
      236 LOADK                            R23 K50 ["UIGradient"]
      237 DUPTABLE                         R24 K61 [{"Rotation", "Transparency"}]
      238 LOADN                            R25 90
      239 SETTABLEKS                       R25 R24 K60 ["Rotation"]
      241 GETIMPORT                        R25 K55 [NumberSequence.new]
      243 NEWTABLE                         R26 0 2
      245 GETIMPORT                        R27 K57 [NumberSequenceKeypoint.new]
      247 LOADN                            R28 0
      248 LOADN                            R29 1
      249 CALL                             R27 2 1
      250 GETIMPORT                        R28 K57 [NumberSequenceKeypoint.new]
      252 LOADN                            R29 1
      253 LOADN                            R30 0
      254 CALL                             R28 2 -1
      255 SETLIST                          R26 R27 -1 [1]
      257 CALL                             R25 1 1
      258 SETTABLEKS                       R25 R24 K51 ["Transparency"]
      260 CALL                             R22 2 1
      261 SETTABLEKS                       R22 R21 K48 ["Gradient"]
      263 CALL                             R18 3 1
      264 SETTABLEKS                       R18 R17 K21 ["Value"]
      266 GETTABLEKS                       R19 R1 K62 ["showSelectionKnob"]
      268 JUMPIFNOT                        R19 ; [+95]
      269 GETUPVAL                         R19 3
      270 GETTABLEKS                       R18 R19 K10 ["createElement"]
      272 GETUPVAL                         R19 8
      273 DUPTABLE                         R20 K69 [{"size", "AnchorPoint", "Position", "style", "stroke", "hasShadow", "ZIndex"}]
      274 GETUPVAL                         R23 7
      275 GETTABLEKS                       R22 R23 K15 ["FoundationColorPickerDesignUpdate"]
      277 JUMPIFNOT                        R22 ; [+4]
      278 GETUPVAL                         R22 9
      279 GETTABLEKS                       R21 R22 K70 ["Medium"]
      281 JUMP                             ; [+3]
      282 GETUPVAL                         R22 9
      283 GETTABLEKS                       R21 R22 K71 ["Large"]
      285 SETTABLEKS                       R21 R20 K63 ["size"]
      287 GETIMPORT                        R21 K73 [Vector2.new]
      289 LOADK                            R22 K74 [0.5]
      290 LOADK                            R23 K74 [0.5]
      291 CALL                             R21 2 1
      292 SETTABLEKS                       R21 R20 K64 ["AnchorPoint"]
      294 GETUPVAL                         R22 3
      295 GETTABLEKS                       R21 R22 K75 ["joinBindings"]
      297 NEWTABLE                         R22 0 2
      299 MOVE                             R23 R3
      300 MOVE                             R24 R4
      301 SETLIST                          R22 R23 2 [1]
      303 CALL                             R21 1 1
      304 DUPCLOSURE                       R23 K76 [PROTO_4]
      305 NAMECALL                         R21 R21 K7 ["map"]
      307 CALL                             R21 2 1
      308 SETTABLEKS                       R21 R20 K65 ["Position"]
      310 GETUPVAL                         R22 3
      311 GETTABLEKS                       R21 R22 K75 ["joinBindings"]
      313 NEWTABLE                         R22 0 3
      315 MOVE                             R23 R2
      316 MOVE                             R24 R3
      317 MOVE                             R25 R4
      318 SETLIST                          R22 R23 3 [1]
      320 CALL                             R21 1 1
      321 DUPCLOSURE                       R23 K77 [PROTO_5]
      322 NAMECALL                         R21 R21 K7 ["map"]
      324 CALL                             R21 2 1
      325 SETTABLEKS                       R21 R20 K66 ["style"]
      327 DUPTABLE                         R21 K79 [{"Color", "Thickness", "Transparency"}]
      328 GETTABLEKS                       R25 R8 K43 ["Color"]
      330 GETTABLEKS                       R24 R25 K80 ["System"]
      332 GETTABLEKS                       R23 R24 K81 ["Contrast"]
      334 GETTABLEKS                       R22 R23 K47 ["Color3"]
      336 SETTABLEKS                       R22 R21 K43 ["Color"]
      338 GETTABLEKS                       R23 R8 K82 ["Stroke"]
      340 GETTABLEKS                       R22 R23 K83 ["Thicker"]
      342 SETTABLEKS                       R22 R21 K78 ["Thickness"]
      344 GETTABLEKS                       R25 R8 K43 ["Color"]
      346 GETTABLEKS                       R24 R25 K80 ["System"]
      348 GETTABLEKS                       R23 R24 K81 ["Contrast"]
      350 GETTABLEKS                       R22 R23 K51 ["Transparency"]
      352 SETTABLEKS                       R22 R21 K51 ["Transparency"]
      354 SETTABLEKS                       R21 R20 K67 ["stroke"]
      356 LOADB                            R21 1
      357 SETTABLEKS                       R21 R20 K68 ["hasShadow"]
      359 LOADN                            R21 4
      360 SETTABLEKS                       R21 R20 K37 ["ZIndex"]
      362 CALL                             R18 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R18
      365 SETTABLEKS                       R18 R17 K22 ["Knob"]
      367 CALL                             R14 3 -1
      368 RETURN                           R14 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["Knob"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R9 R0 K10 ["Components"]
       39 GETTABLEKS                       R8 R9 K13 ["ColorPicker"]
       41 GETTABLEKS                       R7 R8 K14 ["colorUtils"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R10 R0 K15 ["Providers"]
       48 GETTABLEKS                       R9 R10 K16 ["Style"]
       50 GETTABLEKS                       R8 R9 K17 ["useTokens"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K18 ["Utility"]
       57 GETTABLEKS                       R9 R10 K19 ["withCommonProps"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R11 R0 K18 ["Utility"]
       64 GETTABLEKS                       R10 R11 K20 ["withDefaults"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R12 R0 K18 ["Utility"]
       71 GETTABLEKS                       R11 R12 K21 ["Flags"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R13 R0 K10 ["Components"]
       78 GETTABLEKS                       R12 R13 K22 ["Types"]
       80 CALL                             R11 1 1
       81 DUPTABLE                         R12 K24 [{"showSelectionKnob"}]
       82 LOADB                            R13 1
       83 SETTABLEKS                       R13 R12 K23 ["showSelectionKnob"]
       85 DUPCLOSURE                       R13 K25 [PROTO_6]
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 RETURN                           R13 1
