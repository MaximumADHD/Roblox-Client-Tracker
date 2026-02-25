PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GuiState"]
        3 GETIMPORT                        R1 K3 [Enum.GuiState.Press]
        5 JUMPIFNOTEQ                      R0 R1 ; [+41]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K4 ["anchor"]
       10 JUMPIFNOT                        R0 ; [+32]
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+30]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K4 ["anchor"]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K5 ["getValue"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R3 R4 K6 ["FoundationPopoverContentStateFix"]
       27 JUMPIFNOT                        R3 ; [+2]
       28 JUMPIFNOT                        R2 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R3 R4 K7 ["FoundationPopoverContentToggleOnAnchorClick"]
       33 JUMPIFNOT                        R3 ; [+7]
       34 GETTABLEKS                       R3 R0 K0 ["GuiState"]
       36 GETIMPORT                        R4 K9 [Enum.GuiState.Idle]
       38 JUMPIFEQ                         R3 R4 ; [+2]
       40 RETURN                           R0 0
       41 JUMPIFNOT                        R2 ; [+1]
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 6
       44 GETTABLEKS                       R0 R1 K10 ["onPressedOutside"]
       46 CALL                             R0 0 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["FoundationPopoverContentStateFix"]
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETUPVAL                         R1 2
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 JUMPIFEQKNIL                     R0 ; [+23]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R1 R2 K3 ["onPressedOutside"]
       22 JUMPIFNOT                        R1 ; [+18]
       23 GETUPVAL                         R1 0
       24 LOADK                            R4 K4 ["GuiState"]
       25 NAMECALL                         R2 R0 K5 ["GetPropertyChangedSignal"]
       27 CALL                             R2 2 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U3
       36 NAMECALL                         R2 R2 K6 ["Connect"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K0 ["current"]
       41 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R0 R2
        6 RETURN                           R1 1

PROTO_6:
        0 GETTABLEN                        R3 R0 2
        1 GETTABLEKS                       R2 R3 K0 ["X"]
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        5 LOADN                            R1 255
        6 JUMP                             ; [+1]
        7 LOADN                            R1 1
        8 GETTABLEN                        R4 R0 2
        9 GETTABLEKS                       R3 R4 K2 ["Y"]
       11 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       13 LOADN                            R2 255
       14 JUMP                             ; [+1]
       15 LOADN                            R2 1
       16 GETIMPORT                        R3 K5 [UDim2.fromOffset]
       18 GETTABLEN                        R6 R0 1
       19 GETTABLEKS                       R5 R6 K0 ["X"]
       21 GETUPVAL                         R8 0
       22 DIVK                             R7 R8 K6 [2]
       23 MUL                              R6 R7 R1
       24 ADD                              R4 R5 R6
       25 GETTABLEN                        R8 R0 1
       26 GETTABLEKS                       R7 R8 K2 ["Y"]
       28 GETUPVAL                         R10 0
       29 DIVK                             R9 R10 K6 [2]
       30 MUL                              R8 R9 R2
       31 ADD                              R6 R7 R8
       32 ADDK                             R5 R6 K6 [2]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 DIVK                             R4 R5 K4 [2]
        6 SUB                              R2 R3 R4
        7 GETTABLEKS                       R5 R0 K5 ["Y"]
        9 GETUPVAL                         R7 0
       10 DIVK                             R6 R7 K4 [2]
       11 SUB                              R4 R5 R6
       12 ADDK                             R3 R4 K4 [2]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_9:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useContext"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R6 R3 K1 ["anchor"]
       11 FASTCALL1                        TYPEOF R6 ; [+2]
       12 GETIMPORT                        R5 K3 [typeof]
       14 CALL                             R5 1 1
       15 JUMPIFEQKS                       R5 K4 ["Instance"] ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R6 R7 K5 ["FoundationNoArrowOnVirtualRef"]
       22 JUMPIFNOT                        R6 ; [+6]
       23 JUMPIFNOT                        R4 ; [+3]
       24 GETTABLEKS                       R5 R2 K6 ["hasArrow"]
       26 JUMP                             ; [+4]
       27 LOADB                            R5 0
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R5 R2 K6 ["hasArrow"]
       31 GETUPVAL                         R6 5
       32 CALL                             R6 0 1
       33 GETUPVAL                         R7 6
       34 CALL                             R7 0 1
       35 GETTABLEKS                       R9 R7 K7 ["Size"]
       37 GETTABLEKS                       R8 R9 K8 ["Size_200"]
       39 MULK                             R9 R8 K9 [1.4142135623731]
       40 DIVK                             R10 R9 K10 [2]
       41 GETTABLEKS                       R11 R2 K11 ["backgroundStyle"]
       43 JUMPIF                           R11 ; [+6]
       44 GETTABLEKS                       R13 R7 K12 ["Color"]
       46 GETTABLEKS                       R12 R13 K13 ["Surface"]
       48 GETTABLEKS                       R11 R12 K14 ["Surface_100"]
       50 GETUPVAL                         R13 2
       51 GETTABLEKS                       R12 R13 K15 ["useRef"]
       53 LOADNIL                          R13
       54 CALL                             R12 1 1
       55 GETUPVAL                         R14 2
       56 GETTABLEKS                       R13 R14 K16 ["useState"]
       58 LOADNIL                          R14
       59 CALL                             R13 1 2
       60 GETUPVAL                         R15 7
       61 GETUPVAL                         R18 4
       62 GETTABLEKS                       R17 R18 K17 ["FoundationPopoverContentStateFix"]
       64 JUMPIFNOT                        R17 ; [+2]
       65 MOVE                             R16 R13
       66 JUMP                             ; [+5]
       67 JUMPIFNOT                        R4 ; [+3]
       68 GETTABLEKS                       R16 R3 K1 ["anchor"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R16
       72 CALL                             R15 1 1
       73 GETUPVAL                         R17 2
       74 GETTABLEKS                       R16 R17 K18 ["useImperativeHandle"]
       76 MOVE                             R17 R1
       77 NEWCLOSURE                       R18 P0
       78 CAPTURE                          VAL R12
       79 NEWTABLE                         R19 0 0
       81 CALL                             R16 3 0
       82 GETUPVAL                         R16 8
       83 GETTABLEKS                       R17 R3 K19 ["isOpen"]
       85 GETTABLEKS                       R18 R3 K1 ["anchor"]
       87 GETTABLEKS                       R19 R12 K20 ["current"]
       89 MOVE                             R20 R6
       90 GETTABLEKS                       R21 R2 K21 ["side"]
       92 GETTABLEKS                       R22 R2 K22 ["align"]
       94 JUMPIFNOT                        R5 ; [+2]
       95 MOVE                             R23 R10
       96 JUMP                             ; [+1]
       97 LOADN                            R23 0
       98 CALL                             R16 7 6
       99 GETUPVAL                         R23 2
      100 GETTABLEKS                       R22 R23 K15 ["useRef"]
      102 LOADNIL                          R23
      103 CALL                             R22 1 1
      104 GETUPVAL                         R24 2
      105 GETTABLEKS                       R23 R24 K23 ["useCallback"]
      107 NEWCLOSURE                       R24 P1
      108 CAPTURE                          VAL R22
      109 CAPTURE                          UPVAL U4
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R15
      115 CAPTURE                          UPVAL U9
      116 NEWTABLE                         R25 0 2
      118 GETTABLEKS                       R26 R2 K24 ["onPressedOutside"]
      120 GETTABLEKS                       R27 R3 K1 ["anchor"]
      122 SETLIST                          R25 R26 2 [1]
      124 CALL                             R23 2 1
      125 GETUPVAL                         R25 2
      126 GETTABLEKS                       R24 R25 K25 ["useEffect"]
      128 NEWCLOSURE                       R25 P2
      129 CAPTURE                          VAL R22
      130 NEWTABLE                         R26 0 0
      132 CALL                             R24 2 0
      133 GETUPVAL                         R25 2
      134 GETTABLEKS                       R24 R25 K26 ["createElement"]
      136 GETUPVAL                         R26 2
      137 GETTABLEKS                       R25 R26 K27 ["Fragment"]
      139 LOADNIL                          R26
      140 DUPTABLE                         R27 K32 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      141 GETTABLEKS                       R29 R2 K24 ["onPressedOutside"]
      143 JUMPIFNOT                        R29 ; [+39]
      144 GETTABLEKS                       R29 R3 K19 ["isOpen"]
      146 JUMPIFNOT                        R29 ; [+36]
      147 GETUPVAL                         R29 2
      148 GETTABLEKS                       R28 R29 K26 ["createElement"]
      150 GETUPVAL                         R29 10
      151 DUPTABLE                         R30 K37 [{"ZIndex", "stateLayer", "Size", "ref", "testId"}]
      152 LOADN                            R31 1
      153 SETTABLEKS                       R31 R30 K33 ["ZIndex"]
      155 DUPTABLE                         R31 K39 [{"affordance"}]
      156 GETUPVAL                         R33 11
      157 GETTABLEKS                       R32 R33 K40 ["None"]
      159 SETTABLEKS                       R32 R31 K38 ["affordance"]
      161 SETTABLEKS                       R31 R30 K34 ["stateLayer"]
      163 GETIMPORT                        R31 K43 [UDim2.fromScale]
      165 LOADN                            R32 1
      166 LOADN                            R33 1
      167 CALL                             R31 2 1
      168 SETTABLEKS                       R31 R30 K7 ["Size"]
      170 SETTABLEKS                       R23 R30 K35 ["ref"]
      172 LOADK                            R32 K44 ["%*--backdrop"]
      173 GETTABLEKS                       R34 R3 K36 ["testId"]
      175 NAMECALL                         R32 R32 K45 ["format"]
      177 CALL                             R32 2 1
      178 MOVE                             R31 R32
      179 SETTABLEKS                       R31 R30 K36 ["testId"]
      181 CALL                             R28 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R28
      184 SETTABLEKS                       R28 R27 K28 ["Backdrop"]
      186 GETUPVAL                         R29 2
      187 GETTABLEKS                       R28 R29 K26 ["createElement"]
      189 GETUPVAL                         R29 12
      190 DUPTABLE                         R30 K52 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "Visible", "slice", "imageStyle", "testId"}]
      191 GETUPVAL                         R33 4
      192 GETTABLEKS                       R32 R33 K53 ["FoundationPopoverOverflow"]
      194 JUMPIFNOT                        R32 ; [+2]
      195 MOVE                             R31 R21
      196 JUMP                             ; [+1]
      197 LOADNIL                          R31
      198 SETTABLEKS                       R31 R30 K46 ["AnchorPoint"]
      200 GETUPVAL                         R31 13
      201 SETTABLEKS                       R31 R30 K47 ["Image"]
      203 DUPCLOSURE                       R33 K54 [PROTO_5]
      204 CAPTURE                          UPVAL U14
      205 NAMECALL                         R31 R18 K55 ["map"]
      207 CALL                             R31 2 1
      208 SETTABLEKS                       R31 R30 K7 ["Size"]
      210 GETUPVAL                         R33 4
      211 GETTABLEKS                       R32 R33 K53 ["FoundationPopoverOverflow"]
      213 JUMPIFNOT                        R32 ; [+16]
      214 GETUPVAL                         R32 2
      215 GETTABLEKS                       R31 R32 K56 ["joinBindings"]
      217 NEWTABLE                         R32 0 2
      219 MOVE                             R33 R16
      220 MOVE                             R34 R21
      221 SETLIST                          R32 R33 2 [1]
      223 CALL                             R31 1 1
      224 DUPCLOSURE                       R33 K57 [PROTO_6]
      225 CAPTURE                          UPVAL U14
      226 NAMECALL                         R31 R31 K55 ["map"]
      228 CALL                             R31 2 1
      229 JUMP                             ; [+5]
      230 DUPCLOSURE                       R33 K58 [PROTO_7]
      231 CAPTURE                          UPVAL U14
      232 NAMECALL                         R31 R16 K55 ["map"]
      234 CALL                             R31 2 1
      235 SETTABLEKS                       R31 R30 K48 ["Position"]
      237 LOADN                            R31 2
      238 SETTABLEKS                       R31 R30 K33 ["ZIndex"]
      240 SETTABLEKS                       R17 R30 K49 ["Visible"]
      242 DUPTABLE                         R31 K60 [{"center"}]
      243 GETIMPORT                        R32 K63 [Rect.new]
      245 GETUPVAL                         R33 14
      246 GETUPVAL                         R34 14
      247 GETUPVAL                         R36 14
      248 ADDK                             R35 R36 K64 [1]
      249 GETUPVAL                         R37 14
      250 ADDK                             R36 R37 K64 [1]
      251 CALL                             R32 4 1
      252 SETTABLEKS                       R32 R31 K59 ["center"]
      254 SETTABLEKS                       R31 R30 K50 ["slice"]
      256 GETTABLEKS                       R34 R7 K12 ["Color"]
      258 GETTABLEKS                       R33 R34 K65 ["Extended"]
      260 GETTABLEKS                       R32 R33 K66 ["Black"]
      262 GETTABLEKS                       R31 R32 K67 ["Black_20"]
      264 SETTABLEKS                       R31 R30 K51 ["imageStyle"]
      266 LOADK                            R32 K68 ["%*--shadow"]
      267 GETTABLEKS                       R34 R3 K36 ["testId"]
      269 NAMECALL                         R32 R32 K45 ["format"]
      271 CALL                             R32 2 1
      272 MOVE                             R31 R32
      273 SETTABLEKS                       R31 R30 K36 ["testId"]
      275 CALL                             R28 2 1
      276 SETTABLEKS                       R28 R27 K29 ["Shadow"]
      278 JUMPIFNOT                        R5 ; [+42]
      279 GETUPVAL                         R29 2
      280 GETTABLEKS                       R28 R29 K26 ["createElement"]
      282 GETUPVAL                         R29 10
      283 DUPTABLE                         R30 K71 [{"Size", "Position", "Rotation", "ZIndex", "Visible", "backgroundStyle", "tag", "testId"}]
      284 GETIMPORT                        R31 K73 [UDim2.fromOffset]
      286 MOVE                             R32 R8
      287 MOVE                             R33 R8
      288 CALL                             R31 2 1
      289 SETTABLEKS                       R31 R30 K7 ["Size"]
      291 DUPCLOSURE                       R33 K74 [PROTO_8]
      292 NAMECALL                         R31 R19 K55 ["map"]
      294 CALL                             R31 2 1
      295 SETTABLEKS                       R31 R30 K48 ["Position"]
      297 LOADN                            R31 45
      298 SETTABLEKS                       R31 R30 K69 ["Rotation"]
      300 LOADN                            R31 3
      301 SETTABLEKS                       R31 R30 K33 ["ZIndex"]
      303 SETTABLEKS                       R17 R30 K49 ["Visible"]
      305 SETTABLEKS                       R11 R30 K11 ["backgroundStyle"]
      307 LOADK                            R31 K75 ["anchor-center-center"]
      308 SETTABLEKS                       R31 R30 K70 ["tag"]
      310 LOADK                            R32 K76 ["%*--arrow"]
      311 GETTABLEKS                       R34 R3 K36 ["testId"]
      313 NAMECALL                         R32 R32 K45 ["format"]
      315 CALL                             R32 2 1
      316 MOVE                             R31 R32
      317 SETTABLEKS                       R31 R30 K36 ["testId"]
      319 CALL                             R28 2 1
      320 JUMP                             ; [+1]
      321 LOADNIL                          R28
      322 SETTABLEKS                       R28 R27 K30 ["Arrow"]
      324 GETUPVAL                         R29 2
      325 GETTABLEKS                       R28 R29 K26 ["createElement"]
      327 GETUPVAL                         R29 10
      328 DUPTABLE                         R30 K80 [{"AnchorPoint", "Position", "Visible", "selection", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "backgroundStyle", "tag", "ref", "testId"}]
      329 GETUPVAL                         R33 4
      330 GETTABLEKS                       R32 R33 K53 ["FoundationPopoverOverflow"]
      332 JUMPIFNOT                        R32 ; [+2]
      333 MOVE                             R31 R21
      334 JUMP                             ; [+1]
      335 LOADNIL                          R31
      336 SETTABLEKS                       R31 R30 K46 ["AnchorPoint"]
      338 DUPCLOSURE                       R33 K81 [PROTO_9]
      339 NAMECALL                         R31 R16 K55 ["map"]
      341 CALL                             R31 2 1
      342 SETTABLEKS                       R31 R30 K48 ["Position"]
      344 SETTABLEKS                       R17 R30 K49 ["Visible"]
      346 GETTABLEKS                       R31 R2 K77 ["selection"]
      348 SETTABLEKS                       R31 R30 K77 ["selection"]
      350 DUPTABLE                         R31 K83 [{"MaxSize"}]
      351 SETTABLEKS                       R20 R31 K82 ["MaxSize"]
      353 SETTABLEKS                       R31 R30 K78 ["sizeConstraint"]
      355 DUPTABLE                         R31 K39 [{"affordance"}]
      356 GETUPVAL                         R33 11
      357 GETTABLEKS                       R32 R33 K40 ["None"]
      359 SETTABLEKS                       R32 R31 K38 ["affordance"]
      361 SETTABLEKS                       R31 R30 K34 ["stateLayer"]
      363 LOADN                            R31 4
      364 SETTABLEKS                       R31 R30 K33 ["ZIndex"]
      366 GETTABLEKS                       R32 R2 K24 ["onPressedOutside"]
      368 JUMPIFNOT                        R32 ; [+2]
      369 DUPCLOSURE                       R31 K84 [PROTO_10]
      370 JUMP                             ; [+1]
      371 LOADNIL                          R31
      372 SETTABLEKS                       R31 R30 K79 ["onActivated"]
      374 SETTABLEKS                       R11 R30 K11 ["backgroundStyle"]
      376 LOADK                            R32 K85 ["auto-xy %*"]
      377 GETUPVAL                         R35 15
      378 GETTABLEKS                       R36 R2 K86 ["radius"]
      380 GETTABLE                         R34 R35 R36
      381 NAMECALL                         R32 R32 K45 ["format"]
      383 CALL                             R32 2 1
      384 MOVE                             R31 R32
      385 SETTABLEKS                       R31 R30 K70 ["tag"]
      387 SETTABLEKS                       R12 R30 K35 ["ref"]
      389 LOADK                            R32 K87 ["%*--content"]
      390 GETTABLEKS                       R34 R3 K36 ["testId"]
      392 NAMECALL                         R32 R32 K45 ["format"]
      394 CALL                             R32 2 1
      395 MOVE                             R31 R32
      396 SETTABLEKS                       R31 R30 K36 ["testId"]
      398 GETTABLEKS                       R31 R2 K88 ["children"]
      400 CALL                             R28 3 1
      401 SETTABLEKS                       R28 R27 K31 ["Content"]
      403 CALL                             R24 3 1
      404 JUMPIFNOTEQKNIL                  R6 ; [+2]
      406 RETURN                           R24 1
      407 GETUPVAL                         R26 16
      408 GETTABLEKS                       R25 R26 K89 ["createPortal"]
      410 MOVE                             R26 R24
      411 MOVE                             R27 R6
      412 CALL                             R25 2 -1
      413 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["View"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Components"]
       20 GETTABLEKS                       R4 R5 K9 ["Image"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R8 K1 [script]
       27 GETTABLEKS                       R7 R8 K4 ["Parent"]
       29 GETTABLEKS                       R6 R7 K4 ["Parent"]
       31 GETTABLEKS                       R5 R6 K10 ["PopoverContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R8 R0 K11 ["Providers"]
       38 GETTABLEKS                       R7 R8 K12 ["Overlay"]
       40 GETTABLEKS                       R6 R7 K13 ["useOverlay"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETIMPORT                        R10 K1 [script]
       47 GETTABLEKS                       R9 R10 K4 ["Parent"]
       49 GETTABLEKS                       R8 R9 K4 ["Parent"]
       51 GETTABLEKS                       R7 R8 K14 ["useFloating"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Providers"]
       58 GETTABLEKS                       R9 R10 K15 ["Style"]
       60 GETTABLEKS                       R8 R9 K16 ["useTokens"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Utility"]
       67 GETTABLEKS                       R9 R10 K18 ["withDefaults"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R11 R0 K17 ["Utility"]
       74 GETTABLEKS                       R10 R11 K19 ["usePointerPosition"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R12 R0 K17 ["Utility"]
       81 GETTABLEKS                       R11 R12 K20 ["isPointInGuiObjectBounds"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K6 [require]
       86 GETTABLEKS                       R12 R0 K21 ["Constants"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R14 R0 K22 ["Enums"]
       93 GETTABLEKS                       R13 R14 K23 ["StateLayerAffordance"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R15 R0 K22 ["Enums"]
      100 GETTABLEKS                       R14 R15 K24 ["PopoverSide"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R16 R0 K22 ["Enums"]
      107 GETTABLEKS                       R15 R16 K25 ["PopoverAlign"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R17 R0 K22 ["Enums"]
      114 GETTABLEKS                       R16 R17 K26 ["Radius"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R18 R0 K17 ["Utility"]
      121 GETTABLEKS                       R17 R18 K27 ["Flags"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K6 [require]
      126 GETTABLEKS                       R18 R1 K28 ["React"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K6 [require]
      131 GETTABLEKS                       R19 R1 K29 ["ReactRoblox"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K6 [require]
      136 GETTABLEKS                       R21 R0 K7 ["Components"]
      138 GETTABLEKS                       R20 R21 K30 ["Types"]
      140 CALL                             R19 1 1
      141 DUPTABLE                         R20 K36 [{"side", "align", "hasArrow", "selection", "radius"}]
      142 GETTABLEKS                       R21 R13 K37 ["Bottom"]
      144 SETTABLEKS                       R21 R20 K31 ["side"]
      146 GETTABLEKS                       R21 R14 K38 ["Center"]
      148 SETTABLEKS                       R21 R20 K32 ["align"]
      150 LOADB                            R21 1
      151 SETTABLEKS                       R21 R20 K33 ["hasArrow"]
      153 DUPTABLE                         R21 K40 [{"Selectable"}]
      154 LOADB                            R22 0
      155 SETTABLEKS                       R22 R21 K39 ["Selectable"]
      157 SETTABLEKS                       R21 R20 K34 ["selection"]
      159 GETTABLEKS                       R21 R15 K41 ["Medium"]
      161 SETTABLEKS                       R21 R20 K35 ["radius"]
      163 NEWTABLE                         R21 4 0
      165 GETTABLEKS                       R22 R15 K42 ["Small"]
      167 LOADK                            R23 K43 ["radius-small"]
      168 SETTABLE                         R23 R21 R22
      169 GETTABLEKS                       R22 R15 K41 ["Medium"]
      171 LOADK                            R23 K44 ["radius-medium"]
      172 SETTABLE                         R23 R21 R22
      173 GETTABLEKS                       R22 R15 K45 ["Circle"]
      175 LOADK                            R23 K46 ["radius-circle"]
      176 SETTABLE                         R23 R21 R22
      177 GETTABLEKS                       R22 R11 K47 ["SHADOW_IMAGE"]
      179 GETTABLEKS                       R23 R11 K48 ["SHADOW_SIZE"]
      181 DUPCLOSURE                       R24 K49 [PROTO_11]
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R18
      199 GETTABLEKS                       R25 R17 K50 ["forwardRef"]
      201 MOVE                             R26 R24
      202 CALL                             R25 1 -1
      203 RETURN                           R25 -1
