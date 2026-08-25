PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Point", "Envelope"}]
        1 DUPTABLE                         R2 K4 [{"Position"}]
        2 GETIMPORT                        R3 K7 [Vector2.new]
        4 GETTABLEKS                       R4 R0 K8 ["Time"]
        6 GETTABLEKS                       R6 R0 K9 ["Value"]
        8 GETTABLEKS                       R7 R0 K1 ["Envelope"]
       10 ADD                              R5 R6 R7
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K3 ["Position"]
       14 SETTABLEKS                       R2 R1 K0 ["Point"]
       16 GETTABLEKS                       R2 R0 K1 ["Envelope"]
       18 SETTABLEKS                       R2 R1 K1 ["Envelope"]
       20 DUPTABLE                         R2 K2 [{"Point", "Envelope"}]
       21 DUPTABLE                         R3 K4 [{"Position"}]
       22 GETIMPORT                        R4 K7 [Vector2.new]
       24 GETTABLEKS                       R5 R0 K8 ["Time"]
       26 GETTABLEKS                       R7 R0 K9 ["Value"]
       28 GETTABLEKS                       R8 R0 K1 ["Envelope"]
       30 SUB                              R6 R7 R8
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K3 ["Position"]
       34 SETTABLEKS                       R3 R2 K0 ["Point"]
       36 GETTABLEKS                       R3 R0 K1 ["Envelope"]
       38 SETTABLEKS                       R3 R2 K1 ["Envelope"]
       40 RETURN                           R1 2

