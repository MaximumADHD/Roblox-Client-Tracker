PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationFixPopoverShadowSizing"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 RETURN                           R0 1

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
       50 GETTABLEKS                       R13 R13 K18 ["useRef"]
       52 LOADNIL                          R14
       53 CALL                             R13 1 1
       54 GETUPVAL                         R14 2
       55 GETTABLEKS                       R14 R14 K19 ["useState"]
       57 LOADNIL                          R15
       58 CALL                             R14 1 2
       59 GETUPVAL                         R16 2
       60 GETTABLEKS                       R16 R16 K19 ["useState"]
       62 LOADNIL                          R17
       63 CALL                             R16 1 2
       64 GETUPVAL                         R18 8
       65 MOVE                             R19 R16
       66 CALL                             R18 1 1
       67 GETUPVAL                         R19 2
       68 GETTABLEKS                       R19 R19 K20 ["useImperativeHandle"]
       70 MOVE                             R20 R1
       71 NEWCLOSURE                       R21 P0
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R13
       75 NEWTABLE                         R22 0 1
       77 GETUPVAL                         R24 9
       78 GETTABLEKS                       R24 R24 K21 ["FoundationFixPopoverShadowSizing"]
       80 JUMPIFNOT                        R24 ; [+2]
       81 MOVE                             R23 R14
       82 JUMP                             ; [+1]
       83 LOADNIL                          R23
       84 SETLIST                          R22 R23 1 [1]
       86 CALL                             R19 3 0
       87 GETUPVAL                         R19 10
       88 GETTABLEKS                       R20 R3 K22 ["isOpen"]
       90 GETTABLEKS                       R21 R3 K1 ["anchor"]
       92 GETUPVAL                         R23 9
       93 GETTABLEKS                       R23 R23 K21 ["FoundationFixPopoverShadowSizing"]
       95 JUMPIFNOT                        R23 ; [+2]
       96 MOVE                             R22 R14
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R22 R13 K23 ["current"]
      100 MOVE                             R23 R6
      101 GETTABLEKS                       R24 R2 K24 ["side"]
      103 GETTABLEKS                       R25 R2 K25 ["align"]
      105 JUMPIFNOT                        R5 ; [+2]
      106 MOVE                             R26 R11
      107 JUMP                             ; [+1]
      108 LOADN                            R26 0
      109 CALL                             R19 7 6
      110 GETUPVAL                         R25 2
      111 GETTABLEKS                       R25 R25 K18 ["useRef"]
      113 LOADNIL                          R26
      114 CALL                             R25 1 1
      115 GETUPVAL                         R26 2
      116 GETTABLEKS                       R26 R26 K26 ["useCallback"]
      118 NEWCLOSURE                       R27 P1
      119 CAPTURE                          VAL R25
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R18
      125 CAPTURE                          UPVAL U11
      126 NEWTABLE                         R28 0 2
      128 GETTABLEKS                       R29 R2 K27 ["onPressedOutside"]
      130 GETTABLEKS                       R30 R3 K1 ["anchor"]
      132 SETLIST                          R28 R29 2 [1]
      134 CALL                             R26 2 1
      135 GETUPVAL                         R27 2
      136 GETTABLEKS                       R27 R27 K28 ["useEffect"]
      138 NEWCLOSURE                       R28 P2
      139 CAPTURE                          VAL R25
      140 NEWTABLE                         R29 0 0
      142 CALL                             R27 2 0
      143 GETUPVAL                         R28 9
      144 GETTABLEKS                       R28 R28 K29 ["FoundationPopoverConditionalRender"]
      146 JUMPIFNOT                        R28 ; [+3]
      147 GETTABLEKS                       R27 R3 K22 ["isOpen"]
      149 JUMP                             ; [+1]
      150 LOADB                            R27 1
      151 JUMPIFNOT                        R27 ; [+287]
      152 GETUPVAL                         R28 2
      153 GETTABLEKS                       R28 R28 K30 ["createElement"]
      155 GETUPVAL                         R29 12
      156 DUPTABLE                         R30 K36 [{["ZIndex"], ["tag"] = "size-full", ["Visible"], ["testId"]}]
      157 GETTABLEKS                       R31 R8 K37 ["zIndex"]
      159 SETTABLEKS                       R31 R30 K31 ["ZIndex"]
      161 SETTABLEKS                       R20 R30 K34 ["Visible"]
      163 LOADK                            R32 K38 ["%*--container"]
      164 GETTABLEKS                       R34 R3 K35 ["testId"]
      166 NAMECALL                         R32 R32 K39 ["format"]
      168 CALL                             R32 2 1
      169 MOVE                             R31 R32
      170 SETTABLEKS                       R31 R30 K35 ["testId"]
      172 DUPTABLE                         R31 K44 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      173 GETTABLEKS                       R33 R2 K27 ["onPressedOutside"]
      175 JUMPIFNOT                        R33 ; [+36]
      176 GETTABLEKS                       R33 R3 K22 ["isOpen"]
      178 JUMPIFNOT                        R33 ; [+33]
      179 GETUPVAL                         R32 2
      180 GETTABLEKS                       R32 R32 K30 ["createElement"]
      182 GETUPVAL                         R33 12
      183 DUPTABLE                         R34 K49 [{["ZIndex"] = 1, ["stateLayer"], ["Size"], ["tag"] = "position-center-center anchor-center-center", ["ref"], ["testId"]}]
      184 DUPTABLE                         R35 K51 [{"affordance"}]
      185 GETUPVAL                         R36 13
      186 GETTABLEKS                       R36 R36 K52 ["None"]
      188 SETTABLEKS                       R36 R35 K50 ["affordance"]
      190 SETTABLEKS                       R35 R34 K46 ["stateLayer"]
      192 GETIMPORT                        R35 K55 [UDim2.fromScale]
      194 LOADN                            R36 2
      195 LOADN                            R37 2
      196 CALL                             R35 2 1
      197 SETTABLEKS                       R35 R34 K10 ["Size"]
      199 SETTABLEKS                       R26 R34 K48 ["ref"]
      201 LOADK                            R36 K56 ["%*--backdrop"]
      202 GETTABLEKS                       R38 R3 K35 ["testId"]
      204 NAMECALL                         R36 R36 K39 ["format"]
      206 CALL                             R36 2 1
      207 MOVE                             R35 R36
      208 SETTABLEKS                       R35 R34 K35 ["testId"]
      210 CALL                             R32 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R32
      213 SETTABLEKS                       R32 R31 K40 ["Backdrop"]
      215 GETUPVAL                         R32 2
      216 GETTABLEKS                       R32 R32 K30 ["createElement"]
      218 GETUPVAL                         R33 14
      219 DUPTABLE                         R34 K62 [{["AnchorPoint"], ["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"], ["testId"]}]
      220 GETUPVAL                         R36 9
      221 GETTABLEKS                       R36 R36 K63 ["FoundationPopoverOverflow"]
      223 JUMPIFNOT                        R36 ; [+2]
      224 MOVE                             R35 R24
      225 JUMP                             ; [+1]
      226 LOADNIL                          R35
      227 SETTABLEKS                       R35 R34 K57 ["AnchorPoint"]
      229 GETUPVAL                         R35 15
      230 SETTABLEKS                       R35 R34 K58 ["Image"]
      232 DUPCLOSURE                       R37 K64 [PROTO_5]
      233 CAPTURE                          UPVAL U16
      234 NAMECALL                         R35 R21 K65 ["map"]
      236 CALL                             R35 2 1
      237 SETTABLEKS                       R35 R34 K10 ["Size"]
      239 GETUPVAL                         R36 9
      240 GETTABLEKS                       R36 R36 K63 ["FoundationPopoverOverflow"]
      242 JUMPIFNOT                        R36 ; [+16]
      243 GETUPVAL                         R35 2
      244 GETTABLEKS                       R35 R35 K66 ["joinBindings"]
      246 NEWTABLE                         R36 0 2
      248 MOVE                             R37 R19
      249 MOVE                             R38 R24
      250 SETLIST                          R36 R37 2 [1]
      252 CALL                             R35 1 1
      253 DUPCLOSURE                       R37 K67 [PROTO_6]
      254 CAPTURE                          UPVAL U16
      255 NAMECALL                         R35 R35 K65 ["map"]
      257 CALL                             R35 2 1
      258 JUMP                             ; [+5]
      259 DUPCLOSURE                       R37 K68 [PROTO_7]
      260 CAPTURE                          UPVAL U16
      261 NAMECALL                         R35 R19 K65 ["map"]
      263 CALL                             R35 2 1
      264 SETTABLEKS                       R35 R34 K59 ["Position"]
      266 DUPTABLE                         R35 K70 [{"center"}]
      267 GETIMPORT                        R36 K73 [Rect.new]
      269 GETUPVAL                         R37 16
      270 GETUPVAL                         R38 16
      271 GETUPVAL                         R40 16
      272 ADDK                             R39 R40 K45 [1]
      273 GETUPVAL                         R41 16
      274 ADDK                             R40 R41 K45 [1]
      275 CALL                             R36 4 1
      276 SETTABLEKS                       R36 R35 K69 ["center"]
      278 SETTABLEKS                       R35 R34 K60 ["slice"]
      280 GETTABLEKS                       R35 R7 K15 ["Color"]
      282 GETTABLEKS                       R35 R35 K74 ["Extended"]
      284 GETTABLEKS                       R35 R35 K75 ["Black"]
      286 GETTABLEKS                       R35 R35 K76 ["Black_20"]
      288 SETTABLEKS                       R35 R34 K61 ["imageStyle"]
      290 LOADK                            R36 K77 ["%*--shadow"]
      291 GETTABLEKS                       R38 R3 K35 ["testId"]
      293 NAMECALL                         R36 R36 K39 ["format"]
      295 CALL                             R36 2 1
      296 MOVE                             R35 R36
      297 SETTABLEKS                       R35 R34 K35 ["testId"]
      299 CALL                             R32 2 1
      300 SETTABLEKS                       R32 R31 K41 ["Shadow"]
      302 JUMPIFNOT                        R5 ; [+31]
      303 GETUPVAL                         R32 2
      304 GETTABLEKS                       R32 R32 K30 ["createElement"]
      306 GETUPVAL                         R33 12
      307 DUPTABLE                         R34 K82 [{["Size"], ["Position"], ["Rotation"] = 45, ["ZIndex"] = 3, ["backgroundStyle"], ["tag"] = "anchor-center-center", ["testId"]}]
      308 GETIMPORT                        R35 K84 [UDim2.fromOffset]
      310 MOVE                             R36 R9
      311 MOVE                             R37 R9
      312 CALL                             R35 2 1
      313 SETTABLEKS                       R35 R34 K10 ["Size"]
      315 DUPCLOSURE                       R37 K85 [PROTO_8]
      316 NAMECALL                         R35 R22 K65 ["map"]
      318 CALL                             R35 2 1
      319 SETTABLEKS                       R35 R34 K59 ["Position"]
      321 SETTABLEKS                       R12 R34 K14 ["backgroundStyle"]
      323 LOADK                            R36 K86 ["%*--arrow"]
      324 GETTABLEKS                       R38 R3 K35 ["testId"]
      326 NAMECALL                         R36 R36 K39 ["format"]
      328 CALL                             R36 2 1
      329 MOVE                             R35 R36
      330 SETTABLEKS                       R35 R34 K35 ["testId"]
      332 CALL                             R32 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R32
      335 SETTABLEKS                       R32 R31 K42 ["Arrow"]
      337 GETUPVAL                         R32 2
      338 GETTABLEKS                       R32 R32 K30 ["createElement"]
      340 GETUPVAL                         R33 12
      341 DUPTABLE                         R34 K92 [{["AnchorPoint"], ["Position"], ["selection"], ["selectionGroup"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 4, ["onActivated"], ["backgroundStyle"], ["tag"], ["ref"], ["testId"]}]
      342 GETUPVAL                         R36 9
      343 GETTABLEKS                       R36 R36 K63 ["FoundationPopoverOverflow"]
      345 JUMPIFNOT                        R36 ; [+2]
      346 MOVE                             R35 R24
      347 JUMP                             ; [+1]
      348 LOADNIL                          R35
      349 SETTABLEKS                       R35 R34 K57 ["AnchorPoint"]
      351 DUPCLOSURE                       R37 K93 [PROTO_9]
      352 NAMECALL                         R35 R19 K65 ["map"]
      354 CALL                             R35 2 1
      355 SETTABLEKS                       R35 R34 K59 ["Position"]
      357 GETTABLEKS                       R35 R2 K87 ["selection"]
      359 SETTABLEKS                       R35 R34 K87 ["selection"]
      361 GETTABLEKS                       R35 R2 K88 ["selectionGroup"]
      363 SETTABLEKS                       R35 R34 K88 ["selectionGroup"]
      365 DUPTABLE                         R35 K95 [{"MaxSize"}]
      366 SETTABLEKS                       R23 R35 K94 ["MaxSize"]
      368 SETTABLEKS                       R35 R34 K89 ["sizeConstraint"]
      370 DUPTABLE                         R35 K51 [{"affordance"}]
      371 GETUPVAL                         R36 13
      372 GETTABLEKS                       R36 R36 K52 ["None"]
      374 SETTABLEKS                       R36 R35 K50 ["affordance"]
      376 SETTABLEKS                       R35 R34 K46 ["stateLayer"]
      378 GETTABLEKS                       R36 R2 K27 ["onPressedOutside"]
      380 JUMPIFNOT                        R36 ; [+2]
      381 DUPCLOSURE                       R35 K96 [PROTO_10]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R35
      384 SETTABLEKS                       R35 R34 K91 ["onActivated"]
      386 SETTABLEKS                       R12 R34 K14 ["backgroundStyle"]
      388 LOADK                            R36 K97 ["auto-xy %*"]
      389 GETUPVAL                         R39 17
      390 GETTABLEKS                       R40 R2 K98 ["radius"]
      392 GETTABLE                         R38 R39 R40
      393 NAMECALL                         R36 R36 K39 ["format"]
      395 CALL                             R36 2 1
      396 MOVE                             R35 R36
      397 SETTABLEKS                       R35 R34 K32 ["tag"]
      399 GETUPVAL                         R36 9
      400 GETTABLEKS                       R36 R36 K21 ["FoundationFixPopoverShadowSizing"]
      402 JUMPIFNOT                        R36 ; [+2]
      403 MOVE                             R35 R15
      404 JUMP                             ; [+1]
      405 MOVE                             R35 R13
      406 SETTABLEKS                       R35 R34 K48 ["ref"]
      408 LOADK                            R36 K99 ["%*--content"]
      409 GETTABLEKS                       R38 R3 K35 ["testId"]
      411 NAMECALL                         R36 R36 K39 ["format"]
      413 CALL                             R36 2 1
      414 MOVE                             R35 R36
      415 SETTABLEKS                       R35 R34 K35 ["testId"]
      417 GETUPVAL                         R36 9
      418 GETTABLEKS                       R36 R36 K100 ["FoundationElevationKeepSiblingZIndex"]
      420 JUMPIFNOT                        R36 ; [+11]
      421 GETUPVAL                         R35 2
      422 GETTABLEKS                       R35 R35 K30 ["createElement"]
      424 GETUPVAL                         R36 18
      425 DUPTABLE                         R37 K102 [{"owner"}]
      426 SETTABLEKS                       R8 R37 K101 ["owner"]
      428 GETTABLEKS                       R38 R2 K103 ["children"]
      430 CALL                             R35 3 1
      431 JUMP                             ; [+2]
      432 GETTABLEKS                       R35 R2 K103 ["children"]
      434 CALL                             R32 3 1
      435 SETTABLEKS                       R32 R31 K43 ["Content"]
      437 CALL                             R28 3 1
      438 JUMP                             ; [+1]
      439 LOADNIL                          R28
      440 JUMPIFNOTEQKNIL                  R6 ; [+2]
      442 RETURN                           R28 1
      443 GETUPVAL                         R29 19
      444 GETTABLEKS                       R29 R29 K104 ["createPortal"]
      446 MOVE                             R30 R28
      447 MOVE                             R31 R6
      448 CALL                             R29 2 -1
      449 RETURN                           R29 -1

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
      157 GETIMPORT                        R22 K6 [require]
      159 GETTABLEKS                       R23 R0 K15 ["Providers"]
      161 GETTABLEKS                       R23 R23 K32 ["Elevation"]
      163 GETTABLEKS                       R23 R23 K34 ["ElevationProvider"]
      165 CALL                             R22 1 1
      166 GETTABLEKS                       R22 R22 K35 ["ElevationOwnerScope"]
      168 DUPTABLE                         R23 K43 [{["side"], ["align"], ["hasArrow"] = True, ["selection"], ["selectionGroup"], ["radius"]}]
      169 GETTABLEKS                       R24 R14 K44 ["Bottom"]
      171 SETTABLEKS                       R24 R23 K36 ["side"]
      173 GETTABLEKS                       R24 R13 K45 ["Center"]
      175 SETTABLEKS                       R24 R23 K37 ["align"]
      177 GETTABLEKS                       R24 R2 K46 ["MODAL"]
      179 GETTABLEKS                       R24 R24 K47 ["DISABLE_SELECTION"]
      181 SETTABLEKS                       R24 R23 K40 ["selection"]
      183 GETTABLEKS                       R24 R2 K46 ["MODAL"]
      185 GETTABLEKS                       R24 R24 K48 ["TRAP_FOCUS"]
      187 SETTABLEKS                       R24 R23 K41 ["selectionGroup"]
      189 GETTABLEKS                       R24 R15 K49 ["Medium"]
      191 SETTABLEKS                       R24 R23 K42 ["radius"]
      193 NEWTABLE                         R24 4 0
      195 GETTABLEKS                       R25 R15 K50 ["Small"]
      197 LOADK                            R26 K51 ["radius-small"]
      198 SETTABLE                         R26 R24 R25
      199 GETTABLEKS                       R25 R15 K49 ["Medium"]
      201 LOADK                            R26 K52 ["radius-medium"]
      202 SETTABLE                         R26 R24 R25
      203 GETTABLEKS                       R25 R15 K53 ["Circle"]
      205 LOADK                            R26 K54 ["radius-circle"]
      206 SETTABLE                         R26 R24 R25
      207 GETTABLEKS                       R25 R2 K55 ["SHADOW_IMAGE"]
      209 GETTABLEKS                       R26 R2 K56 ["SHADOW_SIZE"]
      211 DUPCLOSURE                       R27 K57 [PROTO_11]
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R17
      232 GETTABLEKS                       R28 R16 K58 ["forwardRef"]
      234 MOVE                             R29 R27
      235 CALL                             R28 1 -1
      236 RETURN                           R28 -1
