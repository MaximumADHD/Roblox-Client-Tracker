PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

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
        5 LOADN                            R1 -1
        6 JUMP                             ; [+1]
        7 LOADN                            R1 1
        8 GETTABLEN                        R3 R0 2
        9 GETTABLEKS                       R3 R3 K2 ["Y"]
       11 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       13 LOADN                            R2 -1
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
       32 DUPTABLE                         R10 K9 [{["stackAboveOwner"] = True}]
       33 CALL                             R8 2 1
       34 GETTABLEKS                       R9 R7 K10 ["Size"]
       36 GETTABLEKS                       R9 R9 K11 ["Size_200"]
       38 MULK                             R10 R9 K12 [1.4142135623731]
       39 DIVK                             R11 R10 K13 [2]
       40 GETTABLEKS                       R12 R2 K14 ["backgroundStyle"]
       42 JUMPIF                           R12 ; [+6]
       43 GETTABLEKS                       R12 R7 K15 ["Color"]
       45 GETTABLEKS                       R12 R12 K16 ["Surface"]
       47 GETTABLEKS                       R12 R12 K17 ["Surface_100"]
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R13 R13 K18 ["useState"]
       52 LOADNIL                          R14
       53 CALL                             R13 1 2
       54 GETUPVAL                         R15 2
       55 GETTABLEKS                       R15 R15 K18 ["useState"]
       57 LOADNIL                          R16
       58 CALL                             R15 1 2
       59 GETUPVAL                         R17 8
       60 MOVE                             R18 R15
       61 CALL                             R17 1 1
       62 GETUPVAL                         R18 2
       63 GETTABLEKS                       R18 R18 K19 ["useImperativeHandle"]
       65 MOVE                             R19 R1
       66 NEWCLOSURE                       R20 P0
       67 CAPTURE                          VAL R13
       68 NEWTABLE                         R21 0 1
       70 MOVE                             R22 R13
       71 SETLIST                          R21 R22 1 [1]
       73 CALL                             R18 3 0
       74 GETUPVAL                         R18 9
       75 GETTABLEKS                       R19 R3 K20 ["isOpen"]
       77 GETTABLEKS                       R20 R3 K1 ["anchor"]
       79 MOVE                             R21 R13
       80 MOVE                             R22 R6
       81 GETTABLEKS                       R23 R2 K21 ["side"]
       83 GETTABLEKS                       R24 R2 K22 ["align"]
       85 JUMPIFNOT                        R5 ; [+2]
       86 MOVE                             R25 R11
       87 JUMP                             ; [+1]
       88 LOADN                            R25 0
       89 CALL                             R18 7 6
       90 GETUPVAL                         R24 2
       91 GETTABLEKS                       R24 R24 K23 ["useRef"]
       93 LOADNIL                          R25
       94 CALL                             R24 1 1
       95 GETUPVAL                         R25 2
       96 GETTABLEKS                       R25 R25 K24 ["useCallback"]
       98 NEWCLOSURE                       R26 P1
       99 CAPTURE                          VAL R24
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R17
      105 CAPTURE                          UPVAL U10
      106 NEWTABLE                         R27 0 2
      108 GETTABLEKS                       R28 R2 K25 ["onPressedOutside"]
      110 GETTABLEKS                       R29 R3 K1 ["anchor"]
      112 SETLIST                          R27 R28 2 [1]
      114 CALL                             R25 2 1
      115 GETUPVAL                         R26 2
      116 GETTABLEKS                       R26 R26 K26 ["useEffect"]
      118 NEWCLOSURE                       R27 P2
      119 CAPTURE                          VAL R24
      120 NEWTABLE                         R28 0 0
      122 CALL                             R26 2 0
      123 GETTABLEKS                       R26 R3 K20 ["isOpen"]
      125 JUMPIFNOT                        R26 ; [+258]
      126 GETUPVAL                         R27 2
      127 GETTABLEKS                       R27 R27 K27 ["createElement"]
      129 GETUPVAL                         R28 11
      130 DUPTABLE                         R29 K33 [{["ZIndex"], ["tag"] = "size-full", ["Visible"], ["testId"]}]
      131 GETTABLEKS                       R30 R8 K34 ["zIndex"]
      133 SETTABLEKS                       R30 R29 K28 ["ZIndex"]
      135 SETTABLEKS                       R19 R29 K31 ["Visible"]
      137 LOADK                            R31 K35 ["%*--container"]
      138 GETTABLEKS                       R33 R3 K32 ["testId"]
      140 NAMECALL                         R31 R31 K36 ["format"]
      142 CALL                             R31 2 1
      143 MOVE                             R30 R31
      144 SETTABLEKS                       R30 R29 K32 ["testId"]
      146 DUPTABLE                         R30 K41 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      147 GETTABLEKS                       R32 R2 K25 ["onPressedOutside"]
      149 JUMPIFNOT                        R32 ; [+36]
      150 GETTABLEKS                       R32 R3 K20 ["isOpen"]
      152 JUMPIFNOT                        R32 ; [+33]
      153 GETUPVAL                         R31 2
      154 GETTABLEKS                       R31 R31 K27 ["createElement"]
      156 GETUPVAL                         R32 11
      157 DUPTABLE                         R33 K46 [{["ZIndex"] = 1, ["stateLayer"], ["Size"], ["tag"] = "position-center-center anchor-center-center", ["ref"], ["testId"]}]
      158 DUPTABLE                         R34 K48 [{"affordance"}]
      159 GETUPVAL                         R35 12
      160 GETTABLEKS                       R35 R35 K49 ["None"]
      162 SETTABLEKS                       R35 R34 K47 ["affordance"]
      164 SETTABLEKS                       R34 R33 K43 ["stateLayer"]
      166 GETIMPORT                        R34 K52 [UDim2.fromScale]
      168 LOADN                            R35 2
      169 LOADN                            R36 2
      170 CALL                             R34 2 1
      171 SETTABLEKS                       R34 R33 K10 ["Size"]
      173 SETTABLEKS                       R25 R33 K45 ["ref"]
      175 LOADK                            R35 K53 ["%*--backdrop"]
      176 GETTABLEKS                       R37 R3 K32 ["testId"]
      178 NAMECALL                         R35 R35 K36 ["format"]
      180 CALL                             R35 2 1
      181 MOVE                             R34 R35
      182 SETTABLEKS                       R34 R33 K32 ["testId"]
      184 CALL                             R31 2 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R31
      187 SETTABLEKS                       R31 R30 K37 ["Backdrop"]
      189 GETUPVAL                         R31 2
      190 GETTABLEKS                       R31 R31 K27 ["createElement"]
      192 GETUPVAL                         R32 13
      193 DUPTABLE                         R33 K59 [{["AnchorPoint"], ["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"], ["testId"]}]
      194 SETTABLEKS                       R23 R33 K54 ["AnchorPoint"]
      196 GETUPVAL                         R34 14
      197 SETTABLEKS                       R34 R33 K55 ["Image"]
      199 DUPCLOSURE                       R36 K60 [PROTO_5]
      200 CAPTURE                          UPVAL U15
      201 NAMECALL                         R34 R20 K61 ["map"]
      203 CALL                             R34 2 1
      204 SETTABLEKS                       R34 R33 K10 ["Size"]
      206 GETUPVAL                         R34 2
      207 GETTABLEKS                       R34 R34 K62 ["joinBindings"]
      209 NEWTABLE                         R35 0 2
      211 MOVE                             R36 R18
      212 MOVE                             R37 R23
      213 SETLIST                          R35 R36 2 [1]
      215 CALL                             R34 1 1
      216 DUPCLOSURE                       R36 K63 [PROTO_6]
      217 CAPTURE                          UPVAL U15
      218 NAMECALL                         R34 R34 K61 ["map"]
      220 CALL                             R34 2 1
      221 SETTABLEKS                       R34 R33 K56 ["Position"]
      223 DUPTABLE                         R34 K65 [{"center"}]
      224 GETIMPORT                        R35 K68 [Rect.new]
      226 GETUPVAL                         R36 15
      227 GETUPVAL                         R37 15
      228 GETUPVAL                         R39 15
      229 ADDK                             R38 R39 K42 [1]
      230 GETUPVAL                         R40 15
      231 ADDK                             R39 R40 K42 [1]
      232 CALL                             R35 4 1
      233 SETTABLEKS                       R35 R34 K64 ["center"]
      235 SETTABLEKS                       R34 R33 K57 ["slice"]
      237 GETTABLEKS                       R34 R7 K15 ["Color"]
      239 GETTABLEKS                       R34 R34 K69 ["Extended"]
      241 GETTABLEKS                       R34 R34 K70 ["Black"]
      243 GETTABLEKS                       R34 R34 K71 ["Black_20"]
      245 SETTABLEKS                       R34 R33 K58 ["imageStyle"]
      247 LOADK                            R35 K72 ["%*--shadow"]
      248 GETTABLEKS                       R37 R3 K32 ["testId"]
      250 NAMECALL                         R35 R35 K36 ["format"]
      252 CALL                             R35 2 1
      253 MOVE                             R34 R35
      254 SETTABLEKS                       R34 R33 K32 ["testId"]
      256 CALL                             R31 2 1
      257 SETTABLEKS                       R31 R30 K38 ["Shadow"]
      259 JUMPIFNOT                        R5 ; [+31]
      260 GETUPVAL                         R31 2
      261 GETTABLEKS                       R31 R31 K27 ["createElement"]
      263 GETUPVAL                         R32 11
      264 DUPTABLE                         R33 K77 [{["Size"], ["Position"], ["Rotation"] = 45, ["ZIndex"] = 3, ["backgroundStyle"], ["tag"] = "anchor-center-center", ["testId"]}]
      265 GETIMPORT                        R34 K79 [UDim2.fromOffset]
      267 MOVE                             R35 R9
      268 MOVE                             R36 R9
      269 CALL                             R34 2 1
      270 SETTABLEKS                       R34 R33 K10 ["Size"]
      272 DUPCLOSURE                       R36 K80 [PROTO_7]
      273 NAMECALL                         R34 R21 K61 ["map"]
      275 CALL                             R34 2 1
      276 SETTABLEKS                       R34 R33 K56 ["Position"]
      278 SETTABLEKS                       R12 R33 K14 ["backgroundStyle"]
      280 LOADK                            R35 K81 ["%*--arrow"]
      281 GETTABLEKS                       R37 R3 K32 ["testId"]
      283 NAMECALL                         R35 R35 K36 ["format"]
      285 CALL                             R35 2 1
      286 MOVE                             R34 R35
      287 SETTABLEKS                       R34 R33 K32 ["testId"]
      289 CALL                             R31 2 1
      290 JUMP                             ; [+1]
      291 LOADNIL                          R31
      292 SETTABLEKS                       R31 R30 K39 ["Arrow"]
      294 GETUPVAL                         R31 2
      295 GETTABLEKS                       R31 R31 K27 ["createElement"]
      297 GETUPVAL                         R32 11
      298 DUPTABLE                         R33 K87 [{["AnchorPoint"], ["Position"], ["selection"], ["selectionGroup"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 4, ["onActivated"], ["backgroundStyle"], ["tag"], ["ref"], ["testId"]}]
      299 SETTABLEKS                       R23 R33 K54 ["AnchorPoint"]
      301 DUPCLOSURE                       R36 K88 [PROTO_8]
      302 NAMECALL                         R34 R18 K61 ["map"]
      304 CALL                             R34 2 1
      305 SETTABLEKS                       R34 R33 K56 ["Position"]
      307 GETTABLEKS                       R34 R2 K82 ["selection"]
      309 SETTABLEKS                       R34 R33 K82 ["selection"]
      311 GETTABLEKS                       R34 R2 K83 ["selectionGroup"]
      313 SETTABLEKS                       R34 R33 K83 ["selectionGroup"]
      315 DUPTABLE                         R34 K90 [{"MaxSize"}]
      316 SETTABLEKS                       R22 R34 K89 ["MaxSize"]
      318 SETTABLEKS                       R34 R33 K84 ["sizeConstraint"]
      320 DUPTABLE                         R34 K48 [{"affordance"}]
      321 GETUPVAL                         R35 12
      322 GETTABLEKS                       R35 R35 K49 ["None"]
      324 SETTABLEKS                       R35 R34 K47 ["affordance"]
      326 SETTABLEKS                       R34 R33 K43 ["stateLayer"]
      328 GETTABLEKS                       R35 R2 K25 ["onPressedOutside"]
      330 JUMPIF                           R35 ; [+7]
      331 GETUPVAL                         R35 16
      332 GETTABLEKS                       R35 R35 K91 ["FoundationCoachmarkInteractionFixes"]
      334 JUMPIFNOT                        R35 ; [+7]
      335 GETTABLEKS                       R35 R2 K92 ["DO_NOT_USE_hasContentInputSink"]
      337 JUMPIFNOT                        R35 ; [+4]
      338 GETUPVAL                         R34 17
      339 GETTABLEKS                       R34 R34 K93 ["noop"]
      341 JUMP                             ; [+1]
      342 LOADNIL                          R34
      343 SETTABLEKS                       R34 R33 K86 ["onActivated"]
      345 SETTABLEKS                       R12 R33 K14 ["backgroundStyle"]
      347 LOADK                            R35 K94 ["auto-xy %*"]
      348 GETUPVAL                         R38 18
      349 GETTABLEKS                       R39 R2 K95 ["radius"]
      351 GETTABLE                         R37 R38 R39
      352 NAMECALL                         R35 R35 K36 ["format"]
      354 CALL                             R35 2 1
      355 MOVE                             R34 R35
      356 SETTABLEKS                       R34 R33 K29 ["tag"]
      358 SETTABLEKS                       R14 R33 K45 ["ref"]
      360 LOADK                            R35 K96 ["%*--content"]
      361 GETTABLEKS                       R37 R3 K32 ["testId"]
      363 NAMECALL                         R35 R35 K36 ["format"]
      365 CALL                             R35 2 1
      366 MOVE                             R34 R35
      367 SETTABLEKS                       R34 R33 K32 ["testId"]
      369 GETUPVAL                         R34 2
      370 GETTABLEKS                       R34 R34 K27 ["createElement"]
      372 GETUPVAL                         R35 19
      373 DUPTABLE                         R36 K98 [{"owner"}]
      374 SETTABLEKS                       R8 R36 K97 ["owner"]
      376 GETTABLEKS                       R37 R2 K99 ["children"]
      378 CALL                             R34 3 -1
      379 CALL                             R31 -1 1
      380 SETTABLEKS                       R31 R30 K40 ["Content"]
      382 CALL                             R27 3 1
      383 JUMP                             ; [+1]
      384 LOADNIL                          R27
      385 JUMPIFNOTEQKNIL                  R6 ; [+2]
      387 RETURN                           R27 1
      388 GETUPVAL                         R28 20
      389 GETTABLEKS                       R28 R28 K100 ["createPortal"]
      391 MOVE                             R29 R27
      392 MOVE                             R30 R6
      393 CALL                             R28 2 -1
      394 RETURN                           R28 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K11 ["PopoverContext"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Components"]
       41 GETTABLEKS                       R7 R7 K12 ["View"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K13 ["Utility"]
       48 GETTABLEKS                       R8 R8 K14 ["isPointInGuiObjectBounds"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R9 R9 K4 ["Parent"]
       57 GETTABLEKS                       R9 R9 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K15 ["useFloating"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K16 ["Providers"]
       66 GETTABLEKS                       R10 R10 K17 ["Overlay"]
       68 GETTABLEKS                       R10 R10 K18 ["useOverlay"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K13 ["Utility"]
       75 GETTABLEKS                       R11 R11 K19 ["usePointerPosition"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K16 ["Providers"]
       82 GETTABLEKS                       R12 R12 K20 ["Style"]
       84 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R0 K13 ["Utility"]
       91 GETTABLEKS                       R13 R13 K22 ["withDefaults"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K13 ["Utility"]
       98 GETTABLEKS                       R14 R14 K23 ["Flags"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K24 ["Enums"]
      105 GETTABLEKS                       R15 R15 K25 ["PopoverAlign"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R0 K24 ["Enums"]
      112 GETTABLEKS                       R16 R16 K26 ["PopoverSide"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R17 R0 K24 ["Enums"]
      119 GETTABLEKS                       R17 R17 K27 ["Radius"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R1 K28 ["React"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R1 K29 ["ReactRoblox"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K6 [require]
      134 GETTABLEKS                       R20 R0 K24 ["Enums"]
      136 GETTABLEKS                       R20 R20 K30 ["StateLayerAffordance"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K6 [require]
      141 GETTABLEKS                       R21 R0 K24 ["Enums"]
      143 GETTABLEKS                       R21 R21 K31 ["ElevationLayer"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K6 [require]
      148 GETTABLEKS                       R22 R0 K9 ["Components"]
      150 GETTABLEKS                       R22 R22 K32 ["Types"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K6 [require]
      155 GETTABLEKS                       R23 R0 K16 ["Providers"]
      157 GETTABLEKS                       R23 R23 K33 ["Elevation"]
      159 GETTABLEKS                       R23 R23 K34 ["useElevation"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K6 [require]
      164 GETTABLEKS                       R24 R0 K16 ["Providers"]
      166 GETTABLEKS                       R24 R24 K33 ["Elevation"]
      168 GETTABLEKS                       R24 R24 K35 ["ElevationProvider"]
      170 CALL                             R23 1 1
      171 GETTABLEKS                       R23 R23 K36 ["ElevationOwnerScope"]
      173 DUPTABLE                         R24 K44 [{["side"], ["align"], ["hasArrow"] = True, ["selection"], ["selectionGroup"], ["radius"]}]
      174 GETTABLEKS                       R25 R15 K45 ["Bottom"]
      176 SETTABLEKS                       R25 R24 K37 ["side"]
      178 GETTABLEKS                       R25 R14 K46 ["Center"]
      180 SETTABLEKS                       R25 R24 K38 ["align"]
      182 GETTABLEKS                       R25 R2 K47 ["MODAL"]
      184 GETTABLEKS                       R25 R25 K48 ["DISABLE_SELECTION"]
      186 SETTABLEKS                       R25 R24 K41 ["selection"]
      188 GETTABLEKS                       R25 R2 K47 ["MODAL"]
      190 GETTABLEKS                       R25 R25 K49 ["TRAP_FOCUS"]
      192 SETTABLEKS                       R25 R24 K42 ["selectionGroup"]
      194 GETTABLEKS                       R25 R16 K50 ["Medium"]
      196 SETTABLEKS                       R25 R24 K43 ["radius"]
      198 NEWTABLE                         R25 4 0
      200 GETTABLEKS                       R26 R16 K51 ["Small"]
      202 LOADK                            R27 K52 ["radius-small"]
      203 SETTABLE                         R27 R25 R26
      204 GETTABLEKS                       R26 R16 K50 ["Medium"]
      206 LOADK                            R27 K53 ["radius-medium"]
      207 SETTABLE                         R27 R25 R26
      208 GETTABLEKS                       R26 R16 K54 ["Circle"]
      210 LOADK                            R27 K55 ["radius-circle"]
      211 SETTABLE                         R27 R25 R26
      212 GETTABLEKS                       R26 R2 K56 ["SHADOW_IMAGE"]
      214 GETTABLEKS                       R27 R2 K57 ["SHADOW_SIZE"]
      216 DUPCLOSURE                       R28 K58 [PROTO_9]
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R24
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R26
      232 CAPTURE                          VAL R27
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R18
      238 GETTABLEKS                       R29 R17 K59 ["forwardRef"]
      240 MOVE                             R30 R28
      241 CALL                             R29 1 -1
      242 RETURN                           R29 -1