PROTO_1:
        0 NEWTABLE                         R5 0 0
        2 NEWTABLE                         R6 0 0
        4 MOVE                             R9 R0
        5 MOVE                             R7 R1
        6 LOADN                            R8 1
        7 FORNPREP                         R7
        8 GETTABLE                         R12 R2 R9
        9 GETTABLEKS                       R12 R12 K0 ["Point"]
       11 FASTCALL2                        TABLE_INSERT R5 R12 ; [+4]
       13 MOVE                             R11 R5
       14 GETIMPORT                        R10 K3 [table.insert]
       16 CALL                             R10 2 0
       17 GETTABLE                         R12 R3 R9
       18 GETTABLEKS                       R12 R12 K0 ["Point"]
       20 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
       22 MOVE                             R11 R6
       23 GETIMPORT                        R10 K3 [table.insert]
       25 CALL                             R10 2 0
       26 FORNLOOP                         R7
       27 GETUPVAL                         R7 0
       28 GETUPVAL                         R8 1
       29 DUPTABLE                         R9 K7 [{"Points", "Color3", "Thickness"}]
       30 SETTABLEKS                       R5 R9 K4 ["Points"]
       32 GETTABLEKS                       R10 R4 K5 ["Color3"]
       34 SETTABLEKS                       R10 R9 K5 ["Color3"]
       36 GETTABLEKS                       R10 R4 K8 ["OutlineThickness"]
       38 SETTABLEKS                       R10 R9 K6 ["Thickness"]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 0
       42 GETUPVAL                         R9 1
       43 DUPTABLE                         R10 K7 [{"Points", "Color3", "Thickness"}]
       44 SETTABLEKS                       R6 R10 K4 ["Points"]
       46 GETTABLEKS                       R11 R4 K5 ["Color3"]
       48 SETTABLEKS                       R11 R10 K5 ["Color3"]
       50 GETTABLEKS                       R11 R4 K8 ["OutlineThickness"]
       52 SETTABLEKS                       R11 R10 K6 ["Thickness"]
       54 CALL                             R8 2 -1
       55 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getViewport"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["ScanLines"]
        7 JUMPIFEQKNIL                     R1 ; [+31]
        9 JUMPIFEQKNIL                     R0 ; [+29]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["ScanLines"]
       14 DIVRK                            R1 K2 [1] R2
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["plotToViewX"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R7 R0 K4 ["AbsoluteSize"]
       23 GETTABLEKS                       R7 R7 K5 ["X"]
       25 MUL                              R6 R2 R7
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K6 ["EnvelopeOutlineThicknessScale"]
       29 MUL                              R5 R6 R7
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K7 ["EnvelopeMinOutlineThickness"]
       33 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       35 GETIMPORT                        R4 K10 [math.max]
       37 CALL                             R4 2 1
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useBinding"]
        8 LOADN                            R3 1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R5 R4 K2 ["NumberSequence"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R5
       22 NEWTABLE                         R8 0 4
       24 MOVE                             R9 R1
       25 GETTABLEKS                       R10 R5 K4 ["EnvelopeMinOutlineThickness"]
       27 GETTABLEKS                       R11 R5 K5 ["EnvelopeOutlineThicknessScale"]
       29 GETTABLEKS                       R12 R0 K6 ["ScanLines"]
       31 SETLIST                          R8 R9 4 [1]
       33 CALL                             R6 2 1
       34 NEWTABLE                         R7 0 0
       36 GETUPVAL                         R8 3
       37 CALL                             R8 0 1
       38 JUMPIFNOT                        R8 ; [+304]
       39 GETTABLEKS                       R9 R0 K6 ["ScanLines"]
       41 ORK                              R8 R9 K7 [200]
       42 NEWTABLE                         R9 0 0
       44 NEWTABLE                         R10 0 0
       46 GETTABLEKS                       R11 R0 K8 ["Keypoints"]
       48 LOADN                            R12 1
       49 LOADN                            R13 1
       50 LOADN                            R16 1
       51 LENGTH                           R14 R11
       52 LOADN                            R15 1
       53 FORNPREP                         R14
       54 GETTABLE                         R17 R11 R16
       55 GETUPVAL                         R18 4
       56 MOVE                             R19 R17
       57 CALL                             R18 1 2
       58 SETTABLE                         R18 R9 R16
       59 SETTABLE                         R19 R10 R16
       60 JUMPIFEQKN                       R16 K9 [1] ; [+46]
       62 SUBK                             R21 R16 K9 [1]
       63 GETTABLE                         R20 R11 R21
       64 GETTABLEKS                       R21 R17 K10 ["Envelope"]
       66 JUMPIFNOTEQKN                    R21 K11 [0] ; [+39]
       68 GETTABLEKS                       R21 R20 K10 ["Envelope"]
       70 JUMPIFNOTEQKN                    R21 K11 [0] ; [+35]
       72 SUB                              R21 R13 R12
       73 LOADN                            R22 0
       74 JUMPIFNOTLT                      R22 R21 ; [+28]
       76 GETUPVAL                         R21 5
       77 MOVE                             R22 R12
       78 MOVE                             R23 R13
       79 MOVE                             R24 R9
       80 MOVE                             R25 R10
       81 DUPTABLE                         R26 K14 [{"Color3", "OutlineThickness"}]
       82 GETTABLEKS                       R27 R0 K12 ["Color3"]
       84 SETTABLEKS                       R27 R26 K12 ["Color3"]
       86 SETTABLEKS                       R2 R26 K13 ["OutlineThickness"]
       88 CALL                             R21 5 2
       89 LOADK                            R24 K15 ["OutlineTop%*"]
       90 MOVE                             R26 R16
       91 NAMECALL                         R24 R24 K16 ["format"]
       93 CALL                             R24 2 1
       94 MOVE                             R23 R24
       95 SETTABLE                         R21 R7 R23
       96 LOADK                            R24 K17 ["OutlineBottom%*"]
       97 MOVE                             R26 R16
       98 NAMECALL                         R24 R24 K16 ["format"]
      100 CALL                             R24 2 1
      101 MOVE                             R23 R24
      102 SETTABLE                         R22 R7 R23
      103 MOVE                             R12 R16
      104 MOVE                             R13 R16
      105 JUMP                             ; [+1]
      106 MOVE                             R13 R16
      107 FORNLOOP                         R14
      108 SUB                              R14 R13 R12
      109 LOADN                            R15 0
      110 JUMPIFNOTLT                      R15 R14 ; [+18]
      112 GETUPVAL                         R14 5
      113 MOVE                             R15 R12
      114 MOVE                             R16 R13
      115 MOVE                             R17 R9
      116 MOVE                             R18 R10
      117 DUPTABLE                         R19 K14 [{"Color3", "OutlineThickness"}]
      118 GETTABLEKS                       R20 R0 K12 ["Color3"]
      120 SETTABLEKS                       R20 R19 K12 ["Color3"]
      122 SETTABLEKS                       R2 R19 K13 ["OutlineThickness"]
      124 CALL                             R14 5 2
      125 SETTABLEKS                       R14 R7 K18 ["OutlineTopEnd"]
      127 SETTABLEKS                       R15 R7 K19 ["OutlineBottomEnd"]
      129 DIVRK                            R14 K9 [1] R8
      130 LOADN                            R15 1
      131 LOADN                            R16 0
      132 JUMPIFNOTLE                      R16 R8 ; [+255]
      134 DIV                              R17 R16 R8
      135 LENGTH                           R19 R9
      136 SUBK                             R18 R19 K9 [1]
      137 JUMPIFNOTLT                      R15 R18 ; [+13]
      139 ADDK                             R19 R15 K9 [1]
      140 GETTABLE                         R18 R9 R19
      141 GETTABLEKS                       R18 R18 K20 ["Point"]
      143 GETTABLEKS                       R18 R18 K21 ["Position"]
      145 GETTABLEKS                       R18 R18 K22 ["X"]
      147 JUMPIFNOTLT                      R18 R17 ; [+3]
      149 ADDK                             R15 R15 K9 [1]
      150 JUMPBACK                         ; [-16]
      151 GETTABLE                         R18 R9 R15
      152 ADDK                             R20 R15 K9 [1]
      153 GETTABLE                         R19 R9 R20
      154 GETTABLE                         R20 R10 R15
      155 ADDK                             R22 R15 K9 [1]
      156 GETTABLE                         R21 R10 R22
      157 GETTABLEKS                       R22 R18 K10 ["Envelope"]
      159 JUMPIFNOTEQKN                    R22 K11 [0] ; [+20]
      161 GETTABLEKS                       R22 R19 K10 ["Envelope"]
      163 JUMPIFNOTEQKN                    R22 K11 [0] ; [+16]
      165 GETTABLEKS                       R22 R19 K20 ["Point"]
      167 GETTABLEKS                       R22 R22 K21 ["Position"]
      169 GETTABLEKS                       R22 R22 K22 ["X"]
      171 SUB                              R23 R22 R17
      172 MUL                              R26 R23 R8
      173 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      174 GETIMPORT                        R25 K25 [math.floor]
      176 CALL                             R25 1 1
      177 ADDK                             R24 R25 K9 [1]
      178 ADD                              R16 R16 R24
      179 JUMP                             ; [+161]
      180 GETTABLEKS                       R22 R18 K20 ["Point"]
      182 GETTABLEKS                       R22 R22 K21 ["Position"]
      184 GETTABLEKS                       R22 R22 K22 ["X"]
      186 GETTABLEKS                       R23 R19 K20 ["Point"]
      188 GETTABLEKS                       R23 R23 K21 ["Position"]
      190 GETTABLEKS                       R23 R23 K22 ["X"]
      192 JUMPIFNOTEQ                      R22 R23 ; [+3]
      194 ADDK                             R16 R16 K9 [1]
      195 JUMP                             ; [+145]
      196 GETTABLEKS                       R22 R19 K20 ["Point"]
      198 GETTABLEKS                       R22 R22 K21 ["Position"]
      200 GETTABLEKS                       R22 R22 K22 ["X"]
      202 GETUPVAL                         R23 6
      203 GETTABLEKS                       R23 R23 K26 ["calculatePointOnLine"]
      205 GETTABLEKS                       R24 R18 K20 ["Point"]
      207 GETTABLEKS                       R24 R24 K21 ["Position"]
      209 GETTABLEKS                       R25 R19 K20 ["Point"]
      211 GETTABLEKS                       R25 R25 K21 ["Position"]
      213 MOVE                             R26 R17
      214 CALL                             R23 3 1
      215 GETUPVAL                         R24 6
      216 GETTABLEKS                       R24 R24 K26 ["calculatePointOnLine"]
      218 GETTABLEKS                       R25 R18 K20 ["Point"]
      220 GETTABLEKS                       R25 R25 K21 ["Position"]
      222 GETTABLEKS                       R26 R19 K20 ["Point"]
      224 GETTABLEKS                       R26 R26 K21 ["Position"]
      226 ADD                              R28 R17 R14
      227 FASTCALL2                        MATH_MIN R28 R22 ; [+4]
      229 MOVE                             R29 R22
      230 GETIMPORT                        R27 K28 [math.min]
      232 CALL                             R27 2 1
      233 CALL                             R24 3 1
      234 GETUPVAL                         R25 6
      235 GETTABLEKS                       R25 R25 K26 ["calculatePointOnLine"]
      237 GETTABLEKS                       R26 R20 K20 ["Point"]
      239 GETTABLEKS                       R26 R26 K21 ["Position"]
      241 GETTABLEKS                       R27 R21 K20 ["Point"]
      243 GETTABLEKS                       R27 R27 K21 ["Position"]
      245 MOVE                             R28 R17
      246 CALL                             R25 3 1
      247 GETUPVAL                         R26 6
      248 GETTABLEKS                       R26 R26 K26 ["calculatePointOnLine"]
      250 GETTABLEKS                       R27 R20 K20 ["Point"]
      252 GETTABLEKS                       R27 R27 K21 ["Position"]
      254 GETTABLEKS                       R28 R21 K20 ["Point"]
      256 GETTABLEKS                       R28 R28 K21 ["Position"]
      258 ADD                              R30 R17 R14
      259 FASTCALL2                        MATH_MIN R30 R22 ; [+4]
      261 MOVE                             R31 R22
      262 GETIMPORT                        R29 K28 [math.min]
      264 CALL                             R29 2 1
      265 CALL                             R26 3 1
      266 GETIMPORT                        R27 K31 [Vector2.new]
      268 GETTABLEKS                       R28 R23 K22 ["X"]
      270 GETTABLEKS                       R29 R23 K32 ["Y"]
      272 CALL                             R27 2 1
      273 MOVE                             R23 R27
      274 GETIMPORT                        R27 K31 [Vector2.new]
      276 GETTABLEKS                       R28 R25 K22 ["X"]
      278 GETTABLEKS                       R29 R25 K32 ["Y"]
      280 CALL                             R27 2 1
      281 MOVE                             R25 R27
      282 MOVE                             R27 R25
      283 GETIMPORT                        R29 K31 [Vector2.new]
      285 MOVE                             R30 R14
      286 LOADN                            R31 0
      287 CALL                             R29 2 1
      288 ADD                              R28 R23 R29
      289 GETTABLEKS                       R29 R24 K32 ["Y"]
      291 GETTABLEKS                       R30 R23 K32 ["Y"]
      293 JUMPIFNOTLT                      R29 R30 ; [+10]
      295 GETIMPORT                        R29 K31 [Vector2.new]
      297 GETTABLEKS                       R31 R23 K22 ["X"]
      299 ADD                              R30 R31 R14
      300 GETTABLEKS                       R31 R24 K32 ["Y"]
      302 CALL                             R29 2 1
      303 MOVE                             R28 R29
      304 GETTABLEKS                       R29 R26 K32 ["Y"]
      306 GETTABLEKS                       R30 R25 K32 ["Y"]
      308 JUMPIFNOTLT                      R30 R29 ; [+9]
      310 GETIMPORT                        R29 K31 [Vector2.new]
      312 GETTABLEKS                       R30 R25 K22 ["X"]
      314 GETTABLEKS                       R31 R26 K32 ["Y"]
      316 CALL                             R29 2 1
      317 MOVE                             R27 R29
      318 LOADK                            R30 K33 ["ScanLine%*"]
      319 MOVE                             R32 R16
      320 NAMECALL                         R30 R30 K16 ["format"]
      322 CALL                             R30 2 1
      323 MOVE                             R29 R30
      324 GETUPVAL                         R30 7
      325 GETUPVAL                         R31 8
      326 DUPTABLE                         R32 K37 [{["Rect"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
      327 GETIMPORT                        R33 K38 [Rect.new]
      329 MOVE                             R34 R27
      330 MOVE                             R35 R28
      331 CALL                             R33 2 1
      332 SETTABLEKS                       R33 R32 K34 ["Rect"]
      334 GETTABLEKS                       R33 R0 K12 ["Color3"]
      336 SETTABLEKS                       R33 R32 K36 ["BackgroundColor3"]
      338 CALL                             R30 2 1
      339 SETTABLE                         R30 R7 R29
      340 ADDK                             R16 R16 K9 [1]
      341 JUMPBACK                         ; [-210]
      342 JUMP                             ; [+45]
      343 NEWTABLE                         R8 0 0
      345 NEWTABLE                         R9 0 0
      347 GETTABLEKS                       R10 R0 K8 ["Keypoints"]
      349 LOADN                            R13 1
      350 LENGTH                           R11 R10
      351 LOADN                            R12 1
      352 FORNPREP                         R11
      353 GETTABLE                         R14 R10 R13
      354 GETUPVAL                         R15 4
      355 MOVE                             R16 R14
      356 CALL                             R15 1 2
      357 GETTABLEKS                       R17 R15 K20 ["Point"]
      359 SETTABLE                         R17 R8 R13
      360 GETTABLEKS                       R17 R16 K20 ["Point"]
      362 SETTABLE                         R17 R9 R13
      363 FORNLOOP                         R11
      364 GETUPVAL                         R11 7
      365 GETUPVAL                         R12 9
      366 DUPTABLE                         R13 K41 [{["Points"], ["Color3"], ["Thickness"] = 1}]
      367 SETTABLEKS                       R8 R13 K39 ["Points"]
      369 GETTABLEKS                       R14 R0 K12 ["Color3"]
      371 SETTABLEKS                       R14 R13 K12 ["Color3"]
      373 CALL                             R11 2 1
      374 SETTABLEKS                       R11 R7 K42 ["OutlineTopCurve"]
      376 GETUPVAL                         R11 7
      377 GETUPVAL                         R12 9
      378 DUPTABLE                         R13 K41 [{["Points"], ["Color3"], ["Thickness"] = 1}]
      379 SETTABLEKS                       R9 R13 K39 ["Points"]
      381 GETTABLEKS                       R14 R0 K12 ["Color3"]
      383 SETTABLEKS                       R14 R13 K12 ["Color3"]
      385 CALL                             R11 2 1
      386 SETTABLEKS                       R11 R7 K43 ["OutlineBottomCurve"]
      388 GETUPVAL                         R8 7
      389 GETUPVAL                         R9 10
      390 DUPTABLE                         R10 K48 [{["tag"] = "size-full", ["onAbsoluteSizeChanged"], ["ZIndex"]}]
      391 SETTABLEKS                       R6 R10 K46 ["onAbsoluteSizeChanged"]
      393 GETTABLEKS                       R11 R0 K47 ["ZIndex"]
      395 SETTABLEKS                       R11 R10 K47 ["ZIndex"]
      397 DUPTABLE                         R11 K50 [{"EnvelopeGroup"}]
      398 GETUPVAL                         R12 7
      399 LOADK                            R13 K51 ["CanvasGroup"]
      400 DUPTABLE                         R14 K56 [{["Size"], ["BackgroundTransparency"] = 1, ["GroupTransparency"], ["Interactable"] = False}]
      401 GETIMPORT                        R15 K59 [UDim2.fromScale]
      403 LOADN                            R16 1
      404 LOADN                            R17 1
      405 CALL                             R15 2 1
      406 SETTABLEKS                       R15 R14 K52 ["Size"]
      408 GETTABLEKS                       R15 R0 K60 ["Transparency"]
      410 SETTABLEKS                       R15 R14 K53 ["GroupTransparency"]
      412 MOVE                             R15 R7
      413 CALL                             R12 3 1
      414 SETTABLEKS                       R12 R11 K49 ["EnvelopeGroup"]
      416 CALL                             R8 3 -1
      417 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Graphing"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["PropertyEntries"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyView"]
       27 GETTABLEKS                       R5 R5 K12 ["NumberSequencePropertyView"]
       29 GETTABLEKS                       R5 R5 K13 ["NumberSequenceUtil"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Flags"]
       41 GETTABLEKS                       R7 R7 K16 ["getFFlagPropertiesNumberSequenceEnvelopeScanLines"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R3 K17 ["Curve"]
       46 GETTABLEKS                       R8 R3 K18 ["Panel"]
       48 GETTABLEKS                       R9 R3 K19 ["CanvasContext"]
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K20 ["Hooks"]
       54 GETTABLEKS                       R11 R11 K21 ["useVisualValues"]
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R11 R2 K22 ["View"]
       59 GETTABLEKS                       R12 R5 K23 ["createElement"]
       61 DUPCLOSURE                       R13 K24 [PROTO_0]
       62 DUPCLOSURE                       R14 K25 [PROTO_1]
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R15 K26 [PROTO_3]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R11
       77 RETURN                           R15 1
