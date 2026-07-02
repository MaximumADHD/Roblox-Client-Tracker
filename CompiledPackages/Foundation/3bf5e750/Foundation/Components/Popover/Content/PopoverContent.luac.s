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
       32 DUPTABLE                         R10 K9 [{["relativeToOwner"] = True}]
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
       50 GETTABLEKS                       R13 R13 K18 ["useRef"]
       52 LOADNIL                          R14
       53 CALL                             R13 1 1
       54 GETUPVAL                         R14 2
       55 GETTABLEKS                       R14 R14 K19 ["useState"]
       57 LOADNIL                          R15
       58 CALL                             R14 1 2
       59 GETUPVAL                         R16 8
       60 MOVE                             R17 R14
       61 CALL                             R16 1 1
       62 GETUPVAL                         R17 2
       63 GETTABLEKS                       R17 R17 K20 ["useImperativeHandle"]
       65 MOVE                             R18 R1
       66 NEWCLOSURE                       R19 P0
       67 CAPTURE                          VAL R13
       68 NEWTABLE                         R20 0 0
       70 CALL                             R17 3 0
       71 GETUPVAL                         R17 9
       72 GETTABLEKS                       R18 R3 K21 ["isOpen"]
       74 GETTABLEKS                       R19 R3 K1 ["anchor"]
       76 GETTABLEKS                       R20 R13 K22 ["current"]
       78 MOVE                             R21 R6
       79 GETTABLEKS                       R22 R2 K23 ["side"]
       81 GETTABLEKS                       R23 R2 K24 ["align"]
       83 JUMPIFNOT                        R5 ; [+2]
       84 MOVE                             R24 R11
       85 JUMP                             ; [+1]
       86 LOADN                            R24 0
       87 CALL                             R17 7 6
       88 GETUPVAL                         R23 2
       89 GETTABLEKS                       R23 R23 K18 ["useRef"]
       91 LOADNIL                          R24
       92 CALL                             R23 1 1
       93 GETUPVAL                         R24 2
       94 GETTABLEKS                       R24 R24 K25 ["useCallback"]
       96 NEWCLOSURE                       R25 P1
       97 CAPTURE                          VAL R23
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R16
      103 CAPTURE                          UPVAL U10
      104 NEWTABLE                         R26 0 2
      106 GETTABLEKS                       R27 R2 K26 ["onPressedOutside"]
      108 GETTABLEKS                       R28 R3 K1 ["anchor"]
      110 SETLIST                          R26 R27 2 [1]
      112 CALL                             R24 2 1
      113 GETUPVAL                         R25 2
      114 GETTABLEKS                       R25 R25 K27 ["useEffect"]
      116 NEWCLOSURE                       R26 P2
      117 CAPTURE                          VAL R23
      118 NEWTABLE                         R27 0 0
      120 CALL                             R25 2 0
      121 GETUPVAL                         R25 2
      122 GETTABLEKS                       R25 R25 K28 ["createElement"]
      124 GETUPVAL                         R26 11
      125 DUPTABLE                         R27 K34 [{["ZIndex"], ["tag"] = "size-full", ["Visible"], ["testId"]}]
      126 GETTABLEKS                       R28 R8 K35 ["zIndex"]
      128 SETTABLEKS                       R28 R27 K29 ["ZIndex"]
      130 SETTABLEKS                       R18 R27 K32 ["Visible"]
      132 LOADK                            R29 K36 ["%*--container"]
      133 GETTABLEKS                       R31 R3 K33 ["testId"]
      135 NAMECALL                         R29 R29 K37 ["format"]
      137 CALL                             R29 2 1
      138 MOVE                             R28 R29
      139 SETTABLEKS                       R28 R27 K33 ["testId"]
      141 DUPTABLE                         R28 K42 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      142 GETTABLEKS                       R30 R2 K26 ["onPressedOutside"]
      144 JUMPIFNOT                        R30 ; [+55]
      145 GETTABLEKS                       R30 R3 K21 ["isOpen"]
      147 JUMPIFNOT                        R30 ; [+52]
      148 GETUPVAL                         R29 2
      149 GETTABLEKS                       R29 R29 K28 ["createElement"]
      151 GETUPVAL                         R30 11
      152 DUPTABLE                         R31 K46 [{["ZIndex"] = 1, ["stateLayer"], ["Size"], ["tag"], ["ref"], ["testId"]}]
      153 DUPTABLE                         R32 K48 [{"affordance"}]
      154 GETUPVAL                         R33 12
      155 GETTABLEKS                       R33 R33 K49 ["None"]
      157 SETTABLEKS                       R33 R32 K47 ["affordance"]
      159 SETTABLEKS                       R32 R31 K44 ["stateLayer"]
      161 GETUPVAL                         R33 13
      162 GETTABLEKS                       R33 R33 K50 ["FoundationPopoverOversizedBackdrop"]
      164 JUMPIFNOT                        R33 ; [+6]
      165 GETIMPORT                        R32 K53 [UDim2.fromScale]
      167 LOADN                            R33 2
      168 LOADN                            R34 2
      169 CALL                             R32 2 1
      170 JUMP                             ; [+5]
      171 GETIMPORT                        R32 K53 [UDim2.fromScale]
      173 LOADN                            R33 1
      174 LOADN                            R34 1
      175 CALL                             R32 2 1
      176 SETTABLEKS                       R32 R31 K10 ["Size"]
      178 GETUPVAL                         R33 13
      179 GETTABLEKS                       R33 R33 K50 ["FoundationPopoverOversizedBackdrop"]
      181 JUMPIFNOT                        R33 ; [+2]
      182 LOADK                            R32 K54 ["position-center-center anchor-center-center"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R32
      185 SETTABLEKS                       R32 R31 K30 ["tag"]
      187 SETTABLEKS                       R24 R31 K45 ["ref"]
      189 LOADK                            R33 K55 ["%*--backdrop"]
      190 GETTABLEKS                       R35 R3 K33 ["testId"]
      192 NAMECALL                         R33 R33 K37 ["format"]
      194 CALL                             R33 2 1
      195 MOVE                             R32 R33
      196 SETTABLEKS                       R32 R31 K33 ["testId"]
      198 CALL                             R29 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R29
      201 SETTABLEKS                       R29 R28 K38 ["Backdrop"]
      203 GETUPVAL                         R29 2
      204 GETTABLEKS                       R29 R29 K28 ["createElement"]
      206 GETUPVAL                         R30 14
      207 DUPTABLE                         R31 K61 [{["AnchorPoint"], ["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"], ["testId"]}]
      208 GETUPVAL                         R33 13
      209 GETTABLEKS                       R33 R33 K62 ["FoundationPopoverOverflow"]
      211 JUMPIFNOT                        R33 ; [+2]
      212 MOVE                             R32 R22
      213 JUMP                             ; [+1]
      214 LOADNIL                          R32
      215 SETTABLEKS                       R32 R31 K56 ["AnchorPoint"]
      217 GETUPVAL                         R32 15
      218 SETTABLEKS                       R32 R31 K57 ["Image"]
      220 DUPCLOSURE                       R34 K63 [PROTO_5]
      221 CAPTURE                          UPVAL U16
      222 NAMECALL                         R32 R19 K64 ["map"]
      224 CALL                             R32 2 1
      225 SETTABLEKS                       R32 R31 K10 ["Size"]
      227 GETUPVAL                         R33 13
      228 GETTABLEKS                       R33 R33 K62 ["FoundationPopoverOverflow"]
      230 JUMPIFNOT                        R33 ; [+16]
      231 GETUPVAL                         R32 2
      232 GETTABLEKS                       R32 R32 K65 ["joinBindings"]
      234 NEWTABLE                         R33 0 2
      236 MOVE                             R34 R17
      237 MOVE                             R35 R22
      238 SETLIST                          R33 R34 2 [1]
      240 CALL                             R32 1 1
      241 DUPCLOSURE                       R34 K66 [PROTO_6]
      242 CAPTURE                          UPVAL U16
      243 NAMECALL                         R32 R32 K64 ["map"]
      245 CALL                             R32 2 1
      246 JUMP                             ; [+5]
      247 DUPCLOSURE                       R34 K67 [PROTO_7]
      248 CAPTURE                          UPVAL U16
      249 NAMECALL                         R32 R17 K64 ["map"]
      251 CALL                             R32 2 1
      252 SETTABLEKS                       R32 R31 K58 ["Position"]
      254 DUPTABLE                         R32 K69 [{"center"}]
      255 GETIMPORT                        R33 K72 [Rect.new]
      257 GETUPVAL                         R34 16
      258 GETUPVAL                         R35 16
      259 GETUPVAL                         R37 16
      260 ADDK                             R36 R37 K43 [1]
      261 GETUPVAL                         R38 16
      262 ADDK                             R37 R38 K43 [1]
      263 CALL                             R33 4 1
      264 SETTABLEKS                       R33 R32 K68 ["center"]
      266 SETTABLEKS                       R32 R31 K59 ["slice"]
      268 GETTABLEKS                       R32 R7 K15 ["Color"]
      270 GETTABLEKS                       R32 R32 K73 ["Extended"]
      272 GETTABLEKS                       R32 R32 K74 ["Black"]
      274 GETTABLEKS                       R32 R32 K75 ["Black_20"]
      276 SETTABLEKS                       R32 R31 K60 ["imageStyle"]
      278 LOADK                            R33 K76 ["%*--shadow"]
      279 GETTABLEKS                       R35 R3 K33 ["testId"]
      281 NAMECALL                         R33 R33 K37 ["format"]
      283 CALL                             R33 2 1
      284 MOVE                             R32 R33
      285 SETTABLEKS                       R32 R31 K33 ["testId"]
      287 CALL                             R29 2 1
      288 SETTABLEKS                       R29 R28 K39 ["Shadow"]
      290 JUMPIFNOT                        R5 ; [+31]
      291 GETUPVAL                         R29 2
      292 GETTABLEKS                       R29 R29 K28 ["createElement"]
      294 GETUPVAL                         R30 11
      295 DUPTABLE                         R31 K81 [{["Size"], ["Position"], ["Rotation"] = 45, ["ZIndex"] = 3, ["backgroundStyle"], ["tag"] = "anchor-center-center", ["testId"]}]
      296 GETIMPORT                        R32 K83 [UDim2.fromOffset]
      298 MOVE                             R33 R9
      299 MOVE                             R34 R9
      300 CALL                             R32 2 1
      301 SETTABLEKS                       R32 R31 K10 ["Size"]
      303 DUPCLOSURE                       R34 K84 [PROTO_8]
      304 NAMECALL                         R32 R20 K64 ["map"]
      306 CALL                             R32 2 1
      307 SETTABLEKS                       R32 R31 K58 ["Position"]
      309 SETTABLEKS                       R12 R31 K14 ["backgroundStyle"]
      311 LOADK                            R33 K85 ["%*--arrow"]
      312 GETTABLEKS                       R35 R3 K33 ["testId"]
      314 NAMECALL                         R33 R33 K37 ["format"]
      316 CALL                             R33 2 1
      317 MOVE                             R32 R33
      318 SETTABLEKS                       R32 R31 K33 ["testId"]
      320 CALL                             R29 2 1
      321 JUMP                             ; [+1]
      322 LOADNIL                          R29
      323 SETTABLEKS                       R29 R28 K40 ["Arrow"]
      325 GETUPVAL                         R29 2
      326 GETTABLEKS                       R29 R29 K28 ["createElement"]
      328 GETUPVAL                         R30 11
      329 DUPTABLE                         R31 K91 [{["AnchorPoint"], ["Position"], ["selection"], ["selectionGroup"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 4, ["onActivated"], ["backgroundStyle"], ["tag"], ["ref"], ["testId"]}]
      330 GETUPVAL                         R33 13
      331 GETTABLEKS                       R33 R33 K62 ["FoundationPopoverOverflow"]
      333 JUMPIFNOT                        R33 ; [+2]
      334 MOVE                             R32 R22
      335 JUMP                             ; [+1]
      336 LOADNIL                          R32
      337 SETTABLEKS                       R32 R31 K56 ["AnchorPoint"]
      339 DUPCLOSURE                       R34 K92 [PROTO_9]
      340 NAMECALL                         R32 R17 K64 ["map"]
      342 CALL                             R32 2 1
      343 SETTABLEKS                       R32 R31 K58 ["Position"]
      345 GETTABLEKS                       R32 R2 K86 ["selection"]
      347 SETTABLEKS                       R32 R31 K86 ["selection"]
      349 GETTABLEKS                       R32 R2 K87 ["selectionGroup"]
      351 SETTABLEKS                       R32 R31 K87 ["selectionGroup"]
      353 DUPTABLE                         R32 K94 [{"MaxSize"}]
      354 SETTABLEKS                       R21 R32 K93 ["MaxSize"]
      356 SETTABLEKS                       R32 R31 K88 ["sizeConstraint"]
      358 DUPTABLE                         R32 K48 [{"affordance"}]
      359 GETUPVAL                         R33 12
      360 GETTABLEKS                       R33 R33 K49 ["None"]
      362 SETTABLEKS                       R33 R32 K47 ["affordance"]
      364 SETTABLEKS                       R32 R31 K44 ["stateLayer"]
      366 GETTABLEKS                       R33 R2 K26 ["onPressedOutside"]
      368 JUMPIFNOT                        R33 ; [+2]
      369 DUPCLOSURE                       R32 K95 [PROTO_10]
      370 JUMP                             ; [+1]
      371 LOADNIL                          R32
      372 SETTABLEKS                       R32 R31 K90 ["onActivated"]
      374 SETTABLEKS                       R12 R31 K14 ["backgroundStyle"]
      376 LOADK                            R33 K96 ["auto-xy %*"]
      377 GETUPVAL                         R36 17
      378 GETTABLEKS                       R37 R2 K97 ["radius"]
      380 GETTABLE                         R35 R36 R37
      381 NAMECALL                         R33 R33 K37 ["format"]
      383 CALL                             R33 2 1
      384 MOVE                             R32 R33
      385 SETTABLEKS                       R32 R31 K30 ["tag"]
      387 SETTABLEKS                       R13 R31 K45 ["ref"]
      389 LOADK                            R33 K98 ["%*--content"]
      390 GETTABLEKS                       R35 R3 K33 ["testId"]
      392 NAMECALL                         R33 R33 K37 ["format"]
      394 CALL                             R33 2 1
      395 MOVE                             R32 R33
      396 SETTABLEKS                       R32 R31 K33 ["testId"]
      398 GETTABLEKS                       R32 R2 K99 ["children"]
      400 CALL                             R29 3 1
      401 SETTABLEKS                       R29 R28 K41 ["Content"]
      403 CALL                             R25 3 1
      404 JUMPIFNOTEQKNIL                  R6 ; [+2]
      406 RETURN                           R25 1
      407 GETUPVAL                         R26 18
      408 GETTABLEKS                       R26 R26 K100 ["createPortal"]
      410 MOVE                             R27 R25
      411 MOVE                             R28 R6
      412 CALL                             R26 2 -1
      413 RETURN                           R26 -1

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
      157 DUPTABLE                         R22 K41 [{["side"], ["align"], ["hasArrow"] = True, ["selection"], ["selectionGroup"], ["radius"]}]
      158 GETTABLEKS                       R23 R14 K42 ["Bottom"]
      160 SETTABLEKS                       R23 R22 K34 ["side"]
      162 GETTABLEKS                       R23 R13 K43 ["Center"]
      164 SETTABLEKS                       R23 R22 K35 ["align"]
      166 GETTABLEKS                       R23 R2 K44 ["MODAL"]
      168 GETTABLEKS                       R23 R23 K45 ["DISABLE_SELECTION"]
      170 SETTABLEKS                       R23 R22 K38 ["selection"]
      172 GETTABLEKS                       R23 R2 K44 ["MODAL"]
      174 GETTABLEKS                       R23 R23 K46 ["TRAP_FOCUS"]
      176 SETTABLEKS                       R23 R22 K39 ["selectionGroup"]
      178 GETTABLEKS                       R23 R15 K47 ["Medium"]
      180 SETTABLEKS                       R23 R22 K40 ["radius"]
      182 NEWTABLE                         R23 4 0
      184 GETTABLEKS                       R24 R15 K48 ["Small"]
      186 LOADK                            R25 K49 ["radius-small"]
      187 SETTABLE                         R25 R23 R24
      188 GETTABLEKS                       R24 R15 K47 ["Medium"]
      190 LOADK                            R25 K50 ["radius-medium"]
      191 SETTABLE                         R25 R23 R24
      192 GETTABLEKS                       R24 R15 K51 ["Circle"]
      194 LOADK                            R25 K52 ["radius-circle"]
      195 SETTABLE                         R25 R23 R24
      196 GETTABLEKS                       R24 R2 K53 ["SHADOW_IMAGE"]
      198 GETTABLEKS                       R25 R2 K54 ["SHADOW_SIZE"]
      200 DUPCLOSURE                       R26 K55 [PROTO_11]
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R19
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R5
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R17
      220 GETTABLEKS                       R27 R16 K56 ["forwardRef"]
      222 MOVE                             R28 R26
      223 CALL                             R27 1 -1
      224 RETURN                           R27 -1
