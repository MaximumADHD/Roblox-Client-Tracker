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
      146 GETUPVAL                         R29 9
      147 GETTABLEKS                       R28 R29 K28 ["FoundationPopoverConditionalRender"]
      149 JUMPIFNOT                        R28 ; [+3]
      150 GETTABLEKS                       R27 R3 K21 ["isOpen"]
      152 JUMP                             ; [+1]
      153 LOADB                            R27 1
      154 JUMPIFNOT                        R27 ; [+296]
      155 GETUPVAL                         R29 2
      156 GETTABLEKS                       R28 R29 K29 ["createElement"]
      158 GETUPVAL                         R29 12
      159 DUPTABLE                         R30 K34 [{"ZIndex", "tag", "Visible", "testId"}]
      160 GETTABLEKS                       R31 R8 K35 ["zIndex"]
      162 SETTABLEKS                       R31 R30 K30 ["ZIndex"]
      164 LOADK                            R31 K36 ["size-full"]
      165 SETTABLEKS                       R31 R30 K31 ["tag"]
      167 SETTABLEKS                       R20 R30 K32 ["Visible"]
      169 LOADK                            R32 K37 ["%*--container"]
      170 GETTABLEKS                       R34 R3 K33 ["testId"]
      172 NAMECALL                         R32 R32 K38 ["format"]
      174 CALL                             R32 2 1
      175 MOVE                             R31 R32
      176 SETTABLEKS                       R31 R30 K33 ["testId"]
      178 DUPTABLE                         R31 K43 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      179 GETTABLEKS                       R33 R2 K26 ["onPressedOutside"]
      181 JUMPIFNOT                        R33 ; [+42]
      182 GETTABLEKS                       R33 R3 K21 ["isOpen"]
      184 JUMPIFNOT                        R33 ; [+39]
      185 GETUPVAL                         R33 2
      186 GETTABLEKS                       R32 R33 K29 ["createElement"]
      188 GETUPVAL                         R33 12
      189 DUPTABLE                         R34 K46 [{"ZIndex", "stateLayer", "Size", "tag", "ref", "testId"}]
      190 LOADN                            R35 1
      191 SETTABLEKS                       R35 R34 K30 ["ZIndex"]
      193 DUPTABLE                         R35 K48 [{"affordance"}]
      194 GETUPVAL                         R37 13
      195 GETTABLEKS                       R36 R37 K49 ["None"]
      197 SETTABLEKS                       R36 R35 K47 ["affordance"]
      199 SETTABLEKS                       R35 R34 K44 ["stateLayer"]
      201 GETIMPORT                        R35 K52 [UDim2.fromScale]
      203 LOADN                            R36 2
      204 LOADN                            R37 2
      205 CALL                             R35 2 1
      206 SETTABLEKS                       R35 R34 K9 ["Size"]
      208 LOADK                            R35 K53 ["position-center-center anchor-center-center"]
      209 SETTABLEKS                       R35 R34 K31 ["tag"]
      211 SETTABLEKS                       R26 R34 K45 ["ref"]
      213 LOADK                            R36 K54 ["%*--backdrop"]
      214 GETTABLEKS                       R38 R3 K33 ["testId"]
      216 NAMECALL                         R36 R36 K38 ["format"]
      218 CALL                             R36 2 1
      219 MOVE                             R35 R36
      220 SETTABLEKS                       R35 R34 K33 ["testId"]
      222 CALL                             R32 2 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R32
      225 SETTABLEKS                       R32 R31 K39 ["Backdrop"]
      227 GETUPVAL                         R33 2
      228 GETTABLEKS                       R32 R33 K29 ["createElement"]
      230 GETUPVAL                         R33 14
      231 DUPTABLE                         R34 K60 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "testId"}]
      232 GETUPVAL                         R37 9
      233 GETTABLEKS                       R36 R37 K61 ["FoundationPopoverOverflow"]
      235 JUMPIFNOT                        R36 ; [+2]
      236 MOVE                             R35 R24
      237 JUMP                             ; [+1]
      238 LOADNIL                          R35
      239 SETTABLEKS                       R35 R34 K55 ["AnchorPoint"]
      241 GETUPVAL                         R35 15
      242 SETTABLEKS                       R35 R34 K56 ["Image"]
      244 DUPCLOSURE                       R37 K62 [PROTO_5]
      245 CAPTURE                          UPVAL U16
      246 NAMECALL                         R35 R21 K63 ["map"]
      248 CALL                             R35 2 1
      249 SETTABLEKS                       R35 R34 K9 ["Size"]
      251 GETUPVAL                         R37 9
      252 GETTABLEKS                       R36 R37 K61 ["FoundationPopoverOverflow"]
      254 JUMPIFNOT                        R36 ; [+16]
      255 GETUPVAL                         R36 2
      256 GETTABLEKS                       R35 R36 K64 ["joinBindings"]
      258 NEWTABLE                         R36 0 2
      260 MOVE                             R37 R19
      261 MOVE                             R38 R24
      262 SETLIST                          R36 R37 2 [1]
      264 CALL                             R35 1 1
      265 DUPCLOSURE                       R37 K65 [PROTO_6]
      266 CAPTURE                          UPVAL U16
      267 NAMECALL                         R35 R35 K63 ["map"]
      269 CALL                             R35 2 1
      270 JUMP                             ; [+5]
      271 DUPCLOSURE                       R37 K66 [PROTO_7]
      272 CAPTURE                          UPVAL U16
      273 NAMECALL                         R35 R19 K63 ["map"]
      275 CALL                             R35 2 1
      276 SETTABLEKS                       R35 R34 K57 ["Position"]
      278 LOADN                            R35 2
      279 SETTABLEKS                       R35 R34 K30 ["ZIndex"]
      281 DUPTABLE                         R35 K68 [{"center"}]
      282 GETIMPORT                        R36 K71 [Rect.new]
      284 GETUPVAL                         R37 16
      285 GETUPVAL                         R38 16
      286 GETUPVAL                         R40 16
      287 ADDK                             R39 R40 K72 [1]
      288 GETUPVAL                         R41 16
      289 ADDK                             R40 R41 K72 [1]
      290 CALL                             R36 4 1
      291 SETTABLEKS                       R36 R35 K67 ["center"]
      293 SETTABLEKS                       R35 R34 K58 ["slice"]
      295 GETTABLEKS                       R38 R7 K14 ["Color"]
      297 GETTABLEKS                       R37 R38 K73 ["Extended"]
      299 GETTABLEKS                       R36 R37 K74 ["Black"]
      301 GETTABLEKS                       R35 R36 K75 ["Black_20"]
      303 SETTABLEKS                       R35 R34 K59 ["imageStyle"]
      305 LOADK                            R36 K76 ["%*--shadow"]
      306 GETTABLEKS                       R38 R3 K33 ["testId"]
      308 NAMECALL                         R36 R36 K38 ["format"]
      310 CALL                             R36 2 1
      311 MOVE                             R35 R36
      312 SETTABLEKS                       R35 R34 K33 ["testId"]
      314 CALL                             R32 2 1
      315 SETTABLEKS                       R32 R31 K40 ["Shadow"]
      317 JUMPIFNOT                        R5 ; [+40]
      318 GETUPVAL                         R33 2
      319 GETTABLEKS                       R32 R33 K29 ["createElement"]
      321 GETUPVAL                         R33 12
      322 DUPTABLE                         R34 K78 [{"Size", "Position", "Rotation", "ZIndex", "backgroundStyle", "tag", "testId"}]
      323 GETIMPORT                        R35 K80 [UDim2.fromOffset]
      325 MOVE                             R36 R9
      326 MOVE                             R37 R9
      327 CALL                             R35 2 1
      328 SETTABLEKS                       R35 R34 K9 ["Size"]
      330 DUPCLOSURE                       R37 K81 [PROTO_8]
      331 NAMECALL                         R35 R22 K63 ["map"]
      333 CALL                             R35 2 1
      334 SETTABLEKS                       R35 R34 K57 ["Position"]
      336 LOADN                            R35 45
      337 SETTABLEKS                       R35 R34 K77 ["Rotation"]
      339 LOADN                            R35 3
      340 SETTABLEKS                       R35 R34 K30 ["ZIndex"]
      342 SETTABLEKS                       R12 R34 K13 ["backgroundStyle"]
      344 LOADK                            R35 K82 ["anchor-center-center"]
      345 SETTABLEKS                       R35 R34 K31 ["tag"]
      347 LOADK                            R36 K83 ["%*--arrow"]
      348 GETTABLEKS                       R38 R3 K33 ["testId"]
      350 NAMECALL                         R36 R36 K38 ["format"]
      352 CALL                             R36 2 1
      353 MOVE                             R35 R36
      354 SETTABLEKS                       R35 R34 K33 ["testId"]
      356 CALL                             R32 2 1
      357 JUMP                             ; [+1]
      358 LOADNIL                          R32
      359 SETTABLEKS                       R32 R31 K41 ["Arrow"]
      361 GETUPVAL                         R33 2
      362 GETTABLEKS                       R32 R33 K29 ["createElement"]
      364 GETUPVAL                         R33 12
      365 DUPTABLE                         R34 K88 [{"AnchorPoint", "Position", "selection", "selectionGroup", "sizeConstraint", "stateLayer", "ZIndex", "onActivated", "backgroundStyle", "tag", "ref", "testId"}]
      366 GETUPVAL                         R37 9
      367 GETTABLEKS                       R36 R37 K61 ["FoundationPopoverOverflow"]
      369 JUMPIFNOT                        R36 ; [+2]
      370 MOVE                             R35 R24
      371 JUMP                             ; [+1]
      372 LOADNIL                          R35
      373 SETTABLEKS                       R35 R34 K55 ["AnchorPoint"]
      375 DUPCLOSURE                       R37 K89 [PROTO_9]
      376 NAMECALL                         R35 R19 K63 ["map"]
      378 CALL                             R35 2 1
      379 SETTABLEKS                       R35 R34 K57 ["Position"]
      381 GETTABLEKS                       R35 R2 K84 ["selection"]
      383 SETTABLEKS                       R35 R34 K84 ["selection"]
      385 GETTABLEKS                       R35 R2 K85 ["selectionGroup"]
      387 SETTABLEKS                       R35 R34 K85 ["selectionGroup"]
      389 DUPTABLE                         R35 K91 [{"MaxSize"}]
      390 SETTABLEKS                       R23 R35 K90 ["MaxSize"]
      392 SETTABLEKS                       R35 R34 K86 ["sizeConstraint"]
      394 DUPTABLE                         R35 K48 [{"affordance"}]
      395 GETUPVAL                         R37 13
      396 GETTABLEKS                       R36 R37 K49 ["None"]
      398 SETTABLEKS                       R36 R35 K47 ["affordance"]
      400 SETTABLEKS                       R35 R34 K44 ["stateLayer"]
      402 LOADN                            R35 4
      403 SETTABLEKS                       R35 R34 K30 ["ZIndex"]
      405 GETTABLEKS                       R36 R2 K26 ["onPressedOutside"]
      407 JUMPIFNOT                        R36 ; [+2]
      408 DUPCLOSURE                       R35 K92 [PROTO_10]
      409 JUMP                             ; [+1]
      410 LOADNIL                          R35
      411 SETTABLEKS                       R35 R34 K87 ["onActivated"]
      413 SETTABLEKS                       R12 R34 K13 ["backgroundStyle"]
      415 LOADK                            R36 K93 ["auto-xy %*"]
      416 GETUPVAL                         R39 17
      417 GETTABLEKS                       R40 R2 K94 ["radius"]
      419 GETTABLE                         R38 R39 R40
      420 NAMECALL                         R36 R36 K38 ["format"]
      422 CALL                             R36 2 1
      423 MOVE                             R35 R36
      424 SETTABLEKS                       R35 R34 K31 ["tag"]
      426 GETUPVAL                         R37 9
      427 GETTABLEKS                       R36 R37 K20 ["FoundationFixPopoverShadowSizing"]
      429 JUMPIFNOT                        R36 ; [+2]
      430 MOVE                             R35 R15
      431 JUMP                             ; [+1]
      432 MOVE                             R35 R13
      433 SETTABLEKS                       R35 R34 K45 ["ref"]
      435 LOADK                            R36 K95 ["%*--content"]
      436 GETTABLEKS                       R38 R3 K33 ["testId"]
      438 NAMECALL                         R36 R36 K38 ["format"]
      440 CALL                             R36 2 1
      441 MOVE                             R35 R36
      442 SETTABLEKS                       R35 R34 K33 ["testId"]
      444 GETTABLEKS                       R35 R2 K96 ["children"]
      446 CALL                             R32 3 1
      447 SETTABLEKS                       R32 R31 K42 ["Content"]
      449 CALL                             R28 3 1
      450 JUMP                             ; [+1]
      451 LOADNIL                          R28
      452 JUMPIFNOTEQKNIL                  R6 ; [+2]
      454 RETURN                           R28 1
      455 GETUPVAL                         R30 18
      456 GETTABLEKS                       R29 R30 K97 ["createPortal"]
      458 MOVE                             R30 R28
      459 MOVE                             R31 R6
      460 CALL                             R29 2 -1
      461 RETURN                           R29 -1

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
