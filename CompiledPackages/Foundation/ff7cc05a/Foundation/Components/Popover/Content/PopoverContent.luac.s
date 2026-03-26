PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GuiState"]
        3 GETIMPORT                        R1 K3 [Enum.GuiState.Press]
        5 JUMPIFNOTEQ                      R0 R1 ; [+31]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K4 ["anchor"]
       10 JUMPIFNOT                        R0 ; [+22]
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+20]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K4 ["anchor"]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K5 ["getValue"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R3 R0 K0 ["GuiState"]
       28 GETIMPORT                        R4 K7 [Enum.GuiState.Idle]
       30 JUMPIFEQ                         R3 R4 ; [+2]
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 5
       34 GETTABLEKS                       R0 R1 K8 ["onPressedOutside"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 JUMPIFEQKNIL                     R0 ; [+22]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["onPressedOutside"]
       18 JUMPIFNOT                        R1 ; [+17]
       19 GETUPVAL                         R1 0
       20 LOADK                            R4 K3 ["GuiState"]
       21 NAMECALL                         R2 R0 K4 ["GetPropertyChangedSignal"]
       23 CALL                             R2 2 1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U2
       31 NAMECALL                         R2 R2 K5 ["Connect"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K0 ["current"]
       36 RETURN                           R0 0

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
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
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
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R5 R2 K5 ["hasArrow"]
       22 JUMP                             ; [+1]
       23 LOADB                            R5 0
       24 GETUPVAL                         R6 4
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 5
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 6
       29 GETUPVAL                         R10 7
       30 GETTABLEKS                       R9 R10 K6 ["Popover"]
       32 DUPTABLE                         R10 K8 [{"stackAboveOwner"}]
       33 LOADB                            R11 1
       34 SETTABLEKS                       R11 R10 K7 ["stackAboveOwner"]
       36 CALL                             R8 2 1
       37 GETTABLEKS                       R10 R7 K9 ["Size"]
       39 GETTABLEKS                       R9 R10 K10 ["Size_200"]
       41 MULK                             R10 R9 K11 [1.4142135623731]
       42 DIVK                             R11 R10 K12 [2]
       43 GETTABLEKS                       R12 R2 K13 ["backgroundStyle"]
       45 JUMPIF                           R12 ; [+6]
       46 GETTABLEKS                       R14 R7 K14 ["Color"]
       48 GETTABLEKS                       R13 R14 K15 ["Surface"]
       50 GETTABLEKS                       R12 R13 K16 ["Surface_100"]
       52 GETUPVAL                         R14 2
       53 GETTABLEKS                       R13 R14 K17 ["useState"]
       55 LOADNIL                          R14
       56 CALL                             R13 1 2
       57 GETUPVAL                         R16 2
       58 GETTABLEKS                       R15 R16 K17 ["useState"]
       60 LOADNIL                          R16
       61 CALL                             R15 1 2
       62 GETUPVAL                         R17 8
       63 MOVE                             R18 R15
       64 CALL                             R17 1 1
       65 GETUPVAL                         R19 2
       66 GETTABLEKS                       R18 R19 K18 ["useImperativeHandle"]
       68 MOVE                             R19 R1
       69 NEWCLOSURE                       R20 P0
       70 CAPTURE                          VAL R13
       71 NEWTABLE                         R21 0 1
       73 MOVE                             R22 R13
       74 SETLIST                          R21 R22 1 [1]
       76 CALL                             R18 3 0
       77 GETUPVAL                         R18 9
       78 GETTABLEKS                       R19 R3 K19 ["isOpen"]
       80 GETTABLEKS                       R20 R3 K1 ["anchor"]
       82 MOVE                             R21 R13
       83 MOVE                             R22 R6
       84 GETTABLEKS                       R23 R2 K20 ["side"]
       86 GETTABLEKS                       R24 R2 K21 ["align"]
       88 JUMPIFNOT                        R5 ; [+2]
       89 MOVE                             R25 R11
       90 JUMP                             ; [+1]
       91 LOADN                            R25 0
       92 CALL                             R18 7 6
       93 GETUPVAL                         R25 2
       94 GETTABLEKS                       R24 R25 K22 ["useRef"]
       96 LOADNIL                          R25
       97 CALL                             R24 1 1
       98 GETUPVAL                         R26 2
       99 GETTABLEKS                       R25 R26 K23 ["useCallback"]
      101 NEWCLOSURE                       R26 P1
      102 CAPTURE                          VAL R24
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R17
      108 CAPTURE                          UPVAL U10
      109 NEWTABLE                         R27 0 2
      111 GETTABLEKS                       R28 R2 K24 ["onPressedOutside"]
      113 GETTABLEKS                       R29 R3 K1 ["anchor"]
      115 SETLIST                          R27 R28 2 [1]
      117 CALL                             R25 2 1
      118 GETUPVAL                         R27 2
      119 GETTABLEKS                       R26 R27 K25 ["useEffect"]
      121 NEWCLOSURE                       R27 P2
      122 CAPTURE                          VAL R24
      123 NEWTABLE                         R28 0 0
      125 CALL                             R26 2 0
      126 GETUPVAL                         R28 11
      127 GETTABLEKS                       R27 R28 K26 ["FoundationPopoverConditionalRender"]
      129 JUMPIFNOT                        R27 ; [+3]
      130 GETTABLEKS                       R26 R3 K19 ["isOpen"]
      132 JUMP                             ; [+1]
      133 LOADB                            R26 1
      134 JUMPIFNOT                        R26 ; [+280]
      135 GETUPVAL                         R28 2
      136 GETTABLEKS                       R27 R28 K27 ["createElement"]
      138 GETUPVAL                         R28 12
      139 DUPTABLE                         R29 K32 [{"ZIndex", "tag", "Visible", "testId"}]
      140 GETTABLEKS                       R30 R8 K33 ["zIndex"]
      142 SETTABLEKS                       R30 R29 K28 ["ZIndex"]
      144 LOADK                            R30 K34 ["size-full"]
      145 SETTABLEKS                       R30 R29 K29 ["tag"]
      147 SETTABLEKS                       R19 R29 K30 ["Visible"]
      149 LOADK                            R31 K35 ["%*--container"]
      150 GETTABLEKS                       R33 R3 K31 ["testId"]
      152 NAMECALL                         R31 R31 K36 ["format"]
      154 CALL                             R31 2 1
      155 MOVE                             R30 R31
      156 SETTABLEKS                       R30 R29 K31 ["testId"]
      158 DUPTABLE                         R30 K41 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      159 GETTABLEKS                       R32 R2 K24 ["onPressedOutside"]
      161 JUMPIFNOT                        R32 ; [+42]
      162 GETTABLEKS                       R32 R3 K19 ["isOpen"]
      164 JUMPIFNOT                        R32 ; [+39]
      165 GETUPVAL                         R32 2
      166 GETTABLEKS                       R31 R32 K27 ["createElement"]
      168 GETUPVAL                         R32 12
      169 DUPTABLE                         R33 K44 [{"ZIndex", "stateLayer", "Size", "tag", "ref", "testId"}]
      170 LOADN                            R34 1
      171 SETTABLEKS                       R34 R33 K28 ["ZIndex"]
      173 DUPTABLE                         R34 K46 [{"affordance"}]
      174 GETUPVAL                         R36 13
      175 GETTABLEKS                       R35 R36 K47 ["None"]
      177 SETTABLEKS                       R35 R34 K45 ["affordance"]
      179 SETTABLEKS                       R34 R33 K42 ["stateLayer"]
      181 GETIMPORT                        R34 K50 [UDim2.fromScale]
      183 LOADN                            R35 2
      184 LOADN                            R36 2
      185 CALL                             R34 2 1
      186 SETTABLEKS                       R34 R33 K9 ["Size"]
      188 LOADK                            R34 K51 ["position-center-center anchor-center-center"]
      189 SETTABLEKS                       R34 R33 K29 ["tag"]
      191 SETTABLEKS                       R25 R33 K43 ["ref"]
      193 LOADK                            R35 K52 ["%*--backdrop"]
      194 GETTABLEKS                       R37 R3 K31 ["testId"]
      196 NAMECALL                         R35 R35 K36 ["format"]
      198 CALL                             R35 2 1
      199 MOVE                             R34 R35
      200 SETTABLEKS                       R34 R33 K31 ["testId"]
      202 CALL                             R31 2 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R31
      205 SETTABLEKS                       R31 R30 K37 ["Backdrop"]
      207 GETUPVAL                         R32 2
      208 GETTABLEKS                       R31 R32 K27 ["createElement"]
      210 GETUPVAL                         R32 14
      211 DUPTABLE                         R33 K58 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "testId"}]
      212 SETTABLEKS                       R23 R33 K53 ["AnchorPoint"]
      214 GETUPVAL                         R34 15
      215 SETTABLEKS                       R34 R33 K54 ["Image"]
      217 DUPCLOSURE                       R36 K59 [PROTO_5]
      218 CAPTURE                          UPVAL U16
      219 NAMECALL                         R34 R20 K60 ["map"]
      221 CALL                             R34 2 1
      222 SETTABLEKS                       R34 R33 K9 ["Size"]
      224 GETUPVAL                         R35 2
      225 GETTABLEKS                       R34 R35 K61 ["joinBindings"]
      227 NEWTABLE                         R35 0 2
      229 MOVE                             R36 R18
      230 MOVE                             R37 R23
      231 SETLIST                          R35 R36 2 [1]
      233 CALL                             R34 1 1
      234 DUPCLOSURE                       R36 K62 [PROTO_6]
      235 CAPTURE                          UPVAL U16
      236 NAMECALL                         R34 R34 K60 ["map"]
      238 CALL                             R34 2 1
      239 SETTABLEKS                       R34 R33 K55 ["Position"]
      241 LOADN                            R34 2
      242 SETTABLEKS                       R34 R33 K28 ["ZIndex"]
      244 DUPTABLE                         R34 K64 [{"center"}]
      245 GETIMPORT                        R35 K67 [Rect.new]
      247 GETUPVAL                         R36 16
      248 GETUPVAL                         R37 16
      249 GETUPVAL                         R39 16
      250 ADDK                             R38 R39 K68 [1]
      251 GETUPVAL                         R40 16
      252 ADDK                             R39 R40 K68 [1]
      253 CALL                             R35 4 1
      254 SETTABLEKS                       R35 R34 K63 ["center"]
      256 SETTABLEKS                       R34 R33 K56 ["slice"]
      258 GETTABLEKS                       R37 R7 K14 ["Color"]
      260 GETTABLEKS                       R36 R37 K69 ["Extended"]
      262 GETTABLEKS                       R35 R36 K70 ["Black"]
      264 GETTABLEKS                       R34 R35 K71 ["Black_20"]
      266 SETTABLEKS                       R34 R33 K57 ["imageStyle"]
      268 LOADK                            R35 K72 ["%*--shadow"]
      269 GETTABLEKS                       R37 R3 K31 ["testId"]
      271 NAMECALL                         R35 R35 K36 ["format"]
      273 CALL                             R35 2 1
      274 MOVE                             R34 R35
      275 SETTABLEKS                       R34 R33 K31 ["testId"]
      277 CALL                             R31 2 1
      278 SETTABLEKS                       R31 R30 K38 ["Shadow"]
      280 JUMPIFNOT                        R5 ; [+40]
      281 GETUPVAL                         R32 2
      282 GETTABLEKS                       R31 R32 K27 ["createElement"]
      284 GETUPVAL                         R32 12
      285 DUPTABLE                         R33 K74 [{"Size", "Position", "Rotation", "ZIndex", "backgroundStyle", "tag", "testId"}]
      286 GETIMPORT                        R34 K76 [UDim2.fromOffset]
      288 MOVE                             R35 R9
      289 MOVE                             R36 R9
      290 CALL                             R34 2 1
      291 SETTABLEKS                       R34 R33 K9 ["Size"]
      293 DUPCLOSURE                       R36 K77 [PROTO_7]
      294 NAMECALL                         R34 R21 K60 ["map"]
      296 CALL                             R34 2 1
      297 SETTABLEKS                       R34 R33 K55 ["Position"]
      299 LOADN                            R34 45
      300 SETTABLEKS                       R34 R33 K73 ["Rotation"]
      302 LOADN                            R34 3
      303 SETTABLEKS                       R34 R33 K28 ["ZIndex"]
      305 SETTABLEKS                       R12 R33 K13 ["backgroundStyle"]
      307 LOADK                            R34 K78 ["anchor-center-center"]
      308 SETTABLEKS                       R34 R33 K29 ["tag"]
      310 LOADK                            R35 K79 ["%*--arrow"]
      311 GETTABLEKS                       R37 R3 K31 ["testId"]
      313 NAMECALL                         R35 R35 K36 ["format"]
      315 CALL                             R35 2 1
      316 MOVE                             R34 R35
      317 SETTABLEKS                       R34 R33 K31 ["testId"]
      319 CALL                             R31 2 1
      320 JUMP                             ; [+1]
      321 LOADNIL                          R31
      322 SETTABLEKS                       R31 R30 K39 ["Arrow"]
      324 GETUPVAL                         R32 2
      325 GETTABLEKS                       R31 R32 K27 ["createElement"]
      327 GETUPVAL                         R32 12
      328 DUPTABLE                         R33 K84 [{"AnchorPoint", "Position", "selection", "selectionGroup", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "backgroundStyle", "tag", "ref", "testId"}]
      329 SETTABLEKS                       R23 R33 K53 ["AnchorPoint"]
      331 DUPCLOSURE                       R36 K85 [PROTO_8]
      332 NAMECALL                         R34 R18 K60 ["map"]
      334 CALL                             R34 2 1
      335 SETTABLEKS                       R34 R33 K55 ["Position"]
      337 GETTABLEKS                       R34 R2 K80 ["selection"]
      339 SETTABLEKS                       R34 R33 K80 ["selection"]
      341 GETTABLEKS                       R34 R2 K81 ["selectionGroup"]
      343 SETTABLEKS                       R34 R33 K81 ["selectionGroup"]
      345 DUPTABLE                         R34 K87 [{"MaxSize"}]
      346 SETTABLEKS                       R22 R34 K86 ["MaxSize"]
      348 SETTABLEKS                       R34 R33 K82 ["sizeConstraint"]
      350 DUPTABLE                         R34 K46 [{"affordance"}]
      351 GETUPVAL                         R36 13
      352 GETTABLEKS                       R35 R36 K47 ["None"]
      354 SETTABLEKS                       R35 R34 K45 ["affordance"]
      356 SETTABLEKS                       R34 R33 K42 ["stateLayer"]
      358 LOADN                            R34 4
      359 SETTABLEKS                       R34 R33 K28 ["ZIndex"]
      361 GETTABLEKS                       R35 R2 K24 ["onPressedOutside"]
      363 JUMPIFNOT                        R35 ; [+2]
      364 DUPCLOSURE                       R34 K88 [PROTO_9]
      365 JUMP                             ; [+1]
      366 LOADNIL                          R34
      367 SETTABLEKS                       R34 R33 K83 ["onActivated"]
      369 SETTABLEKS                       R12 R33 K13 ["backgroundStyle"]
      371 LOADK                            R35 K89 ["auto-xy %*"]
      372 GETUPVAL                         R38 17
      373 GETTABLEKS                       R39 R2 K90 ["radius"]
      375 GETTABLE                         R37 R38 R39
      376 NAMECALL                         R35 R35 K36 ["format"]
      378 CALL                             R35 2 1
      379 MOVE                             R34 R35
      380 SETTABLEKS                       R34 R33 K29 ["tag"]
      382 SETTABLEKS                       R14 R33 K43 ["ref"]
      384 LOADK                            R35 K91 ["%*--content"]
      385 GETTABLEKS                       R37 R3 K31 ["testId"]
      387 NAMECALL                         R35 R35 K36 ["format"]
      389 CALL                             R35 2 1
      390 MOVE                             R34 R35
      391 SETTABLEKS                       R34 R33 K31 ["testId"]
      393 GETUPVAL                         R36 11
      394 GETTABLEKS                       R35 R36 K92 ["FoundationElevationKeepSiblingZIndex"]
      396 JUMPIFNOT                        R35 ; [+11]
      397 GETUPVAL                         R35 2
      398 GETTABLEKS                       R34 R35 K27 ["createElement"]
      400 GETUPVAL                         R35 18
      401 DUPTABLE                         R36 K94 [{"owner"}]
      402 SETTABLEKS                       R8 R36 K93 ["owner"]
      404 GETTABLEKS                       R37 R2 K95 ["children"]
      406 CALL                             R34 3 1
      407 JUMP                             ; [+2]
      408 GETTABLEKS                       R34 R2 K95 ["children"]
      410 CALL                             R31 3 1
      411 SETTABLEKS                       R31 R30 K40 ["Content"]
      413 CALL                             R27 3 1
      414 JUMP                             ; [+1]
      415 LOADNIL                          R27
      416 JUMPIFNOTEQKNIL                  R6 ; [+2]
      418 RETURN                           R27 1
      419 GETUPVAL                         R29 19
      420 GETTABLEKS                       R28 R29 K96 ["createPortal"]
      422 MOVE                             R29 R27
      423 MOVE                             R30 R6
      424 CALL                             R28 2 -1
      425 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Constants"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Image"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R8 K1 [script]
       25 GETTABLEKS                       R7 R8 K4 ["Parent"]
       27 GETTABLEKS                       R6 R7 K4 ["Parent"]
       29 GETTABLEKS                       R5 R6 K10 ["PopoverContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Components"]
       36 GETTABLEKS                       R6 R7 K11 ["View"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Utility"]
       43 GETTABLEKS                       R7 R8 K13 ["isPointInGuiObjectBounds"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETIMPORT                        R11 K1 [script]
       50 GETTABLEKS                       R10 R11 K4 ["Parent"]
       52 GETTABLEKS                       R9 R10 K4 ["Parent"]
       54 GETTABLEKS                       R8 R9 K14 ["useFloating"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Providers"]
       61 GETTABLEKS                       R10 R11 K16 ["Overlay"]
       63 GETTABLEKS                       R9 R10 K17 ["useOverlay"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Utility"]
       70 GETTABLEKS                       R10 R11 K18 ["usePointerPosition"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R13 R0 K15 ["Providers"]
       77 GETTABLEKS                       R12 R13 K19 ["Style"]
       79 GETTABLEKS                       R11 R12 K20 ["useTokens"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Utility"]
       86 GETTABLEKS                       R12 R13 K21 ["withDefaults"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R14 R0 K12 ["Utility"]
       93 GETTABLEKS                       R13 R14 K22 ["Flags"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R15 R0 K23 ["Enums"]
      100 GETTABLEKS                       R14 R15 K24 ["PopoverAlign"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R16 R0 K23 ["Enums"]
      107 GETTABLEKS                       R15 R16 K25 ["PopoverSide"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R17 R0 K23 ["Enums"]
      114 GETTABLEKS                       R16 R17 K26 ["Radius"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R1 K27 ["React"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R1 K28 ["ReactRoblox"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R20 R0 K23 ["Enums"]
      131 GETTABLEKS                       R19 R20 K29 ["StateLayerAffordance"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K6 [require]
      136 GETTABLEKS                       R21 R0 K23 ["Enums"]
      138 GETTABLEKS                       R20 R21 K30 ["ElevationLayer"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K6 [require]
      143 GETTABLEKS                       R22 R0 K8 ["Components"]
      145 GETTABLEKS                       R21 R22 K31 ["Types"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K6 [require]
      150 GETTABLEKS                       R24 R0 K15 ["Providers"]
      152 GETTABLEKS                       R23 R24 K32 ["Elevation"]
      154 GETTABLEKS                       R22 R23 K33 ["useElevation"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R26 R0 K15 ["Providers"]
      161 GETTABLEKS                       R25 R26 K32 ["Elevation"]
      163 GETTABLEKS                       R24 R25 K34 ["ElevationProvider"]
      165 CALL                             R23 1 1
      166 GETTABLEKS                       R22 R23 K35 ["ElevationOwnerScope"]
      168 DUPTABLE                         R23 K42 [{"side", "align", "hasArrow", "selection", "selectionGroup", "radius"}]
      169 GETTABLEKS                       R24 R14 K43 ["Bottom"]
      171 SETTABLEKS                       R24 R23 K36 ["side"]
      173 GETTABLEKS                       R24 R13 K44 ["Center"]
      175 SETTABLEKS                       R24 R23 K37 ["align"]
      177 LOADB                            R24 1
      178 SETTABLEKS                       R24 R23 K38 ["hasArrow"]
      180 GETTABLEKS                       R25 R2 K45 ["MODAL"]
      182 GETTABLEKS                       R24 R25 K46 ["DISABLE_SELECTION"]
      184 SETTABLEKS                       R24 R23 K39 ["selection"]
      186 GETTABLEKS                       R25 R2 K45 ["MODAL"]
      188 GETTABLEKS                       R24 R25 K47 ["TRAP_FOCUS"]
      190 SETTABLEKS                       R24 R23 K40 ["selectionGroup"]
      192 GETTABLEKS                       R24 R15 K48 ["Medium"]
      194 SETTABLEKS                       R24 R23 K41 ["radius"]
      196 NEWTABLE                         R24 4 0
      198 GETTABLEKS                       R25 R15 K49 ["Small"]
      200 LOADK                            R26 K50 ["radius-small"]
      201 SETTABLE                         R26 R24 R25
      202 GETTABLEKS                       R25 R15 K48 ["Medium"]
      204 LOADK                            R26 K51 ["radius-medium"]
      205 SETTABLE                         R26 R24 R25
      206 GETTABLEKS                       R25 R15 K52 ["Circle"]
      208 LOADK                            R26 K53 ["radius-circle"]
      209 SETTABLE                         R26 R24 R25
      210 GETTABLEKS                       R25 R2 K54 ["SHADOW_IMAGE"]
      212 GETTABLEKS                       R26 R2 K55 ["SHADOW_SIZE"]
      214 DUPCLOSURE                       R27 K56 [PROTO_10]
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R16
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R18
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R25
      231 CAPTURE                          VAL R26
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R17
      235 GETTABLEKS                       R28 R16 K57 ["forwardRef"]
      237 MOVE                             R29 R27
      238 CALL                             R28 1 -1
      239 RETURN                           R28 -1
