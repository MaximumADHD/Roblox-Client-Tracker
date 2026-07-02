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
       39 DUPTABLE                         R10 K10 [{["relativeToOwner"] = True}]
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R9 R7 K11 ["Size"]
       43 GETTABLEKS                       R9 R9 K12 ["Size_200"]
       45 MULK                             R10 R9 K13 [1.4142135623731]
       46 DIVK                             R11 R10 K14 [2]
       47 GETTABLEKS                       R12 R2 K15 ["backgroundStyle"]
       49 JUMPIF                           R12 ; [+6]
       50 GETTABLEKS                       R12 R7 K16 ["Color"]
       52 GETTABLEKS                       R12 R12 K17 ["Surface"]
       54 GETTABLEKS                       R12 R12 K18 ["Surface_100"]
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K19 ["useRef"]
       59 LOADNIL                          R14
       60 CALL                             R13 1 1
       61 GETUPVAL                         R14 2
       62 GETTABLEKS                       R14 R14 K20 ["useState"]
       64 LOADNIL                          R15
       65 CALL                             R14 1 2
       66 GETUPVAL                         R16 9
       67 GETUPVAL                         R18 4
       68 GETTABLEKS                       R18 R18 K21 ["FoundationPopoverContentStateFix"]
       70 JUMPIFNOT                        R18 ; [+2]
       71 MOVE                             R17 R14
       72 JUMP                             ; [+5]
       73 JUMPIFNOT                        R4 ; [+3]
       74 GETTABLEKS                       R17 R3 K1 ["anchor"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R17
       78 CALL                             R16 1 1
       79 GETUPVAL                         R17 2
       80 GETTABLEKS                       R17 R17 K22 ["useImperativeHandle"]
       82 MOVE                             R18 R1
       83 NEWCLOSURE                       R19 P0
       84 CAPTURE                          VAL R13
       85 NEWTABLE                         R20 0 0
       87 CALL                             R17 3 0
       88 GETUPVAL                         R17 10
       89 GETTABLEKS                       R18 R3 K23 ["isOpen"]
       91 GETTABLEKS                       R19 R3 K1 ["anchor"]
       93 GETTABLEKS                       R20 R13 K24 ["current"]
       95 MOVE                             R21 R6
       96 GETTABLEKS                       R22 R2 K25 ["side"]
       98 GETTABLEKS                       R23 R2 K26 ["align"]
      100 JUMPIFNOT                        R5 ; [+2]
      101 MOVE                             R24 R11
      102 JUMP                             ; [+1]
      103 LOADN                            R24 0
      104 CALL                             R17 7 6
      105 GETUPVAL                         R23 2
      106 GETTABLEKS                       R23 R23 K19 ["useRef"]
      108 LOADNIL                          R24
      109 CALL                             R23 1 1
      110 GETUPVAL                         R24 2
      111 GETTABLEKS                       R24 R24 K27 ["useCallback"]
      113 NEWCLOSURE                       R25 P1
      114 CAPTURE                          VAL R23
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R16
      121 CAPTURE                          UPVAL U11
      122 NEWTABLE                         R26 0 2
      124 GETTABLEKS                       R27 R2 K28 ["onPressedOutside"]
      126 GETTABLEKS                       R28 R3 K1 ["anchor"]
      128 SETLIST                          R26 R27 2 [1]
      130 CALL                             R24 2 1
      131 GETUPVAL                         R25 2
      132 GETTABLEKS                       R25 R25 K29 ["useEffect"]
      134 NEWCLOSURE                       R26 P2
      135 CAPTURE                          VAL R23
      136 NEWTABLE                         R27 0 0
      138 CALL                             R25 2 0
      139 GETUPVAL                         R25 2
      140 GETTABLEKS                       R25 R25 K30 ["createElement"]
      142 GETUPVAL                         R27 4
      143 GETTABLEKS                       R27 R27 K31 ["FoundationPopoverRootZIndex"]
      145 JUMPIFNOT                        R27 ; [+2]
      146 GETUPVAL                         R26 12
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R26 2
      149 GETTABLEKS                       R26 R26 K32 ["Fragment"]
      151 GETUPVAL                         R28 4
      152 GETTABLEKS                       R28 R28 K31 ["FoundationPopoverRootZIndex"]
      154 JUMPIFNOT                        R28 ; [+23]
      155 DUPTABLE                         R27 K38 [{["ZIndex"], ["tag"] = "size-full", ["Visible"], ["testId"]}]
      156 GETUPVAL                         R29 4
      157 GETTABLEKS                       R29 R29 K39 ["FoundationElevationSystem"]
      159 JUMPIFNOT                        R29 ; [+3]
      160 GETTABLEKS                       R28 R8 K40 ["zIndex"]
      162 JUMP                             ; [+1]
      163 LOADN                            R28 4
      164 SETTABLEKS                       R28 R27 K33 ["ZIndex"]
      166 SETTABLEKS                       R18 R27 K36 ["Visible"]
      168 LOADK                            R29 K41 ["%*--container"]
      169 GETTABLEKS                       R31 R3 K37 ["testId"]
      171 NAMECALL                         R29 R29 K42 ["format"]
      173 CALL                             R29 2 1
      174 MOVE                             R28 R29
      175 SETTABLEKS                       R28 R27 K37 ["testId"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R27
      179 DUPTABLE                         R28 K47 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      180 GETTABLEKS                       R30 R2 K28 ["onPressedOutside"]
      182 JUMPIFNOT                        R30 ; [+55]
      183 GETTABLEKS                       R30 R3 K23 ["isOpen"]
      185 JUMPIFNOT                        R30 ; [+52]
      186 GETUPVAL                         R29 2
      187 GETTABLEKS                       R29 R29 K30 ["createElement"]
      189 GETUPVAL                         R30 12
      190 DUPTABLE                         R31 K51 [{["ZIndex"] = 1, ["stateLayer"], ["Size"], ["tag"], ["ref"], ["testId"]}]
      191 DUPTABLE                         R32 K53 [{"affordance"}]
      192 GETUPVAL                         R33 13
      193 GETTABLEKS                       R33 R33 K54 ["None"]
      195 SETTABLEKS                       R33 R32 K52 ["affordance"]
      197 SETTABLEKS                       R32 R31 K49 ["stateLayer"]
      199 GETUPVAL                         R33 4
      200 GETTABLEKS                       R33 R33 K55 ["FoundationPopoverOversizedBackdrop"]
      202 JUMPIFNOT                        R33 ; [+6]
      203 GETIMPORT                        R32 K58 [UDim2.fromScale]
      205 LOADN                            R33 2
      206 LOADN                            R34 2
      207 CALL                             R32 2 1
      208 JUMP                             ; [+5]
      209 GETIMPORT                        R32 K58 [UDim2.fromScale]
      211 LOADN                            R33 1
      212 LOADN                            R34 1
      213 CALL                             R32 2 1
      214 SETTABLEKS                       R32 R31 K11 ["Size"]
      216 GETUPVAL                         R33 4
      217 GETTABLEKS                       R33 R33 K55 ["FoundationPopoverOversizedBackdrop"]
      219 JUMPIFNOT                        R33 ; [+2]
      220 LOADK                            R32 K59 ["position-center-center anchor-center-center"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R32
      223 SETTABLEKS                       R32 R31 K34 ["tag"]
      225 SETTABLEKS                       R24 R31 K50 ["ref"]
      227 LOADK                            R33 K60 ["%*--backdrop"]
      228 GETTABLEKS                       R35 R3 K37 ["testId"]
      230 NAMECALL                         R33 R33 K42 ["format"]
      232 CALL                             R33 2 1
      233 MOVE                             R32 R33
      234 SETTABLEKS                       R32 R31 K37 ["testId"]
      236 CALL                             R29 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R29
      239 SETTABLEKS                       R29 R28 K43 ["Backdrop"]
      241 GETUPVAL                         R29 2
      242 GETTABLEKS                       R29 R29 K30 ["createElement"]
      244 GETUPVAL                         R30 14
      245 DUPTABLE                         R31 K66 [{["AnchorPoint"], ["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["Visible"], ["slice"], ["imageStyle"], ["testId"]}]
      246 GETUPVAL                         R33 4
      247 GETTABLEKS                       R33 R33 K67 ["FoundationPopoverOverflow"]
      249 JUMPIFNOT                        R33 ; [+2]
      250 MOVE                             R32 R22
      251 JUMP                             ; [+1]
      252 LOADNIL                          R32
      253 SETTABLEKS                       R32 R31 K61 ["AnchorPoint"]
      255 GETUPVAL                         R32 15
      256 SETTABLEKS                       R32 R31 K62 ["Image"]
      258 DUPCLOSURE                       R34 K68 [PROTO_5]
      259 CAPTURE                          UPVAL U16
      260 NAMECALL                         R32 R19 K69 ["map"]
      262 CALL                             R32 2 1
      263 SETTABLEKS                       R32 R31 K11 ["Size"]
      265 GETUPVAL                         R33 4
      266 GETTABLEKS                       R33 R33 K67 ["FoundationPopoverOverflow"]
      268 JUMPIFNOT                        R33 ; [+16]
      269 GETUPVAL                         R32 2
      270 GETTABLEKS                       R32 R32 K70 ["joinBindings"]
      272 NEWTABLE                         R33 0 2
      274 MOVE                             R34 R17
      275 MOVE                             R35 R22
      276 SETLIST                          R33 R34 2 [1]
      278 CALL                             R32 1 1
      279 DUPCLOSURE                       R34 K71 [PROTO_6]
      280 CAPTURE                          UPVAL U16
      281 NAMECALL                         R32 R32 K69 ["map"]
      283 CALL                             R32 2 1
      284 JUMP                             ; [+5]
      285 DUPCLOSURE                       R34 K72 [PROTO_7]
      286 CAPTURE                          UPVAL U16
      287 NAMECALL                         R32 R17 K69 ["map"]
      289 CALL                             R32 2 1
      290 SETTABLEKS                       R32 R31 K63 ["Position"]
      292 GETUPVAL                         R33 4
      293 GETTABLEKS                       R33 R33 K31 ["FoundationPopoverRootZIndex"]
      295 JUMPIFNOT                        R33 ; [+2]
      296 LOADNIL                          R32
      297 JUMP                             ; [+1]
      298 MOVE                             R32 R18
      299 SETTABLEKS                       R32 R31 K36 ["Visible"]
      301 DUPTABLE                         R32 K74 [{"center"}]
      302 GETIMPORT                        R33 K77 [Rect.new]
      304 GETUPVAL                         R34 16
      305 GETUPVAL                         R35 16
      306 GETUPVAL                         R37 16
      307 ADDK                             R36 R37 K48 [1]
      308 GETUPVAL                         R38 16
      309 ADDK                             R37 R38 K48 [1]
      310 CALL                             R33 4 1
      311 SETTABLEKS                       R33 R32 K73 ["center"]
      313 SETTABLEKS                       R32 R31 K64 ["slice"]
      315 GETTABLEKS                       R32 R7 K16 ["Color"]
      317 GETTABLEKS                       R32 R32 K78 ["Extended"]
      319 GETTABLEKS                       R32 R32 K79 ["Black"]
      321 GETTABLEKS                       R32 R32 K80 ["Black_20"]
      323 SETTABLEKS                       R32 R31 K65 ["imageStyle"]
      325 LOADK                            R33 K81 ["%*--shadow"]
      326 GETTABLEKS                       R35 R3 K37 ["testId"]
      328 NAMECALL                         R33 R33 K42 ["format"]
      330 CALL                             R33 2 1
      331 MOVE                             R32 R33
      332 SETTABLEKS                       R32 R31 K37 ["testId"]
      334 CALL                             R29 2 1
      335 SETTABLEKS                       R29 R28 K44 ["Shadow"]
      337 JUMPIFNOT                        R5 ; [+40]
      338 GETUPVAL                         R29 2
      339 GETTABLEKS                       R29 R29 K30 ["createElement"]
      341 GETUPVAL                         R30 12
      342 DUPTABLE                         R31 K86 [{["Size"], ["Position"], ["Rotation"] = 45, ["ZIndex"] = 3, ["Visible"], ["backgroundStyle"], ["tag"] = "anchor-center-center", ["testId"]}]
      343 GETIMPORT                        R32 K88 [UDim2.fromOffset]
      345 MOVE                             R33 R9
      346 MOVE                             R34 R9
      347 CALL                             R32 2 1
      348 SETTABLEKS                       R32 R31 K11 ["Size"]
      350 DUPCLOSURE                       R34 K89 [PROTO_8]
      351 NAMECALL                         R32 R20 K69 ["map"]
      353 CALL                             R32 2 1
      354 SETTABLEKS                       R32 R31 K63 ["Position"]
      356 GETUPVAL                         R33 4
      357 GETTABLEKS                       R33 R33 K31 ["FoundationPopoverRootZIndex"]
      359 JUMPIFNOT                        R33 ; [+2]
      360 LOADNIL                          R32
      361 JUMP                             ; [+1]
      362 MOVE                             R32 R18
      363 SETTABLEKS                       R32 R31 K36 ["Visible"]
      365 SETTABLEKS                       R12 R31 K15 ["backgroundStyle"]
      367 LOADK                            R33 K90 ["%*--arrow"]
      368 GETTABLEKS                       R35 R3 K37 ["testId"]
      370 NAMECALL                         R33 R33 K42 ["format"]
      372 CALL                             R33 2 1
      373 MOVE                             R32 R33
      374 SETTABLEKS                       R32 R31 K37 ["testId"]
      376 CALL                             R29 2 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R29
      379 SETTABLEKS                       R29 R28 K45 ["Arrow"]
      381 GETUPVAL                         R29 2
      382 GETTABLEKS                       R29 R29 K30 ["createElement"]
      384 GETUPVAL                         R30 12
      385 DUPTABLE                         R31 K96 [{["AnchorPoint"], ["Position"], ["Visible"], ["selection"], ["selectionGroup"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 4, ["onActivated"], ["backgroundStyle"], ["tag"], ["ref"], ["testId"]}]
      386 GETUPVAL                         R33 4
      387 GETTABLEKS                       R33 R33 K67 ["FoundationPopoverOverflow"]
      389 JUMPIFNOT                        R33 ; [+2]
      390 MOVE                             R32 R22
      391 JUMP                             ; [+1]
      392 LOADNIL                          R32
      393 SETTABLEKS                       R32 R31 K61 ["AnchorPoint"]
      395 DUPCLOSURE                       R34 K97 [PROTO_9]
      396 NAMECALL                         R32 R17 K69 ["map"]
      398 CALL                             R32 2 1
      399 SETTABLEKS                       R32 R31 K63 ["Position"]
      401 GETUPVAL                         R33 4
      402 GETTABLEKS                       R33 R33 K31 ["FoundationPopoverRootZIndex"]
      404 JUMPIFNOT                        R33 ; [+2]
      405 LOADNIL                          R32
      406 JUMP                             ; [+1]
      407 MOVE                             R32 R18
      408 SETTABLEKS                       R32 R31 K36 ["Visible"]
      410 GETTABLEKS                       R32 R2 K91 ["selection"]
      412 SETTABLEKS                       R32 R31 K91 ["selection"]
      414 GETUPVAL                         R33 4
      415 GETTABLEKS                       R33 R33 K98 ["FoundationPopoverFocusTrap"]
      417 JUMPIFNOT                        R33 ; [+3]
      418 GETTABLEKS                       R32 R2 K92 ["selectionGroup"]
      420 JUMP                             ; [+1]
      421 LOADNIL                          R32
      422 SETTABLEKS                       R32 R31 K92 ["selectionGroup"]
      424 DUPTABLE                         R32 K100 [{"MaxSize"}]
      425 SETTABLEKS                       R21 R32 K99 ["MaxSize"]
      427 SETTABLEKS                       R32 R31 K93 ["sizeConstraint"]
      429 DUPTABLE                         R32 K53 [{"affordance"}]
      430 GETUPVAL                         R33 13
      431 GETTABLEKS                       R33 R33 K54 ["None"]
      433 SETTABLEKS                       R33 R32 K52 ["affordance"]
      435 SETTABLEKS                       R32 R31 K49 ["stateLayer"]
      437 GETTABLEKS                       R33 R2 K28 ["onPressedOutside"]
      439 JUMPIFNOT                        R33 ; [+2]
      440 DUPCLOSURE                       R32 K101 [PROTO_10]
      441 JUMP                             ; [+1]
      442 LOADNIL                          R32
      443 SETTABLEKS                       R32 R31 K95 ["onActivated"]
      445 SETTABLEKS                       R12 R31 K15 ["backgroundStyle"]
      447 LOADK                            R33 K102 ["auto-xy %*"]
      448 GETUPVAL                         R36 17
      449 GETTABLEKS                       R37 R2 K103 ["radius"]
      451 GETTABLE                         R35 R36 R37
      452 NAMECALL                         R33 R33 K42 ["format"]
      454 CALL                             R33 2 1
      455 MOVE                             R32 R33
      456 SETTABLEKS                       R32 R31 K34 ["tag"]
      458 SETTABLEKS                       R13 R31 K50 ["ref"]
      460 LOADK                            R33 K104 ["%*--content"]
      461 GETTABLEKS                       R35 R3 K37 ["testId"]
      463 NAMECALL                         R33 R33 K42 ["format"]
      465 CALL                             R33 2 1
      466 MOVE                             R32 R33
      467 SETTABLEKS                       R32 R31 K37 ["testId"]
      469 GETTABLEKS                       R32 R2 K105 ["children"]
      471 CALL                             R29 3 1
      472 SETTABLEKS                       R29 R28 K46 ["Content"]
      474 CALL                             R25 3 1
      475 JUMPIFNOTEQKNIL                  R6 ; [+2]
      477 RETURN                           R25 1
      478 GETUPVAL                         R26 18
      479 GETTABLEKS                       R26 R26 K106 ["createPortal"]
      481 MOVE                             R27 R25
      482 MOVE                             R28 R6
      483 CALL                             R26 2 -1
      484 RETURN                           R26 -1

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
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R10
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
