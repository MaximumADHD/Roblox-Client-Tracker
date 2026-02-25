PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationFixPopoverShadowSizing"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["current"]
        9 RETURN                           R0 1

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
       32 DUPTABLE                         R10 K8 [{"relativeToOwner"}]
       33 LOADB                            R11 1
       34 SETTABLEKS                       R11 R10 K7 ["relativeToOwner"]
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
       53 GETTABLEKS                       R13 R14 K17 ["useRef"]
       55 LOADNIL                          R14
       56 CALL                             R13 1 1
       57 GETUPVAL                         R15 2
       58 GETTABLEKS                       R14 R15 K18 ["useState"]
       60 LOADNIL                          R15
       61 CALL                             R14 1 2
       62 GETUPVAL                         R17 2
       63 GETTABLEKS                       R16 R17 K18 ["useState"]
       65 LOADNIL                          R17
       66 CALL                             R16 1 2
       67 GETUPVAL                         R18 8
       68 MOVE                             R19 R16
       69 CALL                             R18 1 1
       70 GETUPVAL                         R20 2
       71 GETTABLEKS                       R19 R20 K19 ["useImperativeHandle"]
       73 MOVE                             R20 R1
       74 NEWCLOSURE                       R21 P0
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R13
       78 NEWTABLE                         R22 0 1
       80 GETUPVAL                         R25 9
       81 GETTABLEKS                       R24 R25 K20 ["FoundationFixPopoverShadowSizing"]
       83 JUMPIFNOT                        R24 ; [+2]
       84 MOVE                             R23 R14
       85 JUMP                             ; [+1]
       86 LOADNIL                          R23
       87 SETLIST                          R22 R23 1 [1]
       89 CALL                             R19 3 0
       90 GETUPVAL                         R19 10
       91 GETTABLEKS                       R20 R3 K21 ["isOpen"]
       93 GETTABLEKS                       R21 R3 K1 ["anchor"]
       95 GETUPVAL                         R24 9
       96 GETTABLEKS                       R23 R24 K20 ["FoundationFixPopoverShadowSizing"]
       98 JUMPIFNOT                        R23 ; [+2]
       99 MOVE                             R22 R14
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R22 R13 K22 ["current"]
      103 MOVE                             R23 R6
      104 GETTABLEKS                       R24 R2 K23 ["side"]
      106 GETTABLEKS                       R25 R2 K24 ["align"]
      108 JUMPIFNOT                        R5 ; [+2]
      109 MOVE                             R26 R11
      110 JUMP                             ; [+1]
      111 LOADN                            R26 0
      112 CALL                             R19 7 6
      113 GETUPVAL                         R26 2
      114 GETTABLEKS                       R25 R26 K17 ["useRef"]
      116 LOADNIL                          R26
      117 CALL                             R25 1 1
      118 GETUPVAL                         R27 2
      119 GETTABLEKS                       R26 R27 K25 ["useCallback"]
      121 NEWCLOSURE                       R27 P1
      122 CAPTURE                          VAL R25
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R18
      128 CAPTURE                          UPVAL U11
      129 NEWTABLE                         R28 0 2
      131 GETTABLEKS                       R29 R2 K26 ["onPressedOutside"]
      133 GETTABLEKS                       R30 R3 K1 ["anchor"]
      135 SETLIST                          R28 R29 2 [1]
      137 CALL                             R26 2 1
      138 GETUPVAL                         R28 2
      139 GETTABLEKS                       R27 R28 K27 ["useEffect"]
      141 NEWCLOSURE                       R28 P2
      142 CAPTURE                          VAL R25
      143 NEWTABLE                         R29 0 0
      145 CALL                             R27 2 0
      146 GETUPVAL                         R28 2
      147 GETTABLEKS                       R27 R28 K28 ["createElement"]
      149 GETUPVAL                         R28 12
      150 DUPTABLE                         R29 K33 [{"ZIndex", "tag", "Visible", "testId"}]
      151 GETTABLEKS                       R30 R8 K34 ["zIndex"]
      153 SETTABLEKS                       R30 R29 K29 ["ZIndex"]
      155 LOADK                            R30 K35 ["size-full"]
      156 SETTABLEKS                       R30 R29 K30 ["tag"]
      158 SETTABLEKS                       R20 R29 K31 ["Visible"]
      160 LOADK                            R31 K36 ["%*--container"]
      161 GETTABLEKS                       R33 R3 K32 ["testId"]
      163 NAMECALL                         R31 R31 K37 ["format"]
      165 CALL                             R31 2 1
      166 MOVE                             R30 R31
      167 SETTABLEKS                       R30 R29 K32 ["testId"]
      169 DUPTABLE                         R30 K42 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      170 GETTABLEKS                       R32 R2 K26 ["onPressedOutside"]
      172 JUMPIFNOT                        R32 ; [+58]
      173 GETTABLEKS                       R32 R3 K21 ["isOpen"]
      175 JUMPIFNOT                        R32 ; [+55]
      176 GETUPVAL                         R32 2
      177 GETTABLEKS                       R31 R32 K28 ["createElement"]
      179 GETUPVAL                         R32 12
      180 DUPTABLE                         R33 K45 [{"ZIndex", "stateLayer", "Size", "tag", "ref", "testId"}]
      181 LOADN                            R34 1
      182 SETTABLEKS                       R34 R33 K29 ["ZIndex"]
      184 DUPTABLE                         R34 K47 [{"affordance"}]
      185 GETUPVAL                         R36 13
      186 GETTABLEKS                       R35 R36 K48 ["None"]
      188 SETTABLEKS                       R35 R34 K46 ["affordance"]
      190 SETTABLEKS                       R34 R33 K43 ["stateLayer"]
      192 GETUPVAL                         R36 9
      193 GETTABLEKS                       R35 R36 K49 ["FoundationPopoverOversizedBackdrop"]
      195 JUMPIFNOT                        R35 ; [+6]
      196 GETIMPORT                        R34 K52 [UDim2.fromScale]
      198 LOADN                            R35 2
      199 LOADN                            R36 2
      200 CALL                             R34 2 1
      201 JUMP                             ; [+5]
      202 GETIMPORT                        R34 K52 [UDim2.fromScale]
      204 LOADN                            R35 1
      205 LOADN                            R36 1
      206 CALL                             R34 2 1
      207 SETTABLEKS                       R34 R33 K9 ["Size"]
      209 GETUPVAL                         R36 9
      210 GETTABLEKS                       R35 R36 K49 ["FoundationPopoverOversizedBackdrop"]
      212 JUMPIFNOT                        R35 ; [+2]
      213 LOADK                            R34 K53 ["position-center-center anchor-center-center"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R34
      216 SETTABLEKS                       R34 R33 K30 ["tag"]
      218 SETTABLEKS                       R26 R33 K44 ["ref"]
      220 LOADK                            R35 K54 ["%*--backdrop"]
      221 GETTABLEKS                       R37 R3 K32 ["testId"]
      223 NAMECALL                         R35 R35 K37 ["format"]
      225 CALL                             R35 2 1
      226 MOVE                             R34 R35
      227 SETTABLEKS                       R34 R33 K32 ["testId"]
      229 CALL                             R31 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R31
      232 SETTABLEKS                       R31 R30 K38 ["Backdrop"]
      234 GETUPVAL                         R32 2
      235 GETTABLEKS                       R31 R32 K28 ["createElement"]
      237 GETUPVAL                         R32 14
      238 DUPTABLE                         R33 K60 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "testId"}]
      239 GETUPVAL                         R36 9
      240 GETTABLEKS                       R35 R36 K61 ["FoundationPopoverOverflow"]
      242 JUMPIFNOT                        R35 ; [+2]
      243 MOVE                             R34 R24
      244 JUMP                             ; [+1]
      245 LOADNIL                          R34
      246 SETTABLEKS                       R34 R33 K55 ["AnchorPoint"]
      248 GETUPVAL                         R34 15
      249 SETTABLEKS                       R34 R33 K56 ["Image"]
      251 DUPCLOSURE                       R36 K62 [PROTO_5]
      252 CAPTURE                          UPVAL U16
      253 NAMECALL                         R34 R21 K63 ["map"]
      255 CALL                             R34 2 1
      256 SETTABLEKS                       R34 R33 K9 ["Size"]
      258 GETUPVAL                         R36 9
      259 GETTABLEKS                       R35 R36 K61 ["FoundationPopoverOverflow"]
      261 JUMPIFNOT                        R35 ; [+16]
      262 GETUPVAL                         R35 2
      263 GETTABLEKS                       R34 R35 K64 ["joinBindings"]
      265 NEWTABLE                         R35 0 2
      267 MOVE                             R36 R19
      268 MOVE                             R37 R24
      269 SETLIST                          R35 R36 2 [1]
      271 CALL                             R34 1 1
      272 DUPCLOSURE                       R36 K65 [PROTO_6]
      273 CAPTURE                          UPVAL U16
      274 NAMECALL                         R34 R34 K63 ["map"]
      276 CALL                             R34 2 1
      277 JUMP                             ; [+5]
      278 DUPCLOSURE                       R36 K66 [PROTO_7]
      279 CAPTURE                          UPVAL U16
      280 NAMECALL                         R34 R19 K63 ["map"]
      282 CALL                             R34 2 1
      283 SETTABLEKS                       R34 R33 K57 ["Position"]
      285 LOADN                            R34 2
      286 SETTABLEKS                       R34 R33 K29 ["ZIndex"]
      288 DUPTABLE                         R34 K68 [{"center"}]
      289 GETIMPORT                        R35 K71 [Rect.new]
      291 GETUPVAL                         R36 16
      292 GETUPVAL                         R37 16
      293 GETUPVAL                         R39 16
      294 ADDK                             R38 R39 K72 [1]
      295 GETUPVAL                         R40 16
      296 ADDK                             R39 R40 K72 [1]
      297 CALL                             R35 4 1
      298 SETTABLEKS                       R35 R34 K67 ["center"]
      300 SETTABLEKS                       R34 R33 K58 ["slice"]
      302 GETTABLEKS                       R37 R7 K14 ["Color"]
      304 GETTABLEKS                       R36 R37 K73 ["Extended"]
      306 GETTABLEKS                       R35 R36 K74 ["Black"]
      308 GETTABLEKS                       R34 R35 K75 ["Black_20"]
      310 SETTABLEKS                       R34 R33 K59 ["imageStyle"]
      312 LOADK                            R35 K76 ["%*--shadow"]
      313 GETTABLEKS                       R37 R3 K32 ["testId"]
      315 NAMECALL                         R35 R35 K37 ["format"]
      317 CALL                             R35 2 1
      318 MOVE                             R34 R35
      319 SETTABLEKS                       R34 R33 K32 ["testId"]
      321 CALL                             R31 2 1
      322 SETTABLEKS                       R31 R30 K39 ["Shadow"]
      324 JUMPIFNOT                        R5 ; [+40]
      325 GETUPVAL                         R32 2
      326 GETTABLEKS                       R31 R32 K28 ["createElement"]
      328 GETUPVAL                         R32 12
      329 DUPTABLE                         R33 K78 [{"Size", "Position", "Rotation", "ZIndex", "backgroundStyle", "tag", "testId"}]
      330 GETIMPORT                        R34 K80 [UDim2.fromOffset]
      332 MOVE                             R35 R9
      333 MOVE                             R36 R9
      334 CALL                             R34 2 1
      335 SETTABLEKS                       R34 R33 K9 ["Size"]
      337 DUPCLOSURE                       R36 K81 [PROTO_8]
      338 NAMECALL                         R34 R22 K63 ["map"]
      340 CALL                             R34 2 1
      341 SETTABLEKS                       R34 R33 K57 ["Position"]
      343 LOADN                            R34 45
      344 SETTABLEKS                       R34 R33 K77 ["Rotation"]
      346 LOADN                            R34 3
      347 SETTABLEKS                       R34 R33 K29 ["ZIndex"]
      349 SETTABLEKS                       R12 R33 K13 ["backgroundStyle"]
      351 LOADK                            R34 K82 ["anchor-center-center"]
      352 SETTABLEKS                       R34 R33 K30 ["tag"]
      354 LOADK                            R35 K83 ["%*--arrow"]
      355 GETTABLEKS                       R37 R3 K32 ["testId"]
      357 NAMECALL                         R35 R35 K37 ["format"]
      359 CALL                             R35 2 1
      360 MOVE                             R34 R35
      361 SETTABLEKS                       R34 R33 K32 ["testId"]
      363 CALL                             R31 2 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R31
      366 SETTABLEKS                       R31 R30 K40 ["Arrow"]
      368 GETUPVAL                         R32 2
      369 GETTABLEKS                       R31 R32 K28 ["createElement"]
      371 GETUPVAL                         R32 12
      372 DUPTABLE                         R33 K88 [{"AnchorPoint", "Position", "selection", "selectionGroup", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "backgroundStyle", "tag", "ref", "testId"}]
      373 GETUPVAL                         R36 9
      374 GETTABLEKS                       R35 R36 K61 ["FoundationPopoverOverflow"]
      376 JUMPIFNOT                        R35 ; [+2]
      377 MOVE                             R34 R24
      378 JUMP                             ; [+1]
      379 LOADNIL                          R34
      380 SETTABLEKS                       R34 R33 K55 ["AnchorPoint"]
      382 DUPCLOSURE                       R36 K89 [PROTO_9]
      383 NAMECALL                         R34 R19 K63 ["map"]
      385 CALL                             R34 2 1
      386 SETTABLEKS                       R34 R33 K57 ["Position"]
      388 GETTABLEKS                       R34 R2 K84 ["selection"]
      390 SETTABLEKS                       R34 R33 K84 ["selection"]
      392 GETTABLEKS                       R34 R2 K85 ["selectionGroup"]
      394 SETTABLEKS                       R34 R33 K85 ["selectionGroup"]
      396 DUPTABLE                         R34 K91 [{"MaxSize"}]
      397 SETTABLEKS                       R23 R34 K90 ["MaxSize"]
      399 SETTABLEKS                       R34 R33 K86 ["sizeConstraint"]
      401 DUPTABLE                         R34 K47 [{"affordance"}]
      402 GETUPVAL                         R36 13
      403 GETTABLEKS                       R35 R36 K48 ["None"]
      405 SETTABLEKS                       R35 R34 K46 ["affordance"]
      407 SETTABLEKS                       R34 R33 K43 ["stateLayer"]
      409 LOADN                            R34 4
      410 SETTABLEKS                       R34 R33 K29 ["ZIndex"]
      412 GETTABLEKS                       R35 R2 K26 ["onPressedOutside"]
      414 JUMPIFNOT                        R35 ; [+2]
      415 DUPCLOSURE                       R34 K92 [PROTO_10]
      416 JUMP                             ; [+1]
      417 LOADNIL                          R34
      418 SETTABLEKS                       R34 R33 K87 ["onActivated"]
      420 SETTABLEKS                       R12 R33 K13 ["backgroundStyle"]
      422 LOADK                            R35 K93 ["auto-xy %*"]
      423 GETUPVAL                         R38 17
      424 GETTABLEKS                       R39 R2 K94 ["radius"]
      426 GETTABLE                         R37 R38 R39
      427 NAMECALL                         R35 R35 K37 ["format"]
      429 CALL                             R35 2 1
      430 MOVE                             R34 R35
      431 SETTABLEKS                       R34 R33 K30 ["tag"]
      433 GETUPVAL                         R36 9
      434 GETTABLEKS                       R35 R36 K20 ["FoundationFixPopoverShadowSizing"]
      436 JUMPIFNOT                        R35 ; [+2]
      437 MOVE                             R34 R15
      438 JUMP                             ; [+1]
      439 MOVE                             R34 R13
      440 SETTABLEKS                       R34 R33 K44 ["ref"]
      442 LOADK                            R35 K95 ["%*--content"]
      443 GETTABLEKS                       R37 R3 K32 ["testId"]
      445 NAMECALL                         R35 R35 K37 ["format"]
      447 CALL                             R35 2 1
      448 MOVE                             R34 R35
      449 SETTABLEKS                       R34 R33 K32 ["testId"]
      451 GETTABLEKS                       R34 R2 K96 ["children"]
      453 CALL                             R31 3 1
      454 SETTABLEKS                       R31 R30 K41 ["Content"]
      456 CALL                             R27 3 1
      457 JUMPIFNOTEQKNIL                  R6 ; [+2]
      459 RETURN                           R27 1
      460 GETUPVAL                         R29 18
      461 GETTABLEKS                       R28 R29 K97 ["createPortal"]
      463 MOVE                             R29 R27
      464 MOVE                             R30 R6
      465 CALL                             R28 2 -1
      466 RETURN                           R28 -1

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
      157 DUPTABLE                         R22 K40 [{"side", "align", "hasArrow", "selection", "selectionGroup", "radius"}]
      158 GETTABLEKS                       R23 R14 K41 ["Bottom"]
      160 SETTABLEKS                       R23 R22 K34 ["side"]
      162 GETTABLEKS                       R23 R13 K42 ["Center"]
      164 SETTABLEKS                       R23 R22 K35 ["align"]
      166 LOADB                            R23 1
      167 SETTABLEKS                       R23 R22 K36 ["hasArrow"]
      169 GETTABLEKS                       R24 R2 K43 ["MODAL"]
      171 GETTABLEKS                       R23 R24 K44 ["DISABLE_SELECTION"]
      173 SETTABLEKS                       R23 R22 K37 ["selection"]
      175 GETTABLEKS                       R24 R2 K43 ["MODAL"]
      177 GETTABLEKS                       R23 R24 K45 ["TRAP_FOCUS"]
      179 SETTABLEKS                       R23 R22 K38 ["selectionGroup"]
      181 GETTABLEKS                       R23 R15 K46 ["Medium"]
      183 SETTABLEKS                       R23 R22 K39 ["radius"]
      185 NEWTABLE                         R23 4 0
      187 GETTABLEKS                       R24 R15 K47 ["Small"]
      189 LOADK                            R25 K48 ["radius-small"]
      190 SETTABLE                         R25 R23 R24
      191 GETTABLEKS                       R24 R15 K46 ["Medium"]
      193 LOADK                            R25 K49 ["radius-medium"]
      194 SETTABLE                         R25 R23 R24
      195 GETTABLEKS                       R24 R15 K50 ["Circle"]
      197 LOADK                            R25 K51 ["radius-circle"]
      198 SETTABLE                         R25 R23 R24
      199 GETTABLEKS                       R24 R2 K52 ["SHADOW_IMAGE"]
      201 GETTABLEKS                       R25 R2 K53 ["SHADOW_SIZE"]
      203 DUPCLOSURE                       R26 K54 [PROTO_11]
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R19
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R17
      223 GETTABLEKS                       R27 R16 K55 ["forwardRef"]
      225 MOVE                             R28 R26
      226 CALL                             R27 1 -1
      227 RETURN                           R27 -1
