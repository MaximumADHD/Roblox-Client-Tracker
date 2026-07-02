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
      124 GETUPVAL                         R27 11
      125 GETTABLEKS                       R27 R27 K29 ["FoundationPopoverRootZIndex"]
      127 JUMPIFNOT                        R27 ; [+2]
      128 GETUPVAL                         R26 12
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R26 2
      131 GETTABLEKS                       R26 R26 K30 ["Fragment"]
      133 GETUPVAL                         R28 11
      134 GETTABLEKS                       R28 R28 K29 ["FoundationPopoverRootZIndex"]
      136 JUMPIFNOT                        R28 ; [+23]
      137 DUPTABLE                         R27 K36 [{["ZIndex"], ["tag"] = "size-full", ["Visible"], ["testId"]}]
      138 GETUPVAL                         R29 11
      139 GETTABLEKS                       R29 R29 K37 ["FoundationElevationSystem"]
      141 JUMPIFNOT                        R29 ; [+3]
      142 GETTABLEKS                       R28 R8 K38 ["zIndex"]
      144 JUMP                             ; [+1]
      145 LOADN                            R28 4
      146 SETTABLEKS                       R28 R27 K31 ["ZIndex"]
      148 SETTABLEKS                       R18 R27 K34 ["Visible"]
      150 LOADK                            R29 K39 ["%*--container"]
      151 GETTABLEKS                       R31 R3 K35 ["testId"]
      153 NAMECALL                         R29 R29 K40 ["format"]
      155 CALL                             R29 2 1
      156 MOVE                             R28 R29
      157 SETTABLEKS                       R28 R27 K35 ["testId"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R27
      161 DUPTABLE                         R28 K45 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      162 GETTABLEKS                       R30 R2 K26 ["onPressedOutside"]
      164 JUMPIFNOT                        R30 ; [+55]
      165 GETTABLEKS                       R30 R3 K21 ["isOpen"]
      167 JUMPIFNOT                        R30 ; [+52]
      168 GETUPVAL                         R29 2
      169 GETTABLEKS                       R29 R29 K28 ["createElement"]
      171 GETUPVAL                         R30 12
      172 DUPTABLE                         R31 K49 [{["ZIndex"] = 1, ["stateLayer"], ["Size"], ["tag"], ["ref"], ["testId"]}]
      173 DUPTABLE                         R32 K51 [{"affordance"}]
      174 GETUPVAL                         R33 13
      175 GETTABLEKS                       R33 R33 K52 ["None"]
      177 SETTABLEKS                       R33 R32 K50 ["affordance"]
      179 SETTABLEKS                       R32 R31 K47 ["stateLayer"]
      181 GETUPVAL                         R33 11
      182 GETTABLEKS                       R33 R33 K53 ["FoundationPopoverOversizedBackdrop"]
      184 JUMPIFNOT                        R33 ; [+6]
      185 GETIMPORT                        R32 K56 [UDim2.fromScale]
      187 LOADN                            R33 2
      188 LOADN                            R34 2
      189 CALL                             R32 2 1
      190 JUMP                             ; [+5]
      191 GETIMPORT                        R32 K56 [UDim2.fromScale]
      193 LOADN                            R33 1
      194 LOADN                            R34 1
      195 CALL                             R32 2 1
      196 SETTABLEKS                       R32 R31 K10 ["Size"]
      198 GETUPVAL                         R33 11
      199 GETTABLEKS                       R33 R33 K53 ["FoundationPopoverOversizedBackdrop"]
      201 JUMPIFNOT                        R33 ; [+2]
      202 LOADK                            R32 K57 ["position-center-center anchor-center-center"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R32
      205 SETTABLEKS                       R32 R31 K32 ["tag"]
      207 SETTABLEKS                       R24 R31 K48 ["ref"]
      209 LOADK                            R33 K58 ["%*--backdrop"]
      210 GETTABLEKS                       R35 R3 K35 ["testId"]
      212 NAMECALL                         R33 R33 K40 ["format"]
      214 CALL                             R33 2 1
      215 MOVE                             R32 R33
      216 SETTABLEKS                       R32 R31 K35 ["testId"]
      218 CALL                             R29 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R29
      221 SETTABLEKS                       R29 R28 K41 ["Backdrop"]
      223 GETUPVAL                         R29 2
      224 GETTABLEKS                       R29 R29 K28 ["createElement"]
      226 GETUPVAL                         R30 14
      227 DUPTABLE                         R31 K64 [{["AnchorPoint"], ["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["Visible"], ["slice"], ["imageStyle"], ["testId"]}]
      228 GETUPVAL                         R33 11
      229 GETTABLEKS                       R33 R33 K65 ["FoundationPopoverOverflow"]
      231 JUMPIFNOT                        R33 ; [+2]
      232 MOVE                             R32 R22
      233 JUMP                             ; [+1]
      234 LOADNIL                          R32
      235 SETTABLEKS                       R32 R31 K59 ["AnchorPoint"]
      237 GETUPVAL                         R32 15
      238 SETTABLEKS                       R32 R31 K60 ["Image"]
      240 DUPCLOSURE                       R34 K66 [PROTO_5]
      241 CAPTURE                          UPVAL U16
      242 NAMECALL                         R32 R19 K67 ["map"]
      244 CALL                             R32 2 1
      245 SETTABLEKS                       R32 R31 K10 ["Size"]
      247 GETUPVAL                         R33 11
      248 GETTABLEKS                       R33 R33 K65 ["FoundationPopoverOverflow"]
      250 JUMPIFNOT                        R33 ; [+16]
      251 GETUPVAL                         R32 2
      252 GETTABLEKS                       R32 R32 K68 ["joinBindings"]
      254 NEWTABLE                         R33 0 2
      256 MOVE                             R34 R17
      257 MOVE                             R35 R22
      258 SETLIST                          R33 R34 2 [1]
      260 CALL                             R32 1 1
      261 DUPCLOSURE                       R34 K69 [PROTO_6]
      262 CAPTURE                          UPVAL U16
      263 NAMECALL                         R32 R32 K67 ["map"]
      265 CALL                             R32 2 1
      266 JUMP                             ; [+5]
      267 DUPCLOSURE                       R34 K70 [PROTO_7]
      268 CAPTURE                          UPVAL U16
      269 NAMECALL                         R32 R17 K67 ["map"]
      271 CALL                             R32 2 1
      272 SETTABLEKS                       R32 R31 K61 ["Position"]
      274 GETUPVAL                         R33 11
      275 GETTABLEKS                       R33 R33 K29 ["FoundationPopoverRootZIndex"]
      277 JUMPIFNOT                        R33 ; [+2]
      278 LOADNIL                          R32
      279 JUMP                             ; [+1]
      280 MOVE                             R32 R18
      281 SETTABLEKS                       R32 R31 K34 ["Visible"]
      283 DUPTABLE                         R32 K72 [{"center"}]
      284 GETIMPORT                        R33 K75 [Rect.new]
      286 GETUPVAL                         R34 16
      287 GETUPVAL                         R35 16
      288 GETUPVAL                         R37 16
      289 ADDK                             R36 R37 K46 [1]
      290 GETUPVAL                         R38 16
      291 ADDK                             R37 R38 K46 [1]
      292 CALL                             R33 4 1
      293 SETTABLEKS                       R33 R32 K71 ["center"]
      295 SETTABLEKS                       R32 R31 K62 ["slice"]
      297 GETTABLEKS                       R32 R7 K15 ["Color"]
      299 GETTABLEKS                       R32 R32 K76 ["Extended"]
      301 GETTABLEKS                       R32 R32 K77 ["Black"]
      303 GETTABLEKS                       R32 R32 K78 ["Black_20"]
      305 SETTABLEKS                       R32 R31 K63 ["imageStyle"]
      307 LOADK                            R33 K79 ["%*--shadow"]
      308 GETTABLEKS                       R35 R3 K35 ["testId"]
      310 NAMECALL                         R33 R33 K40 ["format"]
      312 CALL                             R33 2 1
      313 MOVE                             R32 R33
      314 SETTABLEKS                       R32 R31 K35 ["testId"]
      316 CALL                             R29 2 1
      317 SETTABLEKS                       R29 R28 K42 ["Shadow"]
      319 JUMPIFNOT                        R5 ; [+40]
      320 GETUPVAL                         R29 2
      321 GETTABLEKS                       R29 R29 K28 ["createElement"]
      323 GETUPVAL                         R30 12
      324 DUPTABLE                         R31 K84 [{["Size"], ["Position"], ["Rotation"] = 45, ["ZIndex"] = 3, ["Visible"], ["backgroundStyle"], ["tag"] = "anchor-center-center", ["testId"]}]
      325 GETIMPORT                        R32 K86 [UDim2.fromOffset]
      327 MOVE                             R33 R9
      328 MOVE                             R34 R9
      329 CALL                             R32 2 1
      330 SETTABLEKS                       R32 R31 K10 ["Size"]
      332 DUPCLOSURE                       R34 K87 [PROTO_8]
      333 NAMECALL                         R32 R20 K67 ["map"]
      335 CALL                             R32 2 1
      336 SETTABLEKS                       R32 R31 K61 ["Position"]
      338 GETUPVAL                         R33 11
      339 GETTABLEKS                       R33 R33 K29 ["FoundationPopoverRootZIndex"]
      341 JUMPIFNOT                        R33 ; [+2]
      342 LOADNIL                          R32
      343 JUMP                             ; [+1]
      344 MOVE                             R32 R18
      345 SETTABLEKS                       R32 R31 K34 ["Visible"]
      347 SETTABLEKS                       R12 R31 K14 ["backgroundStyle"]
      349 LOADK                            R33 K88 ["%*--arrow"]
      350 GETTABLEKS                       R35 R3 K35 ["testId"]
      352 NAMECALL                         R33 R33 K40 ["format"]
      354 CALL                             R33 2 1
      355 MOVE                             R32 R33
      356 SETTABLEKS                       R32 R31 K35 ["testId"]
      358 CALL                             R29 2 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R29
      361 SETTABLEKS                       R29 R28 K43 ["Arrow"]
      363 GETUPVAL                         R29 2
      364 GETTABLEKS                       R29 R29 K28 ["createElement"]
      366 GETUPVAL                         R30 12
      367 DUPTABLE                         R31 K94 [{["AnchorPoint"], ["Position"], ["Visible"], ["selection"], ["selectionGroup"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 4, ["onActivated"], ["backgroundStyle"], ["tag"], ["ref"], ["testId"]}]
      368 GETUPVAL                         R33 11
      369 GETTABLEKS                       R33 R33 K65 ["FoundationPopoverOverflow"]
      371 JUMPIFNOT                        R33 ; [+2]
      372 MOVE                             R32 R22
      373 JUMP                             ; [+1]
      374 LOADNIL                          R32
      375 SETTABLEKS                       R32 R31 K59 ["AnchorPoint"]
      377 DUPCLOSURE                       R34 K95 [PROTO_9]
      378 NAMECALL                         R32 R17 K67 ["map"]
      380 CALL                             R32 2 1
      381 SETTABLEKS                       R32 R31 K61 ["Position"]
      383 GETUPVAL                         R33 11
      384 GETTABLEKS                       R33 R33 K29 ["FoundationPopoverRootZIndex"]
      386 JUMPIFNOT                        R33 ; [+2]
      387 LOADNIL                          R32
      388 JUMP                             ; [+1]
      389 MOVE                             R32 R18
      390 SETTABLEKS                       R32 R31 K34 ["Visible"]
      392 GETTABLEKS                       R32 R2 K89 ["selection"]
      394 SETTABLEKS                       R32 R31 K89 ["selection"]
      396 GETUPVAL                         R33 11
      397 GETTABLEKS                       R33 R33 K96 ["FoundationPopoverFocusTrap"]
      399 JUMPIFNOT                        R33 ; [+3]
      400 GETTABLEKS                       R32 R2 K90 ["selectionGroup"]
      402 JUMP                             ; [+1]
      403 LOADNIL                          R32
      404 SETTABLEKS                       R32 R31 K90 ["selectionGroup"]
      406 DUPTABLE                         R32 K98 [{"MaxSize"}]
      407 SETTABLEKS                       R21 R32 K97 ["MaxSize"]
      409 SETTABLEKS                       R32 R31 K91 ["sizeConstraint"]
      411 DUPTABLE                         R32 K51 [{"affordance"}]
      412 GETUPVAL                         R33 13
      413 GETTABLEKS                       R33 R33 K52 ["None"]
      415 SETTABLEKS                       R33 R32 K50 ["affordance"]
      417 SETTABLEKS                       R32 R31 K47 ["stateLayer"]
      419 GETTABLEKS                       R33 R2 K26 ["onPressedOutside"]
      421 JUMPIFNOT                        R33 ; [+2]
      422 DUPCLOSURE                       R32 K99 [PROTO_10]
      423 JUMP                             ; [+1]
      424 LOADNIL                          R32
      425 SETTABLEKS                       R32 R31 K93 ["onActivated"]
      427 SETTABLEKS                       R12 R31 K14 ["backgroundStyle"]
      429 LOADK                            R33 K100 ["auto-xy %*"]
      430 GETUPVAL                         R36 17
      431 GETTABLEKS                       R37 R2 K101 ["radius"]
      433 GETTABLE                         R35 R36 R37
      434 NAMECALL                         R33 R33 K40 ["format"]
      436 CALL                             R33 2 1
      437 MOVE                             R32 R33
      438 SETTABLEKS                       R32 R31 K32 ["tag"]
      440 SETTABLEKS                       R13 R31 K48 ["ref"]
      442 LOADK                            R33 K102 ["%*--content"]
      443 GETTABLEKS                       R35 R3 K35 ["testId"]
      445 NAMECALL                         R33 R33 K40 ["format"]
      447 CALL                             R33 2 1
      448 MOVE                             R32 R33
      449 SETTABLEKS                       R32 R31 K35 ["testId"]
      451 GETTABLEKS                       R32 R2 K103 ["children"]
      453 CALL                             R29 3 1
      454 SETTABLEKS                       R29 R28 K44 ["Content"]
      456 CALL                             R25 3 1
      457 JUMPIFNOTEQKNIL                  R6 ; [+2]
      459 RETURN                           R25 1
      460 GETUPVAL                         R26 18
      461 GETTABLEKS                       R26 R26 K104 ["createPortal"]
      463 MOVE                             R27 R25
      464 MOVE                             R28 R6
      465 CALL                             R26 2 -1
      466 RETURN                           R26 -1

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
      157 DUPTABLE                         R22 K41 [{["side"], ["align"], ["hasArrow"] = True, ["selection"], ["selectionGroup"], ["radius"]}]
      158 GETTABLEKS                       R23 R13 K42 ["Bottom"]
      160 SETTABLEKS                       R23 R22 K34 ["side"]
      162 GETTABLEKS                       R23 R14 K43 ["Center"]
      164 SETTABLEKS                       R23 R22 K35 ["align"]
      166 GETTABLEKS                       R23 R11 K44 ["MODAL"]
      168 GETTABLEKS                       R23 R23 K45 ["DISABLE_SELECTION"]
      170 SETTABLEKS                       R23 R22 K38 ["selection"]
      172 GETTABLEKS                       R23 R11 K44 ["MODAL"]
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
      196 GETTABLEKS                       R24 R11 K53 ["SHADOW_IMAGE"]
      198 GETTABLEKS                       R25 R11 K54 ["SHADOW_SIZE"]
      200 DUPCLOSURE                       R26 K55 [PROTO_11]
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R20
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R18
      220 GETTABLEKS                       R27 R17 K56 ["forwardRef"]
      222 MOVE                             R28 R26
      223 CALL                             R27 1 -1
      224 RETURN                           R27 -1
