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
      127 GETUPVAL                         R27 11
      128 GETTABLEKS                       R27 R27 K28 ["FoundationPopoverRootZIndex"]
      130 JUMPIFNOT                        R27 ; [+2]
      131 GETUPVAL                         R26 12
      132 JUMP                             ; [+3]
      133 GETUPVAL                         R26 2
      134 GETTABLEKS                       R26 R26 K29 ["Fragment"]
      136 GETUPVAL                         R28 11
      137 GETTABLEKS                       R28 R28 K28 ["FoundationPopoverRootZIndex"]
      139 JUMPIFNOT                        R28 ; [+26]
      140 DUPTABLE                         R27 K34 [{"ZIndex", "tag", "Visible", "testId"}]
      141 GETUPVAL                         R29 11
      142 GETTABLEKS                       R29 R29 K35 ["FoundationElevationSystem"]
      144 JUMPIFNOT                        R29 ; [+3]
      145 GETTABLEKS                       R28 R8 K36 ["zIndex"]
      147 JUMP                             ; [+1]
      148 LOADN                            R28 4
      149 SETTABLEKS                       R28 R27 K30 ["ZIndex"]
      151 LOADK                            R28 K37 ["size-full"]
      152 SETTABLEKS                       R28 R27 K31 ["tag"]
      154 SETTABLEKS                       R18 R27 K32 ["Visible"]
      156 LOADK                            R29 K38 ["%*--container"]
      157 GETTABLEKS                       R31 R3 K33 ["testId"]
      159 NAMECALL                         R29 R29 K39 ["format"]
      161 CALL                             R29 2 1
      162 MOVE                             R28 R29
      163 SETTABLEKS                       R28 R27 K33 ["testId"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R27
      167 DUPTABLE                         R28 K44 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      168 GETTABLEKS                       R30 R2 K25 ["onPressedOutside"]
      170 JUMPIFNOT                        R30 ; [+58]
      171 GETTABLEKS                       R30 R3 K20 ["isOpen"]
      173 JUMPIFNOT                        R30 ; [+55]
      174 GETUPVAL                         R29 2
      175 GETTABLEKS                       R29 R29 K27 ["createElement"]
      177 GETUPVAL                         R30 12
      178 DUPTABLE                         R31 K47 [{"ZIndex", "stateLayer", "Size", "tag", "ref", "testId"}]
      179 LOADN                            R32 1
      180 SETTABLEKS                       R32 R31 K30 ["ZIndex"]
      182 DUPTABLE                         R32 K49 [{"affordance"}]
      183 GETUPVAL                         R33 13
      184 GETTABLEKS                       R33 R33 K50 ["None"]
      186 SETTABLEKS                       R33 R32 K48 ["affordance"]
      188 SETTABLEKS                       R32 R31 K45 ["stateLayer"]
      190 GETUPVAL                         R33 11
      191 GETTABLEKS                       R33 R33 K51 ["FoundationPopoverOversizedBackdrop"]
      193 JUMPIFNOT                        R33 ; [+6]
      194 GETIMPORT                        R32 K54 [UDim2.fromScale]
      196 LOADN                            R33 2
      197 LOADN                            R34 2
      198 CALL                             R32 2 1
      199 JUMP                             ; [+5]
      200 GETIMPORT                        R32 K54 [UDim2.fromScale]
      202 LOADN                            R33 1
      203 LOADN                            R34 1
      204 CALL                             R32 2 1
      205 SETTABLEKS                       R32 R31 K9 ["Size"]
      207 GETUPVAL                         R33 11
      208 GETTABLEKS                       R33 R33 K51 ["FoundationPopoverOversizedBackdrop"]
      210 JUMPIFNOT                        R33 ; [+2]
      211 LOADK                            R32 K55 ["position-center-center anchor-center-center"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R32
      214 SETTABLEKS                       R32 R31 K31 ["tag"]
      216 SETTABLEKS                       R24 R31 K46 ["ref"]
      218 LOADK                            R33 K56 ["%*--backdrop"]
      219 GETTABLEKS                       R35 R3 K33 ["testId"]
      221 NAMECALL                         R33 R33 K39 ["format"]
      223 CALL                             R33 2 1
      224 MOVE                             R32 R33
      225 SETTABLEKS                       R32 R31 K33 ["testId"]
      227 CALL                             R29 2 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R29
      230 SETTABLEKS                       R29 R28 K40 ["Backdrop"]
      232 GETUPVAL                         R29 2
      233 GETTABLEKS                       R29 R29 K27 ["createElement"]
      235 GETUPVAL                         R30 14
      236 DUPTABLE                         R31 K62 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "Visible", "slice", "imageStyle", "testId"}]
      237 GETUPVAL                         R33 11
      238 GETTABLEKS                       R33 R33 K63 ["FoundationPopoverOverflow"]
      240 JUMPIFNOT                        R33 ; [+2]
      241 MOVE                             R32 R22
      242 JUMP                             ; [+1]
      243 LOADNIL                          R32
      244 SETTABLEKS                       R32 R31 K57 ["AnchorPoint"]
      246 GETUPVAL                         R32 15
      247 SETTABLEKS                       R32 R31 K58 ["Image"]
      249 DUPCLOSURE                       R34 K64 [PROTO_5]
      250 CAPTURE                          UPVAL U16
      251 NAMECALL                         R32 R19 K65 ["map"]
      253 CALL                             R32 2 1
      254 SETTABLEKS                       R32 R31 K9 ["Size"]
      256 GETUPVAL                         R33 11
      257 GETTABLEKS                       R33 R33 K63 ["FoundationPopoverOverflow"]
      259 JUMPIFNOT                        R33 ; [+16]
      260 GETUPVAL                         R32 2
      261 GETTABLEKS                       R32 R32 K66 ["joinBindings"]
      263 NEWTABLE                         R33 0 2
      265 MOVE                             R34 R17
      266 MOVE                             R35 R22
      267 SETLIST                          R33 R34 2 [1]
      269 CALL                             R32 1 1
      270 DUPCLOSURE                       R34 K67 [PROTO_6]
      271 CAPTURE                          UPVAL U16
      272 NAMECALL                         R32 R32 K65 ["map"]
      274 CALL                             R32 2 1
      275 JUMP                             ; [+5]
      276 DUPCLOSURE                       R34 K68 [PROTO_7]
      277 CAPTURE                          UPVAL U16
      278 NAMECALL                         R32 R17 K65 ["map"]
      280 CALL                             R32 2 1
      281 SETTABLEKS                       R32 R31 K59 ["Position"]
      283 LOADN                            R32 2
      284 SETTABLEKS                       R32 R31 K30 ["ZIndex"]
      286 GETUPVAL                         R33 11
      287 GETTABLEKS                       R33 R33 K28 ["FoundationPopoverRootZIndex"]
      289 JUMPIFNOT                        R33 ; [+2]
      290 LOADNIL                          R32
      291 JUMP                             ; [+1]
      292 MOVE                             R32 R18
      293 SETTABLEKS                       R32 R31 K32 ["Visible"]
      295 DUPTABLE                         R32 K70 [{"center"}]
      296 GETIMPORT                        R33 K73 [Rect.new]
      298 GETUPVAL                         R34 16
      299 GETUPVAL                         R35 16
      300 GETUPVAL                         R37 16
      301 ADDK                             R36 R37 K74 [1]
      302 GETUPVAL                         R38 16
      303 ADDK                             R37 R38 K74 [1]
      304 CALL                             R33 4 1
      305 SETTABLEKS                       R33 R32 K69 ["center"]
      307 SETTABLEKS                       R32 R31 K60 ["slice"]
      309 GETTABLEKS                       R32 R7 K14 ["Color"]
      311 GETTABLEKS                       R32 R32 K75 ["Extended"]
      313 GETTABLEKS                       R32 R32 K76 ["Black"]
      315 GETTABLEKS                       R32 R32 K77 ["Black_20"]
      317 SETTABLEKS                       R32 R31 K61 ["imageStyle"]
      319 LOADK                            R33 K78 ["%*--shadow"]
      320 GETTABLEKS                       R35 R3 K33 ["testId"]
      322 NAMECALL                         R33 R33 K39 ["format"]
      324 CALL                             R33 2 1
      325 MOVE                             R32 R33
      326 SETTABLEKS                       R32 R31 K33 ["testId"]
      328 CALL                             R29 2 1
      329 SETTABLEKS                       R29 R28 K41 ["Shadow"]
      331 JUMPIFNOT                        R5 ; [+49]
      332 GETUPVAL                         R29 2
      333 GETTABLEKS                       R29 R29 K27 ["createElement"]
      335 GETUPVAL                         R30 12
      336 DUPTABLE                         R31 K80 [{"Size", "Position", "Rotation", "ZIndex", "Visible", "backgroundStyle", "tag", "testId"}]
      337 GETIMPORT                        R32 K82 [UDim2.fromOffset]
      339 MOVE                             R33 R9
      340 MOVE                             R34 R9
      341 CALL                             R32 2 1
      342 SETTABLEKS                       R32 R31 K9 ["Size"]
      344 DUPCLOSURE                       R34 K83 [PROTO_8]
      345 NAMECALL                         R32 R20 K65 ["map"]
      347 CALL                             R32 2 1
      348 SETTABLEKS                       R32 R31 K59 ["Position"]
      350 LOADN                            R32 45
      351 SETTABLEKS                       R32 R31 K79 ["Rotation"]
      353 LOADN                            R32 3
      354 SETTABLEKS                       R32 R31 K30 ["ZIndex"]
      356 GETUPVAL                         R33 11
      357 GETTABLEKS                       R33 R33 K28 ["FoundationPopoverRootZIndex"]
      359 JUMPIFNOT                        R33 ; [+2]
      360 LOADNIL                          R32
      361 JUMP                             ; [+1]
      362 MOVE                             R32 R18
      363 SETTABLEKS                       R32 R31 K32 ["Visible"]
      365 SETTABLEKS                       R12 R31 K13 ["backgroundStyle"]
      367 LOADK                            R32 K84 ["anchor-center-center"]
      368 SETTABLEKS                       R32 R31 K31 ["tag"]
      370 LOADK                            R33 K85 ["%*--arrow"]
      371 GETTABLEKS                       R35 R3 K33 ["testId"]
      373 NAMECALL                         R33 R33 K39 ["format"]
      375 CALL                             R33 2 1
      376 MOVE                             R32 R33
      377 SETTABLEKS                       R32 R31 K33 ["testId"]
      379 CALL                             R29 2 1
      380 JUMP                             ; [+1]
      381 LOADNIL                          R29
      382 SETTABLEKS                       R29 R28 K42 ["Arrow"]
      384 GETUPVAL                         R29 2
      385 GETTABLEKS                       R29 R29 K27 ["createElement"]
      387 GETUPVAL                         R30 12
      388 DUPTABLE                         R31 K90 [{"AnchorPoint", "Position", "Visible", "selection", "selectionGroup", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "backgroundStyle", "tag", "ref", "testId"}]
      389 GETUPVAL                         R33 11
      390 GETTABLEKS                       R33 R33 K63 ["FoundationPopoverOverflow"]
      392 JUMPIFNOT                        R33 ; [+2]
      393 MOVE                             R32 R22
      394 JUMP                             ; [+1]
      395 LOADNIL                          R32
      396 SETTABLEKS                       R32 R31 K57 ["AnchorPoint"]
      398 DUPCLOSURE                       R34 K91 [PROTO_9]
      399 NAMECALL                         R32 R17 K65 ["map"]
      401 CALL                             R32 2 1
      402 SETTABLEKS                       R32 R31 K59 ["Position"]
      404 GETUPVAL                         R33 11
      405 GETTABLEKS                       R33 R33 K28 ["FoundationPopoverRootZIndex"]
      407 JUMPIFNOT                        R33 ; [+2]
      408 LOADNIL                          R32
      409 JUMP                             ; [+1]
      410 MOVE                             R32 R18
      411 SETTABLEKS                       R32 R31 K32 ["Visible"]
      413 GETTABLEKS                       R32 R2 K86 ["selection"]
      415 SETTABLEKS                       R32 R31 K86 ["selection"]
      417 GETUPVAL                         R33 11
      418 GETTABLEKS                       R33 R33 K92 ["FoundationPopoverFocusTrap"]
      420 JUMPIFNOT                        R33 ; [+3]
      421 GETTABLEKS                       R32 R2 K87 ["selectionGroup"]
      423 JUMP                             ; [+1]
      424 LOADNIL                          R32
      425 SETTABLEKS                       R32 R31 K87 ["selectionGroup"]
      427 DUPTABLE                         R32 K94 [{"MaxSize"}]
      428 SETTABLEKS                       R21 R32 K93 ["MaxSize"]
      430 SETTABLEKS                       R32 R31 K88 ["sizeConstraint"]
      432 DUPTABLE                         R32 K49 [{"affordance"}]
      433 GETUPVAL                         R33 13
      434 GETTABLEKS                       R33 R33 K50 ["None"]
      436 SETTABLEKS                       R33 R32 K48 ["affordance"]
      438 SETTABLEKS                       R32 R31 K45 ["stateLayer"]
      440 LOADN                            R32 4
      441 SETTABLEKS                       R32 R31 K30 ["ZIndex"]
      443 GETTABLEKS                       R33 R2 K25 ["onPressedOutside"]
      445 JUMPIFNOT                        R33 ; [+2]
      446 DUPCLOSURE                       R32 K95 [PROTO_10]
      447 JUMP                             ; [+1]
      448 LOADNIL                          R32
      449 SETTABLEKS                       R32 R31 K89 ["onActivated"]
      451 SETTABLEKS                       R12 R31 K13 ["backgroundStyle"]
      453 LOADK                            R33 K96 ["auto-xy %*"]
      454 GETUPVAL                         R36 17
      455 GETTABLEKS                       R37 R2 K97 ["radius"]
      457 GETTABLE                         R35 R36 R37
      458 NAMECALL                         R33 R33 K39 ["format"]
      460 CALL                             R33 2 1
      461 MOVE                             R32 R33
      462 SETTABLEKS                       R32 R31 K31 ["tag"]
      464 SETTABLEKS                       R13 R31 K46 ["ref"]
      466 LOADK                            R33 K98 ["%*--content"]
      467 GETTABLEKS                       R35 R3 K33 ["testId"]
      469 NAMECALL                         R33 R33 K39 ["format"]
      471 CALL                             R33 2 1
      472 MOVE                             R32 R33
      473 SETTABLEKS                       R32 R31 K33 ["testId"]
      475 GETTABLEKS                       R32 R2 K99 ["children"]
      477 CALL                             R29 3 1
      478 SETTABLEKS                       R29 R28 K43 ["Content"]
      480 CALL                             R25 3 1
      481 JUMPIFNOTEQKNIL                  R6 ; [+2]
      483 RETURN                           R25 1
      484 GETUPVAL                         R26 18
      485 GETTABLEKS                       R26 R26 K100 ["createPortal"]
      487 MOVE                             R27 R25
      488 MOVE                             R28 R6
      489 CALL                             R26 2 -1
      490 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["View"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Components"]
       20 GETTABLEKS                       R4 R4 K9 ["Image"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K4 ["Parent"]
       31 GETTABLEKS                       R5 R5 K10 ["PopoverContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Providers"]
       38 GETTABLEKS                       R6 R6 K12 ["Overlay"]
       40 GETTABLEKS                       R6 R6 K13 ["useOverlay"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETIMPORT                        R7 K1 [script]
       47 GETTABLEKS                       R7 R7 K4 ["Parent"]
       49 GETTABLEKS                       R7 R7 K4 ["Parent"]
       51 GETTABLEKS                       R7 R7 K14 ["useFloating"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K6 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Providers"]
       58 GETTABLEKS                       R8 R8 K15 ["Style"]
       60 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R9 R0 K17 ["Utility"]
       67 GETTABLEKS                       R9 R9 K18 ["withDefaults"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R10 R0 K17 ["Utility"]
       74 GETTABLEKS                       R10 R10 K19 ["usePointerPosition"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R11 R0 K17 ["Utility"]
       81 GETTABLEKS                       R11 R11 K20 ["isPointInGuiObjectBounds"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K6 [require]
       86 GETTABLEKS                       R12 R0 K21 ["Constants"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K22 ["Enums"]
       93 GETTABLEKS                       R13 R13 K23 ["StateLayerAffordance"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K22 ["Enums"]
      100 GETTABLEKS                       R14 R14 K24 ["PopoverSide"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K22 ["Enums"]
      107 GETTABLEKS                       R15 R15 K25 ["PopoverAlign"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K22 ["Enums"]
      114 GETTABLEKS                       R16 R16 K26 ["Radius"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R0 K17 ["Utility"]
      121 GETTABLEKS                       R17 R17 K27 ["Flags"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K6 [require]
      126 GETTABLEKS                       R18 R1 K28 ["React"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K6 [require]
      131 GETTABLEKS                       R19 R1 K29 ["ReactRoblox"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K6 [require]
      136 GETTABLEKS                       R20 R0 K7 ["Components"]
      138 GETTABLEKS                       R20 R20 K30 ["Types"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K6 [require]
      143 GETTABLEKS                       R21 R0 K11 ["Providers"]
      145 GETTABLEKS                       R21 R21 K31 ["Elevation"]
      147 GETTABLEKS                       R21 R21 K32 ["useElevation"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K6 [require]
      152 GETTABLEKS                       R22 R0 K22 ["Enums"]
      154 GETTABLEKS                       R22 R22 K33 ["ElevationLayer"]
      156 CALL                             R21 1 1
      157 DUPTABLE                         R22 K40 [{"side", "align", "hasArrow", "selection", "selectionGroup", "radius"}]
      158 GETTABLEKS                       R23 R13 K41 ["Bottom"]
      160 SETTABLEKS                       R23 R22 K34 ["side"]
      162 GETTABLEKS                       R23 R14 K42 ["Center"]
      164 SETTABLEKS                       R23 R22 K35 ["align"]
      166 LOADB                            R23 1
      167 SETTABLEKS                       R23 R22 K36 ["hasArrow"]
      169 GETTABLEKS                       R23 R11 K43 ["MODAL"]
      171 GETTABLEKS                       R23 R23 K44 ["DISABLE_SELECTION"]
      173 SETTABLEKS                       R23 R22 K37 ["selection"]
      175 GETTABLEKS                       R23 R11 K43 ["MODAL"]
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
      199 GETTABLEKS                       R24 R11 K52 ["SHADOW_IMAGE"]
      201 GETTABLEKS                       R25 R11 K53 ["SHADOW_SIZE"]
      203 DUPCLOSURE                       R26 K54 [PROTO_11]
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R18
      223 GETTABLEKS                       R27 R17 K55 ["forwardRef"]
      225 MOVE                             R28 R26
      226 CALL                             R27 1 -1
      227 RETURN                           R27 -1
