PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GuiState"]
        3 GETIMPORT                        R1 K3 [Enum.GuiState.Press]
        5 JUMPIFNOTEQ                      R0 R1 ; [+37]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K4 ["anchor"]
       10 JUMPIFNOT                        R0 ; [+28]
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+26]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K4 ["anchor"]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K5 ["getValue"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K6 ["FoundationPopoverContentStateFix"]
       27 JUMPIFNOT                        R3 ; [+2]
       28 JUMPIFNOT                        R2 ; [+1]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R3 R0 K0 ["GuiState"]
       32 GETIMPORT                        R4 K8 [Enum.GuiState.Idle]
       34 JUMPIFEQ                         R3 R4 ; [+2]
       36 RETURN                           R0 0
       37 JUMPIFNOT                        R2 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R0 6
       40 GETTABLEKS                       R0 R0 K9 ["onPressedOutside"]
       42 CALL                             R0 0 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["FoundationPopoverContentStateFix"]
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETUPVAL                         R1 2
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 JUMPIFEQKNIL                     R0 ; [+23]
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K3 ["onPressedOutside"]
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
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K5 ["FoundationNoArrowOnVirtualRef"]
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
       35 GETUPVAL                         R8 7
       36 GETUPVAL                         R9 8
       37 GETTABLEKS                       R9 R9 K7 ["Popover"]
       39 DUPTABLE                         R10 K9 [{"relativeToOwner"}]
       40 LOADB                            R11 1
       41 SETTABLEKS                       R11 R10 K8 ["relativeToOwner"]
       43 CALL                             R8 2 1
       44 GETTABLEKS                       R9 R7 K10 ["Size"]
       46 GETTABLEKS                       R9 R9 K11 ["Size_200"]
       48 MULK                             R10 R9 K12 [1.4142135623731]
       49 DIVK                             R11 R10 K13 [2]
       50 GETTABLEKS                       R12 R2 K14 ["backgroundStyle"]
       52 JUMPIF                           R12 ; [+6]
       53 GETTABLEKS                       R12 R7 K15 ["Color"]
       55 GETTABLEKS                       R12 R12 K16 ["Surface"]
       57 GETTABLEKS                       R12 R12 K17 ["Surface_100"]
       59 GETUPVAL                         R13 2
       60 GETTABLEKS                       R13 R13 K18 ["useRef"]
       62 LOADNIL                          R14
       63 CALL                             R13 1 1
       64 GETUPVAL                         R14 2
       65 GETTABLEKS                       R14 R14 K19 ["useState"]
       67 LOADNIL                          R15
       68 CALL                             R14 1 2
       69 GETUPVAL                         R16 9
       70 GETUPVAL                         R18 4
       71 GETTABLEKS                       R18 R18 K20 ["FoundationPopoverContentStateFix"]
       73 JUMPIFNOT                        R18 ; [+2]
       74 MOVE                             R17 R14
       75 JUMP                             ; [+5]
       76 JUMPIFNOT                        R4 ; [+3]
       77 GETTABLEKS                       R17 R3 K1 ["anchor"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R17
       81 CALL                             R16 1 1
       82 GETUPVAL                         R17 2
       83 GETTABLEKS                       R17 R17 K21 ["useImperativeHandle"]
       85 MOVE                             R18 R1
       86 NEWCLOSURE                       R19 P0
       87 CAPTURE                          VAL R13
       88 NEWTABLE                         R20 0 0
       90 CALL                             R17 3 0
       91 GETUPVAL                         R17 10
       92 GETTABLEKS                       R18 R3 K22 ["isOpen"]
       94 GETTABLEKS                       R19 R3 K1 ["anchor"]
       96 GETTABLEKS                       R20 R13 K23 ["current"]
       98 MOVE                             R21 R6
       99 GETTABLEKS                       R22 R2 K24 ["side"]
      101 GETTABLEKS                       R23 R2 K25 ["align"]
      103 JUMPIFNOT                        R5 ; [+2]
      104 MOVE                             R24 R11
      105 JUMP                             ; [+1]
      106 LOADN                            R24 0
      107 CALL                             R17 7 6
      108 GETUPVAL                         R23 2
      109 GETTABLEKS                       R23 R23 K18 ["useRef"]
      111 LOADNIL                          R24
      112 CALL                             R23 1 1
      113 GETUPVAL                         R24 2
      114 GETTABLEKS                       R24 R24 K26 ["useCallback"]
      116 NEWCLOSURE                       R25 P1
      117 CAPTURE                          VAL R23
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R16
      124 CAPTURE                          UPVAL U11
      125 NEWTABLE                         R26 0 2
      127 GETTABLEKS                       R27 R2 K27 ["onPressedOutside"]
      129 GETTABLEKS                       R28 R3 K1 ["anchor"]
      131 SETLIST                          R26 R27 2 [1]
      133 CALL                             R24 2 1
      134 GETUPVAL                         R25 2
      135 GETTABLEKS                       R25 R25 K28 ["useEffect"]
      137 NEWCLOSURE                       R26 P2
      138 CAPTURE                          VAL R23
      139 NEWTABLE                         R27 0 0
      141 CALL                             R25 2 0
      142 GETUPVAL                         R25 2
      143 GETTABLEKS                       R25 R25 K29 ["createElement"]
      145 GETUPVAL                         R27 4
      146 GETTABLEKS                       R27 R27 K30 ["FoundationPopoverRootZIndex"]
      148 JUMPIFNOT                        R27 ; [+2]
      149 GETUPVAL                         R26 12
      150 JUMP                             ; [+3]
      151 GETUPVAL                         R26 2
      152 GETTABLEKS                       R26 R26 K31 ["Fragment"]
      154 GETUPVAL                         R28 4
      155 GETTABLEKS                       R28 R28 K30 ["FoundationPopoverRootZIndex"]
      157 JUMPIFNOT                        R28 ; [+26]
      158 DUPTABLE                         R27 K36 [{"ZIndex", "tag", "Visible", "testId"}]
      159 GETUPVAL                         R29 4
      160 GETTABLEKS                       R29 R29 K37 ["FoundationElevationSystem"]
      162 JUMPIFNOT                        R29 ; [+3]
      163 GETTABLEKS                       R28 R8 K38 ["zIndex"]
      165 JUMP                             ; [+1]
      166 LOADN                            R28 4
      167 SETTABLEKS                       R28 R27 K32 ["ZIndex"]
      169 LOADK                            R28 K39 ["size-full"]
      170 SETTABLEKS                       R28 R27 K33 ["tag"]
      172 SETTABLEKS                       R18 R27 K34 ["Visible"]
      174 LOADK                            R29 K40 ["%*--container"]
      175 GETTABLEKS                       R31 R3 K35 ["testId"]
      177 NAMECALL                         R29 R29 K41 ["format"]
      179 CALL                             R29 2 1
      180 MOVE                             R28 R29
      181 SETTABLEKS                       R28 R27 K35 ["testId"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R27
      185 DUPTABLE                         R28 K46 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      186 GETTABLEKS                       R30 R2 K27 ["onPressedOutside"]
      188 JUMPIFNOT                        R30 ; [+58]
      189 GETTABLEKS                       R30 R3 K22 ["isOpen"]
      191 JUMPIFNOT                        R30 ; [+55]
      192 GETUPVAL                         R29 2
      193 GETTABLEKS                       R29 R29 K29 ["createElement"]
      195 GETUPVAL                         R30 12
      196 DUPTABLE                         R31 K49 [{"ZIndex", "stateLayer", "Size", "tag", "ref", "testId"}]
      197 LOADN                            R32 1
      198 SETTABLEKS                       R32 R31 K32 ["ZIndex"]
      200 DUPTABLE                         R32 K51 [{"affordance"}]
      201 GETUPVAL                         R33 13
      202 GETTABLEKS                       R33 R33 K52 ["None"]
      204 SETTABLEKS                       R33 R32 K50 ["affordance"]
      206 SETTABLEKS                       R32 R31 K47 ["stateLayer"]
      208 GETUPVAL                         R33 4
      209 GETTABLEKS                       R33 R33 K53 ["FoundationPopoverOversizedBackdrop"]
      211 JUMPIFNOT                        R33 ; [+6]
      212 GETIMPORT                        R32 K56 [UDim2.fromScale]
      214 LOADN                            R33 2
      215 LOADN                            R34 2
      216 CALL                             R32 2 1
      217 JUMP                             ; [+5]
      218 GETIMPORT                        R32 K56 [UDim2.fromScale]
      220 LOADN                            R33 1
      221 LOADN                            R34 1
      222 CALL                             R32 2 1
      223 SETTABLEKS                       R32 R31 K10 ["Size"]
      225 GETUPVAL                         R33 4
      226 GETTABLEKS                       R33 R33 K53 ["FoundationPopoverOversizedBackdrop"]
      228 JUMPIFNOT                        R33 ; [+2]
      229 LOADK                            R32 K57 ["position-center-center anchor-center-center"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R32
      232 SETTABLEKS                       R32 R31 K33 ["tag"]
      234 SETTABLEKS                       R24 R31 K48 ["ref"]
      236 LOADK                            R33 K58 ["%*--backdrop"]
      237 GETTABLEKS                       R35 R3 K35 ["testId"]
      239 NAMECALL                         R33 R33 K41 ["format"]
      241 CALL                             R33 2 1
      242 MOVE                             R32 R33
      243 SETTABLEKS                       R32 R31 K35 ["testId"]
      245 CALL                             R29 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R29
      248 SETTABLEKS                       R29 R28 K42 ["Backdrop"]
      250 GETUPVAL                         R29 2
      251 GETTABLEKS                       R29 R29 K29 ["createElement"]
      253 GETUPVAL                         R30 14
      254 DUPTABLE                         R31 K64 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "Visible", "slice", "imageStyle", "testId"}]
      255 GETUPVAL                         R33 4
      256 GETTABLEKS                       R33 R33 K65 ["FoundationPopoverOverflow"]
      258 JUMPIFNOT                        R33 ; [+2]
      259 MOVE                             R32 R22
      260 JUMP                             ; [+1]
      261 LOADNIL                          R32
      262 SETTABLEKS                       R32 R31 K59 ["AnchorPoint"]
      264 GETUPVAL                         R32 15
      265 SETTABLEKS                       R32 R31 K60 ["Image"]
      267 DUPCLOSURE                       R34 K66 [PROTO_5]
      268 CAPTURE                          UPVAL U16
      269 NAMECALL                         R32 R19 K67 ["map"]
      271 CALL                             R32 2 1
      272 SETTABLEKS                       R32 R31 K10 ["Size"]
      274 GETUPVAL                         R33 4
      275 GETTABLEKS                       R33 R33 K65 ["FoundationPopoverOverflow"]
      277 JUMPIFNOT                        R33 ; [+16]
      278 GETUPVAL                         R32 2
      279 GETTABLEKS                       R32 R32 K68 ["joinBindings"]
      281 NEWTABLE                         R33 0 2
      283 MOVE                             R34 R17
      284 MOVE                             R35 R22
      285 SETLIST                          R33 R34 2 [1]
      287 CALL                             R32 1 1
      288 DUPCLOSURE                       R34 K69 [PROTO_6]
      289 CAPTURE                          UPVAL U16
      290 NAMECALL                         R32 R32 K67 ["map"]
      292 CALL                             R32 2 1
      293 JUMP                             ; [+5]
      294 DUPCLOSURE                       R34 K70 [PROTO_7]
      295 CAPTURE                          UPVAL U16
      296 NAMECALL                         R32 R17 K67 ["map"]
      298 CALL                             R32 2 1
      299 SETTABLEKS                       R32 R31 K61 ["Position"]
      301 LOADN                            R32 2
      302 SETTABLEKS                       R32 R31 K32 ["ZIndex"]
      304 GETUPVAL                         R33 4
      305 GETTABLEKS                       R33 R33 K30 ["FoundationPopoverRootZIndex"]
      307 JUMPIFNOT                        R33 ; [+2]
      308 LOADNIL                          R32
      309 JUMP                             ; [+1]
      310 MOVE                             R32 R18
      311 SETTABLEKS                       R32 R31 K34 ["Visible"]
      313 DUPTABLE                         R32 K72 [{"center"}]
      314 GETIMPORT                        R33 K75 [Rect.new]
      316 GETUPVAL                         R34 16
      317 GETUPVAL                         R35 16
      318 GETUPVAL                         R37 16
      319 ADDK                             R36 R37 K76 [1]
      320 GETUPVAL                         R38 16
      321 ADDK                             R37 R38 K76 [1]
      322 CALL                             R33 4 1
      323 SETTABLEKS                       R33 R32 K71 ["center"]
      325 SETTABLEKS                       R32 R31 K62 ["slice"]
      327 GETTABLEKS                       R32 R7 K15 ["Color"]
      329 GETTABLEKS                       R32 R32 K77 ["Extended"]
      331 GETTABLEKS                       R32 R32 K78 ["Black"]
      333 GETTABLEKS                       R32 R32 K79 ["Black_20"]
      335 SETTABLEKS                       R32 R31 K63 ["imageStyle"]
      337 LOADK                            R33 K80 ["%*--shadow"]
      338 GETTABLEKS                       R35 R3 K35 ["testId"]
      340 NAMECALL                         R33 R33 K41 ["format"]
      342 CALL                             R33 2 1
      343 MOVE                             R32 R33
      344 SETTABLEKS                       R32 R31 K35 ["testId"]
      346 CALL                             R29 2 1
      347 SETTABLEKS                       R29 R28 K43 ["Shadow"]
      349 JUMPIFNOT                        R5 ; [+49]
      350 GETUPVAL                         R29 2
      351 GETTABLEKS                       R29 R29 K29 ["createElement"]
      353 GETUPVAL                         R30 12
      354 DUPTABLE                         R31 K82 [{"Size", "Position", "Rotation", "ZIndex", "Visible", "backgroundStyle", "tag", "testId"}]
      355 GETIMPORT                        R32 K84 [UDim2.fromOffset]
      357 MOVE                             R33 R9
      358 MOVE                             R34 R9
      359 CALL                             R32 2 1
      360 SETTABLEKS                       R32 R31 K10 ["Size"]
      362 DUPCLOSURE                       R34 K85 [PROTO_8]
      363 NAMECALL                         R32 R20 K67 ["map"]
      365 CALL                             R32 2 1
      366 SETTABLEKS                       R32 R31 K61 ["Position"]
      368 LOADN                            R32 45
      369 SETTABLEKS                       R32 R31 K81 ["Rotation"]
      371 LOADN                            R32 3
      372 SETTABLEKS                       R32 R31 K32 ["ZIndex"]
      374 GETUPVAL                         R33 4
      375 GETTABLEKS                       R33 R33 K30 ["FoundationPopoverRootZIndex"]
      377 JUMPIFNOT                        R33 ; [+2]
      378 LOADNIL                          R32
      379 JUMP                             ; [+1]
      380 MOVE                             R32 R18
      381 SETTABLEKS                       R32 R31 K34 ["Visible"]
      383 SETTABLEKS                       R12 R31 K14 ["backgroundStyle"]
      385 LOADK                            R32 K86 ["anchor-center-center"]
      386 SETTABLEKS                       R32 R31 K33 ["tag"]
      388 LOADK                            R33 K87 ["%*--arrow"]
      389 GETTABLEKS                       R35 R3 K35 ["testId"]
      391 NAMECALL                         R33 R33 K41 ["format"]
      393 CALL                             R33 2 1
      394 MOVE                             R32 R33
      395 SETTABLEKS                       R32 R31 K35 ["testId"]
      397 CALL                             R29 2 1
      398 JUMP                             ; [+1]
      399 LOADNIL                          R29
      400 SETTABLEKS                       R29 R28 K44 ["Arrow"]
      402 GETUPVAL                         R29 2
      403 GETTABLEKS                       R29 R29 K29 ["createElement"]
      405 GETUPVAL                         R30 12
      406 DUPTABLE                         R31 K92 [{"AnchorPoint", "Position", "Visible", "selection", "selectionGroup", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "backgroundStyle", "tag", "ref", "testId"}]
      407 GETUPVAL                         R33 4
      408 GETTABLEKS                       R33 R33 K65 ["FoundationPopoverOverflow"]
      410 JUMPIFNOT                        R33 ; [+2]
      411 MOVE                             R32 R22
      412 JUMP                             ; [+1]
      413 LOADNIL                          R32
      414 SETTABLEKS                       R32 R31 K59 ["AnchorPoint"]
      416 DUPCLOSURE                       R34 K93 [PROTO_9]
      417 NAMECALL                         R32 R17 K67 ["map"]
      419 CALL                             R32 2 1
      420 SETTABLEKS                       R32 R31 K61 ["Position"]
      422 GETUPVAL                         R33 4
      423 GETTABLEKS                       R33 R33 K30 ["FoundationPopoverRootZIndex"]
      425 JUMPIFNOT                        R33 ; [+2]
      426 LOADNIL                          R32
      427 JUMP                             ; [+1]
      428 MOVE                             R32 R18
      429 SETTABLEKS                       R32 R31 K34 ["Visible"]
      431 GETTABLEKS                       R32 R2 K88 ["selection"]
      433 SETTABLEKS                       R32 R31 K88 ["selection"]
      435 GETUPVAL                         R33 4
      436 GETTABLEKS                       R33 R33 K94 ["FoundationPopoverFocusTrap"]
      438 JUMPIFNOT                        R33 ; [+3]
      439 GETTABLEKS                       R32 R2 K89 ["selectionGroup"]
      441 JUMP                             ; [+1]
      442 LOADNIL                          R32
      443 SETTABLEKS                       R32 R31 K89 ["selectionGroup"]
      445 DUPTABLE                         R32 K96 [{"MaxSize"}]
      446 SETTABLEKS                       R21 R32 K95 ["MaxSize"]
      448 SETTABLEKS                       R32 R31 K90 ["sizeConstraint"]
      450 DUPTABLE                         R32 K51 [{"affordance"}]
      451 GETUPVAL                         R33 13
      452 GETTABLEKS                       R33 R33 K52 ["None"]
      454 SETTABLEKS                       R33 R32 K50 ["affordance"]
      456 SETTABLEKS                       R32 R31 K47 ["stateLayer"]
      458 LOADN                            R32 4
      459 SETTABLEKS                       R32 R31 K32 ["ZIndex"]
      461 GETTABLEKS                       R33 R2 K27 ["onPressedOutside"]
      463 JUMPIFNOT                        R33 ; [+2]
      464 DUPCLOSURE                       R32 K97 [PROTO_10]
      465 JUMP                             ; [+1]
      466 LOADNIL                          R32
      467 SETTABLEKS                       R32 R31 K91 ["onActivated"]
      469 SETTABLEKS                       R12 R31 K14 ["backgroundStyle"]
      471 LOADK                            R33 K98 ["auto-xy %*"]
      472 GETUPVAL                         R36 17
      473 GETTABLEKS                       R37 R2 K99 ["radius"]
      475 GETTABLE                         R35 R36 R37
      476 NAMECALL                         R33 R33 K41 ["format"]
      478 CALL                             R33 2 1
      479 MOVE                             R32 R33
      480 SETTABLEKS                       R32 R31 K33 ["tag"]
      482 SETTABLEKS                       R13 R31 K48 ["ref"]
      484 LOADK                            R33 K100 ["%*--content"]
      485 GETTABLEKS                       R35 R3 K35 ["testId"]
      487 NAMECALL                         R33 R33 K41 ["format"]
      489 CALL                             R33 2 1
      490 MOVE                             R32 R33
      491 SETTABLEKS                       R32 R31 K35 ["testId"]
      493 GETTABLEKS                       R32 R2 K101 ["children"]
      495 CALL                             R29 3 1
      496 SETTABLEKS                       R29 R28 K45 ["Content"]
      498 CALL                             R25 3 1
      499 JUMPIFNOTEQKNIL                  R6 ; [+2]
      501 RETURN                           R25 1
      502 GETUPVAL                         R26 18
      503 GETTABLEKS                       R26 R26 K102 ["createPortal"]
      505 MOVE                             R27 R25
      506 MOVE                             R28 R6
      507 CALL                             R26 2 -1
      508 RETURN                           R26 -1

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
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R10
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
