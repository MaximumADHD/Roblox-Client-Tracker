PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GuiState"]
        3 GETIMPORT                        R1 K3 [Enum.GuiState.Press]
        5 JUMPIFNOTEQ                      R0 R1 ; [+31]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K4 ["anchor"]
       10 JUMPIFNOT                        R0 ; [+22]
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+20]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K4 ["anchor"]
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
       33 GETUPVAL                         R0 5
       34 GETTABLEKS                       R0 R0 K8 ["onPressedOutside"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 JUMPIFEQKNIL                     R0 ; [+22]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["onPressedOutside"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETTABLEN                        R2 R0 2
        1 GETTABLEKS                       R2 R2 K0 ["X"]
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        5 LOADN                            R1 255
        6 JUMP                             ; [+1]
        7 LOADN                            R1 1
        8 GETTABLEN                        R3 R0 2
        9 GETTABLEKS                       R3 R3 K2 ["Y"]
       11 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       13 LOADN                            R2 255
       14 JUMP                             ; [+1]
       15 LOADN                            R2 1
       16 GETIMPORT                        R3 K5 [UDim2.fromOffset]
       18 GETTABLEN                        R5 R0 1
       19 GETTABLEKS                       R5 R5 K0 ["X"]
       21 GETUPVAL                         R8 0
       22 DIVK                             R7 R8 K6 [2]
       23 MUL                              R6 R7 R1
       24 ADD                              R4 R5 R6
       25 GETTABLEN                        R7 R0 1
       26 GETTABLEKS                       R7 R7 K2 ["Y"]
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
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useContext"]
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
       29 GETUPVAL                         R9 7
       30 GETTABLEKS                       R9 R9 K6 ["Popover"]
       32 DUPTABLE                         R10 K8 [{"relativeToOwner"}]
       33 LOADB                            R11 1
       34 SETTABLEKS                       R11 R10 K7 ["relativeToOwner"]
       36 CALL                             R8 2 1
       37 GETTABLEKS                       R9 R7 K9 ["Size"]
       39 GETTABLEKS                       R9 R9 K10 ["Size_200"]
       41 MULK                             R10 R9 K11 [1.4142135623731]
       42 DIVK                             R11 R10 K12 [2]
       43 GETTABLEKS                       R12 R2 K13 ["backgroundStyle"]
       45 JUMPIF                           R12 ; [+6]
       46 GETTABLEKS                       R12 R7 K14 ["Color"]
       48 GETTABLEKS                       R12 R12 K15 ["Surface"]
       50 GETTABLEKS                       R12 R12 K16 ["Surface_100"]
       52 GETUPVAL                         R13 2
       53 GETTABLEKS                       R13 R13 K17 ["useRef"]
       55 LOADNIL                          R14
       56 CALL                             R13 1 1
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K18 ["useState"]
       60 LOADNIL                          R15
       61 CALL                             R14 1 2
       62 GETUPVAL                         R16 8
       63 MOVE                             R17 R14
       64 CALL                             R16 1 1
       65 GETUPVAL                         R17 2
       66 GETTABLEKS                       R17 R17 K19 ["useImperativeHandle"]
       68 MOVE                             R18 R1
       69 NEWCLOSURE                       R19 P0
       70 CAPTURE                          VAL R13
       71 NEWTABLE                         R20 0 0
       73 CALL                             R17 3 0
       74 GETUPVAL                         R17 9
       75 GETTABLEKS                       R18 R3 K20 ["isOpen"]
       77 GETTABLEKS                       R19 R3 K1 ["anchor"]
       79 GETTABLEKS                       R20 R13 K21 ["current"]
       81 MOVE                             R21 R6
       82 GETTABLEKS                       R22 R2 K22 ["side"]
       84 GETTABLEKS                       R23 R2 K23 ["align"]
       86 JUMPIFNOT                        R5 ; [+2]
       87 MOVE                             R24 R11
       88 JUMP                             ; [+1]
       89 LOADN                            R24 0
       90 CALL                             R17 7 6
       91 GETUPVAL                         R23 2
       92 GETTABLEKS                       R23 R23 K17 ["useRef"]
       94 LOADNIL                          R24
       95 CALL                             R23 1 1
       96 GETUPVAL                         R24 2
       97 GETTABLEKS                       R24 R24 K24 ["useCallback"]
       99 NEWCLOSURE                       R25 P1
      100 CAPTURE                          VAL R23
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R16
      106 CAPTURE                          UPVAL U10
      107 NEWTABLE                         R26 0 2
      109 GETTABLEKS                       R27 R2 K25 ["onPressedOutside"]
      111 GETTABLEKS                       R28 R3 K1 ["anchor"]
      113 SETLIST                          R26 R27 2 [1]
      115 CALL                             R24 2 1
      116 GETUPVAL                         R25 2
      117 GETTABLEKS                       R25 R25 K26 ["useEffect"]
      119 NEWCLOSURE                       R26 P2
      120 CAPTURE                          VAL R23
      121 NEWTABLE                         R27 0 0
      123 CALL                             R25 2 0
      124 GETUPVAL                         R25 2
      125 GETTABLEKS                       R25 R25 K27 ["createElement"]
      127 GETUPVAL                         R26 11
      128 DUPTABLE                         R27 K32 [{"ZIndex", "tag", "Visible", "testId"}]
      129 GETTABLEKS                       R28 R8 K33 ["zIndex"]
      131 SETTABLEKS                       R28 R27 K28 ["ZIndex"]
      133 LOADK                            R28 K34 ["size-full"]
      134 SETTABLEKS                       R28 R27 K29 ["tag"]
      136 SETTABLEKS                       R18 R27 K30 ["Visible"]
      138 LOADK                            R29 K35 ["%*--container"]
      139 GETTABLEKS                       R31 R3 K31 ["testId"]
      141 NAMECALL                         R29 R29 K36 ["format"]
      143 CALL                             R29 2 1
      144 MOVE                             R28 R29
      145 SETTABLEKS                       R28 R27 K31 ["testId"]
      147 DUPTABLE                         R28 K41 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      148 GETTABLEKS                       R30 R2 K25 ["onPressedOutside"]
      150 JUMPIFNOT                        R30 ; [+58]
      151 GETTABLEKS                       R30 R3 K20 ["isOpen"]
      153 JUMPIFNOT                        R30 ; [+55]
      154 GETUPVAL                         R29 2
      155 GETTABLEKS                       R29 R29 K27 ["createElement"]
      157 GETUPVAL                         R30 11
      158 DUPTABLE                         R31 K44 [{"ZIndex", "stateLayer", "Size", "tag", "ref", "testId"}]
      159 LOADN                            R32 1
      160 SETTABLEKS                       R32 R31 K28 ["ZIndex"]
      162 DUPTABLE                         R32 K46 [{"affordance"}]
      163 GETUPVAL                         R33 12
      164 GETTABLEKS                       R33 R33 K47 ["None"]
      166 SETTABLEKS                       R33 R32 K45 ["affordance"]
      168 SETTABLEKS                       R32 R31 K42 ["stateLayer"]
      170 GETUPVAL                         R33 13
      171 GETTABLEKS                       R33 R33 K48 ["FoundationPopoverOversizedBackdrop"]
      173 JUMPIFNOT                        R33 ; [+6]
      174 GETIMPORT                        R32 K51 [UDim2.fromScale]
      176 LOADN                            R33 2
      177 LOADN                            R34 2
      178 CALL                             R32 2 1
      179 JUMP                             ; [+5]
      180 GETIMPORT                        R32 K51 [UDim2.fromScale]
      182 LOADN                            R33 1
      183 LOADN                            R34 1
      184 CALL                             R32 2 1
      185 SETTABLEKS                       R32 R31 K9 ["Size"]
      187 GETUPVAL                         R33 13
      188 GETTABLEKS                       R33 R33 K48 ["FoundationPopoverOversizedBackdrop"]
      190 JUMPIFNOT                        R33 ; [+2]
      191 LOADK                            R32 K52 ["position-center-center anchor-center-center"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R32
      194 SETTABLEKS                       R32 R31 K29 ["tag"]
      196 SETTABLEKS                       R24 R31 K43 ["ref"]
      198 LOADK                            R33 K53 ["%*--backdrop"]
      199 GETTABLEKS                       R35 R3 K31 ["testId"]
      201 NAMECALL                         R33 R33 K36 ["format"]
      203 CALL                             R33 2 1
      204 MOVE                             R32 R33
      205 SETTABLEKS                       R32 R31 K31 ["testId"]
      207 CALL                             R29 2 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R29
      210 SETTABLEKS                       R29 R28 K37 ["Backdrop"]
      212 GETUPVAL                         R29 2
      213 GETTABLEKS                       R29 R29 K27 ["createElement"]
      215 GETUPVAL                         R30 14
      216 DUPTABLE                         R31 K59 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "testId"}]
      217 GETUPVAL                         R33 13
      218 GETTABLEKS                       R33 R33 K60 ["FoundationPopoverOverflow"]
      220 JUMPIFNOT                        R33 ; [+2]
      221 MOVE                             R32 R22
      222 JUMP                             ; [+1]
      223 LOADNIL                          R32
      224 SETTABLEKS                       R32 R31 K54 ["AnchorPoint"]
      226 GETUPVAL                         R32 15
      227 SETTABLEKS                       R32 R31 K55 ["Image"]
      229 DUPCLOSURE                       R34 K61 [PROTO_5]
      230 CAPTURE                          UPVAL U16
      231 NAMECALL                         R32 R19 K62 ["map"]
      233 CALL                             R32 2 1
      234 SETTABLEKS                       R32 R31 K9 ["Size"]
      236 GETUPVAL                         R33 13
      237 GETTABLEKS                       R33 R33 K60 ["FoundationPopoverOverflow"]
      239 JUMPIFNOT                        R33 ; [+16]
      240 GETUPVAL                         R32 2
      241 GETTABLEKS                       R32 R32 K63 ["joinBindings"]
      243 NEWTABLE                         R33 0 2
      245 MOVE                             R34 R17
      246 MOVE                             R35 R22
      247 SETLIST                          R33 R34 2 [1]
      249 CALL                             R32 1 1
      250 DUPCLOSURE                       R34 K64 [PROTO_6]
      251 CAPTURE                          UPVAL U16
      252 NAMECALL                         R32 R32 K62 ["map"]
      254 CALL                             R32 2 1
      255 JUMP                             ; [+5]
      256 DUPCLOSURE                       R34 K65 [PROTO_7]
      257 CAPTURE                          UPVAL U16
      258 NAMECALL                         R32 R17 K62 ["map"]
      260 CALL                             R32 2 1
      261 SETTABLEKS                       R32 R31 K56 ["Position"]
      263 LOADN                            R32 2
      264 SETTABLEKS                       R32 R31 K28 ["ZIndex"]
      266 DUPTABLE                         R32 K67 [{"center"}]
      267 GETIMPORT                        R33 K70 [Rect.new]
      269 GETUPVAL                         R34 16
      270 GETUPVAL                         R35 16
      271 GETUPVAL                         R37 16
      272 ADDK                             R36 R37 K71 [1]
      273 GETUPVAL                         R38 16
      274 ADDK                             R37 R38 K71 [1]
      275 CALL                             R33 4 1
      276 SETTABLEKS                       R33 R32 K66 ["center"]
      278 SETTABLEKS                       R32 R31 K57 ["slice"]
      280 GETTABLEKS                       R32 R7 K14 ["Color"]
      282 GETTABLEKS                       R32 R32 K72 ["Extended"]
      284 GETTABLEKS                       R32 R32 K73 ["Black"]
      286 GETTABLEKS                       R32 R32 K74 ["Black_20"]
      288 SETTABLEKS                       R32 R31 K58 ["imageStyle"]
      290 LOADK                            R33 K75 ["%*--shadow"]
      291 GETTABLEKS                       R35 R3 K31 ["testId"]
      293 NAMECALL                         R33 R33 K36 ["format"]
      295 CALL                             R33 2 1
      296 MOVE                             R32 R33
      297 SETTABLEKS                       R32 R31 K31 ["testId"]
      299 CALL                             R29 2 1
      300 SETTABLEKS                       R29 R28 K38 ["Shadow"]
      302 JUMPIFNOT                        R5 ; [+40]
      303 GETUPVAL                         R29 2
      304 GETTABLEKS                       R29 R29 K27 ["createElement"]
      306 GETUPVAL                         R30 11
      307 DUPTABLE                         R31 K77 [{"Size", "Position", "Rotation", "ZIndex", "backgroundStyle", "tag", "testId"}]
      308 GETIMPORT                        R32 K79 [UDim2.fromOffset]
      310 MOVE                             R33 R9
      311 MOVE                             R34 R9
      312 CALL                             R32 2 1
      313 SETTABLEKS                       R32 R31 K9 ["Size"]
      315 DUPCLOSURE                       R34 K80 [PROTO_8]
      316 NAMECALL                         R32 R20 K62 ["map"]
      318 CALL                             R32 2 1
      319 SETTABLEKS                       R32 R31 K56 ["Position"]
      321 LOADN                            R32 45
      322 SETTABLEKS                       R32 R31 K76 ["Rotation"]
      324 LOADN                            R32 3
      325 SETTABLEKS                       R32 R31 K28 ["ZIndex"]
      327 SETTABLEKS                       R12 R31 K13 ["backgroundStyle"]
      329 LOADK                            R32 K81 ["anchor-center-center"]
      330 SETTABLEKS                       R32 R31 K29 ["tag"]
      332 LOADK                            R33 K82 ["%*--arrow"]
      333 GETTABLEKS                       R35 R3 K31 ["testId"]
      335 NAMECALL                         R33 R33 K36 ["format"]
      337 CALL                             R33 2 1
      338 MOVE                             R32 R33
      339 SETTABLEKS                       R32 R31 K31 ["testId"]
      341 CALL                             R29 2 1
      342 JUMP                             ; [+1]
      343 LOADNIL                          R29
      344 SETTABLEKS                       R29 R28 K39 ["Arrow"]
      346 GETUPVAL                         R29 2
      347 GETTABLEKS                       R29 R29 K27 ["createElement"]
      349 GETUPVAL                         R30 11
      350 DUPTABLE                         R31 K87 [{"AnchorPoint", "Position", "selection", "selectionGroup", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "backgroundStyle", "tag", "ref", "testId"}]
      351 GETUPVAL                         R33 13
      352 GETTABLEKS                       R33 R33 K60 ["FoundationPopoverOverflow"]
      354 JUMPIFNOT                        R33 ; [+2]
      355 MOVE                             R32 R22
      356 JUMP                             ; [+1]
      357 LOADNIL                          R32
      358 SETTABLEKS                       R32 R31 K54 ["AnchorPoint"]
      360 DUPCLOSURE                       R34 K88 [PROTO_9]
      361 NAMECALL                         R32 R17 K62 ["map"]
      363 CALL                             R32 2 1
      364 SETTABLEKS                       R32 R31 K56 ["Position"]
      366 GETTABLEKS                       R32 R2 K83 ["selection"]
      368 SETTABLEKS                       R32 R31 K83 ["selection"]
      370 GETTABLEKS                       R32 R2 K84 ["selectionGroup"]
      372 SETTABLEKS                       R32 R31 K84 ["selectionGroup"]
      374 DUPTABLE                         R32 K90 [{"MaxSize"}]
      375 SETTABLEKS                       R21 R32 K89 ["MaxSize"]
      377 SETTABLEKS                       R32 R31 K85 ["sizeConstraint"]
      379 DUPTABLE                         R32 K46 [{"affordance"}]
      380 GETUPVAL                         R33 12
      381 GETTABLEKS                       R33 R33 K47 ["None"]
      383 SETTABLEKS                       R33 R32 K45 ["affordance"]
      385 SETTABLEKS                       R32 R31 K42 ["stateLayer"]
      387 LOADN                            R32 4
      388 SETTABLEKS                       R32 R31 K28 ["ZIndex"]
      390 GETTABLEKS                       R33 R2 K25 ["onPressedOutside"]
      392 JUMPIFNOT                        R33 ; [+2]
      393 DUPCLOSURE                       R32 K91 [PROTO_10]
      394 JUMP                             ; [+1]
      395 LOADNIL                          R32
      396 SETTABLEKS                       R32 R31 K86 ["onActivated"]
      398 SETTABLEKS                       R12 R31 K13 ["backgroundStyle"]
      400 LOADK                            R33 K92 ["auto-xy %*"]
      401 GETUPVAL                         R36 17
      402 GETTABLEKS                       R37 R2 K93 ["radius"]
      404 GETTABLE                         R35 R36 R37
      405 NAMECALL                         R33 R33 K36 ["format"]
      407 CALL                             R33 2 1
      408 MOVE                             R32 R33
      409 SETTABLEKS                       R32 R31 K29 ["tag"]
      411 SETTABLEKS                       R13 R31 K43 ["ref"]
      413 LOADK                            R33 K94 ["%*--content"]
      414 GETTABLEKS                       R35 R3 K31 ["testId"]
      416 NAMECALL                         R33 R33 K36 ["format"]
      418 CALL                             R33 2 1
      419 MOVE                             R32 R33
      420 SETTABLEKS                       R32 R31 K31 ["testId"]
      422 GETTABLEKS                       R32 R2 K95 ["children"]
      424 CALL                             R29 3 1
      425 SETTABLEKS                       R29 R28 K40 ["Content"]
      427 CALL                             R25 3 1
      428 JUMPIFNOTEQKNIL                  R6 ; [+2]
      430 RETURN                           R25 1
      431 GETUPVAL                         R26 18
      432 GETTABLEKS                       R26 R26 K96 ["createPortal"]
      434 MOVE                             R27 R25
      435 MOVE                             R28 R6
      436 CALL                             R26 2 -1
      437 RETURN                           R26 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Image"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["PopoverContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Components"]
       36 GETTABLEKS                       R6 R6 K11 ["View"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Utility"]
       43 GETTABLEKS                       R7 R7 K13 ["isPointInGuiObjectBounds"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K4 ["Parent"]
       52 GETTABLEKS                       R8 R8 K4 ["Parent"]
       54 GETTABLEKS                       R8 R8 K14 ["useFloating"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K15 ["Providers"]
       61 GETTABLEKS                       R9 R9 K16 ["Overlay"]
       63 GETTABLEKS                       R9 R9 K17 ["useOverlay"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R10 R0 K12 ["Utility"]
       70 GETTABLEKS                       R10 R10 K18 ["usePointerPosition"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R0 K15 ["Providers"]
       77 GETTABLEKS                       R11 R11 K19 ["Style"]
       79 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R0 K12 ["Utility"]
       86 GETTABLEKS                       R12 R12 K21 ["withDefaults"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K12 ["Utility"]
       93 GETTABLEKS                       R13 R13 K22 ["Flags"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K23 ["Enums"]
      100 GETTABLEKS                       R14 R14 K24 ["PopoverAlign"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K23 ["Enums"]
      107 GETTABLEKS                       R15 R15 K25 ["PopoverSide"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K23 ["Enums"]
      114 GETTABLEKS                       R16 R16 K26 ["Radius"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R1 K27 ["React"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R1 K28 ["ReactRoblox"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R0 K23 ["Enums"]
      131 GETTABLEKS                       R19 R19 K29 ["StateLayerAffordance"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K6 [require]
      136 GETTABLEKS                       R20 R0 K23 ["Enums"]
      138 GETTABLEKS                       R20 R20 K30 ["ElevationLayer"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K6 [require]
      143 GETTABLEKS                       R21 R0 K8 ["Components"]
      145 GETTABLEKS                       R21 R21 K31 ["Types"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K6 [require]
      150 GETTABLEKS                       R22 R0 K15 ["Providers"]
      152 GETTABLEKS                       R22 R22 K32 ["Elevation"]
      154 GETTABLEKS                       R22 R22 K33 ["useElevation"]
      156 CALL                             R21 1 1
      157 DUPTABLE                         R22 K40 [{"side", "align", "hasArrow", "selection", "selectionGroup", "radius"}]
      158 GETTABLEKS                       R23 R14 K41 ["Bottom"]
      160 SETTABLEKS                       R23 R22 K34 ["side"]
      162 GETTABLEKS                       R23 R13 K42 ["Center"]
      164 SETTABLEKS                       R23 R22 K35 ["align"]
      166 LOADB                            R23 1
      167 SETTABLEKS                       R23 R22 K36 ["hasArrow"]
      169 GETTABLEKS                       R23 R2 K43 ["MODAL"]
      171 GETTABLEKS                       R23 R23 K44 ["DISABLE_SELECTION"]
      173 SETTABLEKS                       R23 R22 K37 ["selection"]
      175 GETTABLEKS                       R23 R2 K43 ["MODAL"]
      177 GETTABLEKS                       R23 R23 K45 ["TRAP_FOCUS"]
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
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R17
      223 GETTABLEKS                       R27 R16 K55 ["forwardRef"]
      225 MOVE                             R28 R26
      226 CALL                             R27 1 -1
      227 RETURN                           R27 -1
