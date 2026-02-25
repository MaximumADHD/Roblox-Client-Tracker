PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ease"]
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K3 [{"easingStyle", "duration"}]
        6 GETUPVAL                         R6 3
        7 GETTABLEKS                       R5 R6 K4 ["Ease"]
        9 GETTABLEKS                       R4 R5 K5 ["StandardOut"]
       11 SETTABLEKS                       R4 R3 K1 ["easingStyle"]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K6 ["Time"]
       16 GETTABLEKS                       R4 R5 K7 ["Time_300"]
       18 SETTABLEKS                       R4 R3 K2 ["duration"]
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 4
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K0 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K8 [{"duration"}]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R5 R6 K6 ["Time"]
       31 GETTABLEKS                       R4 R5 K9 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K2 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["ease"]
        9 GETUPVAL                         R2 3
       10 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R5 R6 K5 ["Ease"]
       14 GETTABLEKS                       R4 R5 K6 ["StandardIn"]
       16 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R5 R6 K7 ["Time"]
       21 GETTABLEKS                       R4 R5 K8 ["Time_100"]
       23 SETTABLEKS                       R4 R3 K3 ["duration"]
       25 CALL                             R1 2 -1
       26 CALL                             R0 -1 0
       27 GETUPVAL                         R0 5
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R1 R2 K1 ["ease"]
       31 LOADN                            R2 1
       32 DUPTABLE                         R3 K9 [{"duration"}]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R5 R6 K7 ["Time"]
       36 GETTABLEKS                       R4 R5 K8 ["Time_100"]
       38 SETTABLEKS                       R4 R3 K3 ["duration"]
       40 CALL                             R1 2 -1
       41 CALL                             R0 -1 0
       42 GETUPVAL                         R0 0
       43 LOADB                            R1 1
       44 SETTABLEKS                       R1 R0 K0 ["current"]
       46 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 GETUPVAL                         R4 0
        4 JUMPIFNOT                        R4 ; [+2]
        5 MINUS                            R3 R0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R5 1
        8 ADD                              R4 R0 R5
        9 MINUS                            R3 R4
       10 LOADN                            R4 0
       11 GETUPVAL                         R6 0
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADN                            R5 0
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R5 1
       16 CALL                             R1 4 -1
       17 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R0 K16 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "testId"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K17 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["sheetHeightAvailable"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K17 ["noop"]
       21 SETTABLEKS                       R1 R0 K5 ["setSheetHeightAvailable"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["safeAreaPadding"]
       26 LOADN                            R1 0
       27 SETTABLEKS                       R1 R0 K7 ["bottomPadding"]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K8 ["innerScrollingEnabled"]
       32 GETUPVAL                         R1 3
       33 SETTABLEKS                       R1 R0 K9 ["innerScrollY"]
       35 GETUPVAL                         R1 4
       36 SETTABLEKS                       R1 R0 K10 ["setInnerScrollY"]
       38 GETUPVAL                         R1 5
       39 SETTABLEKS                       R1 R0 K11 ["hasHeader"]
       41 GETUPVAL                         R1 6
       42 SETTABLEKS                       R1 R0 K12 ["setHasHeader"]
       44 GETUPVAL                         R1 7
       45 SETTABLEKS                       R1 R0 K13 ["closeSheet"]
       47 GETUPVAL                         R2 8
       48 GETTABLEKS                       R1 R2 K18 ["Side"]
       50 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       52 GETUPVAL                         R2 9
       53 GETTABLEKS                       R1 R2 K15 ["testId"]
       55 SETTABLEKS                       R1 R0 K15 ["testId"]
       57 RETURN                           R0 1

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 GETUPVAL                         R4 0
        3 MINUS                            R3 R4
        4 GETUPVAL                         R5 0
        5 MINUS                            R4 R5
        6 CALL                             R2 2 1
        7 ADD                              R1 R0 R2
        8 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K3 ["Color"]
        4 GETTABLEKS                       R4 R5 K4 ["Common"]
        6 GETTABLEKS                       R3 R4 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R3 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["Color"]
       15 GETTABLEKS                       R5 R6 K4 ["Common"]
       17 GETTABLEKS                       R4 R5 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R4 K1 ["Transparency"]
       21 LOADN                            R4 1
       22 FASTCALL3                        MATH_LERP R3 R4 R0
       24 MOVE                             R5 R0
       25 GETIMPORT                        R2 K8 [math.lerp]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       30 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R6 4
        9 MOVE                             R7 R3
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R5 R6 K0 ["right"]
       13 GETTABLEKS                       R7 R2 K1 ["displaySize"]
       15 GETIMPORT                        R8 K5 [Enum.DisplaySize.Small]
       17 JUMPIFEQ                         R7 R8 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 GETUPVAL                         R7 5
       22 JUMPIFNOT                        R6 ; [+2]
       23 LOADN                            R8 144
       24 JUMP                             ; [+1]
       25 LOADN                            R8 104
       26 CALL                             R7 1 1
       27 GETTABLEKS                       R9 R4 K6 ["Padding"]
       29 GETTABLEKS                       R8 R9 K7 ["Medium"]
       31 GETUPVAL                         R10 6
       32 GETTABLEKS                       R9 R10 K8 ["useRef"]
       34 LOADB                            R10 0
       35 CALL                             R9 1 1
       36 GETUPVAL                         R10 7
       37 LOADN                            R11 1
       38 NEWCLOSURE                       R12 P0
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R2
       41 CALL                             R10 2 2
       42 JUMPIFNOT                        R6 ; [+2]
       43 LOADN                            R14 0
       44 JUMP                             ; [+1]
       45 MOVE                             R14 R8
       46 ADD                              R13 R5 R14
       47 MINUS                            R12 R13
       48 GETUPVAL                         R13 7
       49 MOVE                             R14 R12
       50 CALL                             R13 1 2
       51 GETUPVAL                         R16 6
       52 GETTABLEKS                       R15 R16 K9 ["useBinding"]
       54 LOADB                            R16 0
       55 CALL                             R15 1 2
       56 GETUPVAL                         R18 6
       57 GETTABLEKS                       R17 R18 K9 ["useBinding"]
       59 LOADB                            R18 0
       60 CALL                             R17 1 2
       61 GETUPVAL                         R20 6
       62 GETTABLEKS                       R19 R20 K9 ["useBinding"]
       64 LOADN                            R20 0
       65 CALL                             R19 1 2
       66 GETUPVAL                         R22 6
       67 GETTABLEKS                       R21 R22 K10 ["useEffect"]
       69 NEWCLOSURE                       R22 P1
       70 CAPTURE                          VAL R14
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R11
       75 NEWTABLE                         R23 0 1
       77 MOVE                             R24 R7
       78 SETLIST                          R23 R24 1 [1]
       80 CALL                             R21 2 0
       81 GETUPVAL                         R22 6
       82 GETTABLEKS                       R21 R22 K11 ["useCallback"]
       84 NEWCLOSURE                       R22 P2
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R14
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R11
       91 NEWTABLE                         R23 0 1
       93 MOVE                             R24 R12
       94 SETLIST                          R23 R24 1 [1]
       96 CALL                             R21 2 1
       97 GETUPVAL                         R23 6
       98 GETTABLEKS                       R22 R23 K12 ["useImperativeHandle"]
      100 GETTABLEKS                       R23 R2 K13 ["sheetRef"]
      102 NEWCLOSURE                       R24 P3
      103 CAPTURE                          VAL R21
      104 NEWTABLE                         R25 0 0
      106 CALL                             R22 3 0
      107 GETIMPORT                        R22 K16 [UDim2.new]
      109 LOADN                            R23 0
      110 JUMPIFNOT                        R6 ; [+2]
      111 MOVE                             R25 R5
      112 JUMP                             ; [+1]
      113 LOADN                            R25 0
      114 ADD                              R24 R7 R25
      115 LOADN                            R25 1
      116 JUMPIFNOT                        R6 ; [+2]
      117 LOADN                            R26 0
      118 JUMP                             ; [+2]
      119 MINUS                            R27 R8
      120 MULK                             R26 R27 K17 [2]
      121 CALL                             R22 4 1
      122 NEWCLOSURE                       R25 P4
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R8
      125 NAMECALL                         R23 R13 K18 ["map"]
      127 CALL                             R23 2 1
      128 GETUPVAL                         R25 6
      129 GETTABLEKS                       R24 R25 K19 ["useMemo"]
      131 NEWCLOSURE                       R25 P5
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R19
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R21
      140 CAPTURE                          UPVAL U10
      141 CAPTURE                          VAL R2
      142 NEWTABLE                         R26 0 2
      144 GETTABLEKS                       R27 R2 K20 ["testId"]
      146 MOVE                             R28 R21
      147 SETLIST                          R26 R27 2 [1]
      149 CALL                             R24 2 1
      150 MOVE                             R25 R3
      151 JUMPIFNOT                        R25 ; [+277]
      152 GETUPVAL                         R26 11
      153 GETTABLEKS                       R25 R26 K21 ["createPortal"]
      155 GETUPVAL                         R27 6
      156 GETTABLEKS                       R26 R27 K22 ["createElement"]
      158 GETUPVAL                         R27 12
      159 DUPTABLE                         R28 K25 [{"ZIndex", "tag"}]
      160 LOADN                            R29 5
      161 SETTABLEKS                       R29 R28 K23 ["ZIndex"]
      163 LOADK                            R29 K26 ["size-full"]
      164 SETTABLEKS                       R29 R28 K24 ["tag"]
      166 DUPTABLE                         R29 K30 [{"Sheet", "Shadow", "Backdrop"}]
      167 GETUPVAL                         R31 6
      168 GETTABLEKS                       R30 R31 K22 ["createElement"]
      170 GETUPVAL                         R31 12
      171 DUPTABLE                         R32 K40 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      172 SETTABLEKS                       R22 R32 K31 ["Size"]
      174 SETTABLEKS                       R23 R32 K32 ["Position"]
      176 LOADB                            R33 1
      177 SETTABLEKS                       R33 R32 K33 ["ClipsDescendants"]
      179 LOADN                            R33 3
      180 SETTABLEKS                       R33 R32 K23 ["ZIndex"]
      182 JUMPIFNOT                        R6 ; [+12]
      183 LOADN                            R34 0
      184 JUMPIFNOTLT                      R34 R5 ; [+10]
      186 DUPTABLE                         R33 K41 [{"right"}]
      187 GETIMPORT                        R34 K43 [UDim.new]
      189 LOADN                            R35 0
      190 MOVE                             R36 R5
      191 CALL                             R34 2 1
      192 SETTABLEKS                       R34 R33 K0 ["right"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R33
      196 SETTABLEKS                       R33 R32 K34 ["padding"]
      198 DUPTABLE                         R33 K45 [{"affordance"}]
      199 GETUPVAL                         R35 13
      200 GETTABLEKS                       R34 R35 K46 ["None"]
      202 SETTABLEKS                       R34 R33 K44 ["affordance"]
      204 SETTABLEKS                       R33 R32 K35 ["stateLayer"]
      206 GETUPVAL                         R34 9
      207 GETTABLEKS                       R33 R34 K47 ["noop"]
      209 SETTABLEKS                       R33 R32 K36 ["onActivated"]
      211 SETTABLEKS                       R1 R32 K37 ["ref"]
      213 GETUPVAL                         R34 14
      214 GETTABLEKS                       R33 R34 K48 ["nonSelectable"]
      216 SETTABLEKS                       R33 R32 K38 ["selection"]
      218 GETUPVAL                         R34 14
      219 GETTABLEKS                       R33 R34 K49 ["isolatedSelectionGroup"]
      221 SETTABLEKS                       R33 R32 K39 ["selectionGroup"]
      223 NEWTABLE                         R33 2 0
      225 LOADB                            R34 1
      226 SETTABLEKS                       R34 R33 K50 ["bg-surface-100 stroke-default stroke-standard"]
      228 NOT                              R34 R6
      229 SETTABLEKS                       R34 R33 K51 ["radius-large"]
      231 SETTABLEKS                       R33 R32 K24 ["tag"]
      233 GETTABLEKS                       R33 R2 K20 ["testId"]
      235 SETTABLEKS                       R33 R32 K20 ["testId"]
      237 DUPTABLE                         R33 K54 [{"Content", "CloseAffordance"}]
      238 GETUPVAL                         R35 6
      239 GETTABLEKS                       R34 R35 K22 ["createElement"]
      241 GETUPVAL                         R35 12
      242 DUPTABLE                         R36 K55 [{"tag"}]
      243 LOADK                            R37 K56 ["size-full-full col items-center clip"]
      244 SETTABLEKS                       R37 R36 K24 ["tag"]
      246 GETUPVAL                         R38 6
      247 GETTABLEKS                       R37 R38 K22 ["createElement"]
      249 GETUPVAL                         R39 15
      250 GETTABLEKS                       R38 R39 K57 ["Provider"]
      252 DUPTABLE                         R39 K59 [{"value"}]
      253 SETTABLEKS                       R24 R39 K58 ["value"]
      255 GETTABLEKS                       R40 R2 K60 ["children"]
      257 CALL                             R37 3 -1
      258 CALL                             R34 -1 1
      259 SETTABLEKS                       R34 R33 K52 ["Content"]
      261 GETUPVAL                         R35 6
      262 GETTABLEKS                       R34 R35 K22 ["createElement"]
      264 GETUPVAL                         R35 16
      265 DUPTABLE                         R36 K64 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      266 SETTABLEKS                       R21 R36 K36 ["onActivated"]
      268 GETUPVAL                         R38 17
      269 GETTABLEKS                       R37 R38 K65 ["Utility"]
      271 SETTABLEKS                       R37 R36 K61 ["variant"]
      273 GETIMPORT                        R37 K16 [UDim2.new]
      275 LOADN                            R38 1
      276 GETTABLEKS                       R41 R4 K66 ["Margin"]
      278 GETTABLEKS                       R40 R41 K4 ["Small"]
      280 MINUS                            R39 R40
      281 LOADN                            R40 0
      282 GETTABLEKS                       R42 R4 K66 ["Margin"]
      284 GETTABLEKS                       R41 R42 K4 ["Small"]
      286 CALL                             R37 4 1
      287 SETTABLEKS                       R37 R36 K32 ["Position"]
      289 GETIMPORT                        R37 K68 [Vector2.new]
      291 LOADN                            R38 1
      292 LOADN                            R39 0
      293 CALL                             R37 2 1
      294 SETTABLEKS                       R37 R36 K62 ["AnchorPoint"]
      296 DUPCLOSURE                       R39 K69 [PROTO_6]
      297 NAMECALL                         R37 R17 K18 ["map"]
      299 CALL                             R37 2 1
      300 SETTABLEKS                       R37 R36 K63 ["Visible"]
      302 LOADK                            R38 K70 ["%*--close-affordance"]
      303 GETTABLEKS                       R40 R2 K20 ["testId"]
      305 NAMECALL                         R38 R38 K71 ["format"]
      307 CALL                             R38 2 1
      308 MOVE                             R37 R38
      309 SETTABLEKS                       R37 R36 K20 ["testId"]
      311 CALL                             R34 2 1
      312 SETTABLEKS                       R34 R33 K53 ["CloseAffordance"]
      314 CALL                             R30 3 1
      315 SETTABLEKS                       R30 R29 K27 ["Sheet"]
      317 GETUPVAL                         R31 6
      318 GETTABLEKS                       R30 R31 K22 ["createElement"]
      320 GETUPVAL                         R31 18
      321 DUPTABLE                         R32 K75 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      322 GETUPVAL                         R33 19
      323 SETTABLEKS                       R33 R32 K72 ["Image"]
      325 GETIMPORT                        R34 K77 [UDim2.fromOffset]
      327 GETUPVAL                         R36 20
      328 MULK                             R35 R36 K17 [2]
      329 GETUPVAL                         R37 20
      330 MULK                             R36 R37 K17 [2]
      331 CALL                             R34 2 1
      332 ADD                              R33 R22 R34
      333 SETTABLEKS                       R33 R32 K31 ["Size"]
      335 DUPCLOSURE                       R35 K78 [PROTO_7]
      336 CAPTURE                          UPVAL U20
      337 NAMECALL                         R33 R23 K18 ["map"]
      339 CALL                             R33 2 1
      340 SETTABLEKS                       R33 R32 K32 ["Position"]
      342 LOADN                            R33 2
      343 SETTABLEKS                       R33 R32 K23 ["ZIndex"]
      345 DUPTABLE                         R33 K81 [{"center", "scale"}]
      346 GETIMPORT                        R34 K83 [Rect.new]
      348 GETUPVAL                         R35 20
      349 GETUPVAL                         R36 20
      350 GETUPVAL                         R38 20
      351 ADDK                             R37 R38 K84 [1]
      352 GETUPVAL                         R39 20
      353 ADDK                             R38 R39 K84 [1]
      354 CALL                             R34 4 1
      355 SETTABLEKS                       R34 R33 K79 ["center"]
      357 LOADN                            R34 2
      358 SETTABLEKS                       R34 R33 K80 ["scale"]
      360 SETTABLEKS                       R33 R32 K73 ["slice"]
      362 GETTABLEKS                       R36 R4 K85 ["Color"]
      364 GETTABLEKS                       R35 R36 K86 ["Extended"]
      366 GETTABLEKS                       R34 R35 K87 ["Black"]
      368 GETTABLEKS                       R33 R34 K88 ["Black_10"]
      370 SETTABLEKS                       R33 R32 K74 ["imageStyle"]
      372 CALL                             R30 2 1
      373 SETTABLEKS                       R30 R29 K28 ["Shadow"]
      375 GETUPVAL                         R31 6
      376 GETTABLEKS                       R30 R31 K22 ["createElement"]
      378 GETUPVAL                         R31 12
      379 DUPTABLE                         R32 K90 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      380 GETIMPORT                        R33 K92 [UDim2.fromScale]
      382 LOADN                            R34 2
      383 LOADN                            R35 2
      384 CALL                             R33 2 1
      385 SETTABLEKS                       R33 R32 K31 ["Size"]
      387 GETIMPORT                        R33 K92 [UDim2.fromScale]
      389 LOADK                            R34 K93 [-0.5]
      390 LOADK                            R35 K93 [-0.5]
      391 CALL                             R33 2 1
      392 SETTABLEKS                       R33 R32 K32 ["Position"]
      394 LOADN                            R33 1
      395 SETTABLEKS                       R33 R32 K23 ["ZIndex"]
      397 DUPTABLE                         R33 K45 [{"affordance"}]
      398 GETUPVAL                         R35 13
      399 GETTABLEKS                       R34 R35 K46 ["None"]
      401 SETTABLEKS                       R34 R33 K44 ["affordance"]
      403 SETTABLEKS                       R33 R32 K35 ["stateLayer"]
      405 NEWCLOSURE                       R35 P8
      406 CAPTURE                          VAL R4
      407 NAMECALL                         R33 R10 K18 ["map"]
      409 CALL                             R33 2 1
      410 SETTABLEKS                       R33 R32 K89 ["backgroundStyle"]
      412 SETTABLEKS                       R21 R32 K36 ["onActivated"]
      414 LOADK                            R34 K94 ["%*--backdrop"]
      415 GETTABLEKS                       R36 R2 K20 ["testId"]
      417 NAMECALL                         R34 R34 K71 ["format"]
      419 CALL                             R34 2 1
      420 MOVE                             R33 R34
      421 SETTABLEKS                       R33 R32 K20 ["testId"]
      423 CALL                             R30 2 1
      424 SETTABLEKS                       R30 R29 K29 ["Backdrop"]
      426 CALL                             R26 3 1
      427 MOVE                             R27 R3
      428 CALL                             R25 2 1
      429 RETURN                           R25 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Otter"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Dash"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R5 K12 ["useAnimatedBinding"]
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R11 R0 K13 ["Providers"]
       40 GETTABLEKS                       R10 R11 K14 ["Overlay"]
       42 GETTABLEKS                       R9 R10 K15 ["useOverlay"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R12 R0 K13 ["Providers"]
       49 GETTABLEKS                       R11 R12 K16 ["Style"]
       51 GETTABLEKS                       R10 R11 K17 ["useTokens"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R12 R0 K18 ["Utility"]
       58 GETTABLEKS                       R11 R12 K19 ["useScaledValue"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R13 R0 K18 ["Utility"]
       65 GETTABLEKS                       R12 R13 K20 ["withDefaults"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R14 R0 K21 ["Enums"]
       72 GETTABLEKS                       R13 R14 K22 ["StateLayerAffordance"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R15 R0 K21 ["Enums"]
       79 GETTABLEKS                       R14 R15 K23 ["CloseAffordanceVariant"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K24 ["Constants"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETIMPORT                        R18 K1 [script]
       91 GETTABLEKS                       R17 R18 K4 ["Parent"]
       93 GETTABLEKS                       R16 R17 K25 ["SheetContext"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K6 [require]
       98 GETIMPORT                        R19 K1 [script]
      100 GETTABLEKS                       R18 R19 K4 ["Parent"]
      102 GETTABLEKS                       R17 R18 K26 ["Types"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R19 R20 K4 ["Parent"]
      111 GETTABLEKS                       R18 R19 K27 ["SheetType"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R21 K1 [script]
      118 GETTABLEKS                       R20 R21 K4 ["Parent"]
      120 GETTABLEKS                       R19 R20 K28 ["useHardwareInsets"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R21 R0 K29 ["Components"]
      127 GETTABLEKS                       R20 R21 K30 ["View"]
      129 CALL                             R19 1 1
      130 GETIMPORT                        R20 K6 [require]
      132 GETTABLEKS                       R22 R0 K29 ["Components"]
      134 GETTABLEKS                       R21 R22 K31 ["Image"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K6 [require]
      139 GETTABLEKS                       R23 R0 K29 ["Components"]
      141 GETTABLEKS                       R22 R23 K32 ["CloseAffordance"]
      143 CALL                             R21 1 1
      144 DUPTABLE                         R22 K34 [{"testId"}]
      145 LOADK                            R23 K35 ["--foundation-sheet"]
      146 SETTABLEKS                       R23 R22 K33 ["testId"]
      148 GETTABLEKS                       R23 R14 K36 ["SHADOW_IMAGE"]
      150 GETTABLEKS                       R24 R14 K37 ["SHADOW_SIZE"]
      152 DUPCLOSURE                       R25 K38 [PROTO_9]
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R24
      174 GETTABLEKS                       R26 R2 K39 ["memo"]
      176 GETTABLEKS                       R27 R2 K40 ["forwardRef"]
      178 MOVE                             R28 R25
      179 CALL                             R27 1 -1
      180 CALL                             R26 -1 -1
      181 RETURN                           R26 -1
