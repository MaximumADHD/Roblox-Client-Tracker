PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ease"]
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K3 [{"easingStyle", "duration"}]
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K4 ["Ease"]
        9 GETTABLEKS                       R4 R4 K5 ["StandardOut"]
       11 SETTABLEKS                       R4 R3 K1 ["easingStyle"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K6 ["Time"]
       16 GETTABLEKS                       R4 R4 K7 ["Time_300"]
       18 SETTABLEKS                       R4 R3 K2 ["duration"]
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 4
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K0 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K8 [{"duration"}]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K6 ["Time"]
       31 GETTABLEKS                       R4 R4 K9 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K2 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["ease"]
        9 GETUPVAL                         R2 3
       10 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R4 R4 K5 ["Ease"]
       14 GETTABLEKS                       R4 R4 K6 ["StandardIn"]
       16 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K7 ["Time"]
       21 GETTABLEKS                       R4 R4 K8 ["Time_100"]
       23 SETTABLEKS                       R4 R3 K3 ["duration"]
       25 CALL                             R1 2 -1
       26 CALL                             R0 -1 0
       27 GETUPVAL                         R0 5
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K1 ["ease"]
       31 LOADN                            R2 1
       32 DUPTABLE                         R3 K9 [{"duration"}]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K7 ["Time"]
       36 GETTABLEKS                       R4 R4 K8 ["Time_100"]
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
        0 DUPTABLE                         R0 K18 [{[1] = 0, ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"] = 0, ["setSheetHeightAvailable"], ["safeAreaPadding"] = 0, ["bottomPadding"] = 0, ["innerScrollingEnabled"] = True, ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["closeSheet"], ["sheetType"], ["testId"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K19 ["noop"]
        4 SETTABLEKS                       R1 R0 K2 ["setActionsHeight"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K3 ["hasActionsDivider"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K4 ["setHasActionsDivider"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K19 ["noop"]
       15 SETTABLEKS                       R1 R0 K6 ["setSheetHeightAvailable"]
       17 GETUPVAL                         R1 3
       18 SETTABLEKS                       R1 R0 K11 ["innerScrollY"]
       20 GETUPVAL                         R1 4
       21 SETTABLEKS                       R1 R0 K12 ["setInnerScrollY"]
       23 GETUPVAL                         R1 5
       24 SETTABLEKS                       R1 R0 K13 ["hasHeader"]
       26 GETUPVAL                         R1 6
       27 SETTABLEKS                       R1 R0 K14 ["setHasHeader"]
       29 GETUPVAL                         R1 7
       30 SETTABLEKS                       R1 R0 K15 ["closeSheet"]
       32 GETUPVAL                         R1 8
       33 GETTABLEKS                       R1 R1 K20 ["Side"]
       35 SETTABLEKS                       R1 R0 K16 ["sheetType"]
       37 GETUPVAL                         R1 9
       38 GETTABLEKS                       R1 R1 K17 ["testId"]
       40 SETTABLEKS                       R1 R0 K17 ["testId"]
       42 RETURN                           R0 1

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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Common"]
        6 GETTABLEKS                       R2 R2 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Color"]
       15 GETTABLEKS                       R3 R3 K4 ["Common"]
       17 GETTABLEKS                       R3 R3 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R3 K1 ["Transparency"]
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
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R6 5
       10 GETTABLEKS                       R6 R6 K0 ["Sheet"]
       12 DUPTABLE                         R7 K3 [{["relativeToOwner"] = False}]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 6
       15 MOVE                             R7 R3
       16 CALL                             R6 1 1
       17 GETTABLEKS                       R6 R6 K4 ["right"]
       19 GETTABLEKS                       R8 R2 K5 ["displaySize"]
       21 GETIMPORT                        R9 K9 [Enum.DisplaySize.Small]
       23 JUMPIFEQ                         R8 R9 ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 GETUPVAL                         R8 7
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADN                            R9 400
       30 JUMP                             ; [+1]
       31 LOADN                            R9 360
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R9 R4 K10 ["Padding"]
       35 GETTABLEKS                       R9 R9 K11 ["Medium"]
       37 GETUPVAL                         R10 8
       38 GETTABLEKS                       R10 R10 K12 ["useRef"]
       40 LOADB                            R11 0
       41 CALL                             R10 1 1
       42 GETUPVAL                         R11 9
       43 LOADN                            R12 1
       44 NEWCLOSURE                       R13 P0
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R2
       47 CALL                             R11 2 2
       48 JUMPIFNOT                        R7 ; [+2]
       49 LOADN                            R15 0
       50 JUMP                             ; [+1]
       51 MOVE                             R15 R9
       52 ADD                              R14 R6 R15
       53 MINUS                            R13 R14
       54 GETUPVAL                         R14 9
       55 MOVE                             R15 R13
       56 CALL                             R14 1 2
       57 GETUPVAL                         R16 8
       58 GETTABLEKS                       R16 R16 K13 ["useBinding"]
       60 LOADB                            R17 0
       61 CALL                             R16 1 2
       62 GETUPVAL                         R18 8
       63 GETTABLEKS                       R18 R18 K13 ["useBinding"]
       65 LOADB                            R19 0
       66 CALL                             R18 1 2
       67 GETUPVAL                         R20 8
       68 GETTABLEKS                       R20 R20 K13 ["useBinding"]
       70 LOADN                            R21 0
       71 CALL                             R20 1 2
       72 GETUPVAL                         R22 8
       73 GETTABLEKS                       R22 R22 K14 ["useEffect"]
       75 NEWCLOSURE                       R23 P1
       76 CAPTURE                          VAL R15
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R12
       81 NEWTABLE                         R24 0 1
       83 MOVE                             R25 R8
       84 SETLIST                          R24 R25 1 [1]
       86 CALL                             R22 2 0
       87 GETUPVAL                         R22 8
       88 GETTABLEKS                       R22 R22 K15 ["useCallback"]
       90 NEWCLOSURE                       R23 P2
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R15
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R12
       97 NEWTABLE                         R24 0 1
       99 MOVE                             R25 R13
      100 SETLIST                          R24 R25 1 [1]
      102 CALL                             R22 2 1
      103 GETUPVAL                         R23 8
      104 GETTABLEKS                       R23 R23 K16 ["useImperativeHandle"]
      106 GETTABLEKS                       R24 R2 K17 ["sheetRef"]
      108 NEWCLOSURE                       R25 P3
      109 CAPTURE                          VAL R22
      110 NEWTABLE                         R26 0 0
      112 CALL                             R23 3 0
      113 GETIMPORT                        R23 K20 [UDim2.new]
      115 LOADN                            R24 0
      116 JUMPIFNOT                        R7 ; [+2]
      117 MOVE                             R26 R6
      118 JUMP                             ; [+1]
      119 LOADN                            R26 0
      120 ADD                              R25 R8 R26
      121 LOADN                            R26 1
      122 JUMPIFNOT                        R7 ; [+2]
      123 LOADN                            R27 0
      124 JUMP                             ; [+2]
      125 MINUS                            R28 R9
      126 MULK                             R27 R28 K21 [2]
      127 CALL                             R23 4 1
      128 NEWCLOSURE                       R26 P4
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R9
      131 NAMECALL                         R24 R14 K22 ["map"]
      133 CALL                             R24 2 1
      134 GETUPVAL                         R25 8
      135 GETTABLEKS                       R25 R25 K23 ["useMemo"]
      137 NEWCLOSURE                       R26 P5
      138 CAPTURE                          UPVAL U11
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R22
      146 CAPTURE                          UPVAL U12
      147 CAPTURE                          VAL R2
      148 NEWTABLE                         R27 0 2
      150 GETTABLEKS                       R28 R2 K24 ["testId"]
      152 MOVE                             R29 R22
      153 SETLIST                          R27 R28 2 [1]
      155 CALL                             R25 2 1
      156 MOVE                             R26 R3
      157 JUMPIFNOT                        R26 ; [+287]
      158 GETUPVAL                         R26 13
      159 GETTABLEKS                       R26 R26 K25 ["createPortal"]
      161 GETUPVAL                         R27 8
      162 GETTABLEKS                       R27 R27 K26 ["createElement"]
      164 GETUPVAL                         R28 14
      165 DUPTABLE                         R29 K30 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      166 GETUPVAL                         R31 15
      167 GETTABLEKS                       R31 R31 K31 ["FoundationElevationSystem"]
      169 JUMPIFNOT                        R31 ; [+3]
      170 GETTABLEKS                       R30 R5 K32 ["zIndex"]
      172 JUMP                             ; [+1]
      173 LOADN                            R30 5
      174 SETTABLEKS                       R30 R29 K27 ["ZIndex"]
      176 LOADK                            R31 K33 ["%*--surface"]
      177 GETTABLEKS                       R33 R2 K24 ["testId"]
      179 NAMECALL                         R31 R31 K34 ["format"]
      181 CALL                             R31 2 1
      182 MOVE                             R30 R31
      183 SETTABLEKS                       R30 R29 K24 ["testId"]
      185 DUPTABLE                         R30 K37 [{"Sheet", "Shadow", "Backdrop"}]
      186 GETUPVAL                         R31 8
      187 GETTABLEKS                       R31 R31 K26 ["createElement"]
      189 GETUPVAL                         R32 14
      190 DUPTABLE                         R33 K49 [{["Size"], ["Position"], ["ClipsDescendants"] = True, ["ZIndex"] = 3, ["padding"], ["stateLayer"], ["onActivated"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      191 SETTABLEKS                       R23 R33 K38 ["Size"]
      193 SETTABLEKS                       R24 R33 K39 ["Position"]
      195 JUMPIFNOT                        R7 ; [+12]
      196 LOADN                            R35 0
      197 JUMPIFNOTLT                      R35 R6 ; [+10]
      199 DUPTABLE                         R34 K50 [{"right"}]
      200 GETIMPORT                        R35 K52 [UDim.new]
      202 LOADN                            R36 0
      203 MOVE                             R37 R6
      204 CALL                             R35 2 1
      205 SETTABLEKS                       R35 R34 K4 ["right"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R34
      209 SETTABLEKS                       R34 R33 K43 ["padding"]
      211 DUPTABLE                         R34 K54 [{"affordance"}]
      212 GETUPVAL                         R35 16
      213 GETTABLEKS                       R35 R35 K55 ["None"]
      215 SETTABLEKS                       R35 R34 K53 ["affordance"]
      217 SETTABLEKS                       R34 R33 K44 ["stateLayer"]
      219 GETUPVAL                         R34 11
      220 GETTABLEKS                       R34 R34 K56 ["noop"]
      222 SETTABLEKS                       R34 R33 K45 ["onActivated"]
      224 SETTABLEKS                       R1 R33 K46 ["ref"]
      226 GETUPVAL                         R34 17
      227 GETTABLEKS                       R34 R34 K57 ["nonSelectable"]
      229 SETTABLEKS                       R34 R33 K47 ["selection"]
      231 GETUPVAL                         R34 17
      232 GETTABLEKS                       R34 R34 K58 ["isolatedSelectionGroup"]
      234 SETTABLEKS                       R34 R33 K48 ["selectionGroup"]
      236 NEWTABLE                         R34 2 0
      238 LOADB                            R35 1
      239 SETTABLEKS                       R35 R34 K59 ["bg-surface-100 stroke-default stroke-standard"]
      241 NOT                              R35 R7
      242 SETTABLEKS                       R35 R34 K60 ["radius-large"]
      244 SETTABLEKS                       R34 R33 K28 ["tag"]
      246 GETTABLEKS                       R34 R2 K24 ["testId"]
      248 SETTABLEKS                       R34 R33 K24 ["testId"]
      250 DUPTABLE                         R34 K63 [{"Content", "CloseAffordance"}]
      251 GETUPVAL                         R35 8
      252 GETTABLEKS                       R35 R35 K26 ["createElement"]
      254 GETUPVAL                         R36 14
      255 DUPTABLE                         R37 K65 [{["tag"] = "size-full-full col items-center clip"}]
      256 GETUPVAL                         R38 8
      257 GETTABLEKS                       R38 R38 K26 ["createElement"]
      259 GETUPVAL                         R39 18
      260 GETTABLEKS                       R39 R39 K66 ["Provider"]
      262 DUPTABLE                         R40 K68 [{"value"}]
      263 SETTABLEKS                       R25 R40 K67 ["value"]
      265 GETUPVAL                         R42 15
      266 GETTABLEKS                       R42 R42 K31 ["FoundationElevationSystem"]
      268 JUMPIFNOT                        R42 ; [+11]
      269 GETUPVAL                         R41 8
      270 GETTABLEKS                       R41 R41 K26 ["createElement"]
      272 GETUPVAL                         R42 19
      273 DUPTABLE                         R43 K70 [{"owner"}]
      274 SETTABLEKS                       R5 R43 K69 ["owner"]
      276 GETTABLEKS                       R44 R2 K71 ["children"]
      278 CALL                             R41 3 1
      279 JUMP                             ; [+2]
      280 GETTABLEKS                       R41 R2 K71 ["children"]
      282 CALL                             R38 3 -1
      283 CALL                             R35 -1 1
      284 SETTABLEKS                       R35 R34 K61 ["Content"]
      286 GETUPVAL                         R35 8
      287 GETTABLEKS                       R35 R35 K26 ["createElement"]
      289 GETUPVAL                         R36 20
      290 DUPTABLE                         R37 K75 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      291 SETTABLEKS                       R22 R37 K45 ["onActivated"]
      293 GETUPVAL                         R38 21
      294 GETTABLEKS                       R38 R38 K76 ["Utility"]
      296 SETTABLEKS                       R38 R37 K72 ["variant"]
      298 GETIMPORT                        R38 K20 [UDim2.new]
      300 LOADN                            R39 1
      301 GETTABLEKS                       R41 R4 K77 ["Margin"]
      303 GETTABLEKS                       R41 R41 K8 ["Small"]
      305 MINUS                            R40 R41
      306 LOADN                            R41 0
      307 GETTABLEKS                       R42 R4 K77 ["Margin"]
      309 GETTABLEKS                       R42 R42 K8 ["Small"]
      311 CALL                             R38 4 1
      312 SETTABLEKS                       R38 R37 K39 ["Position"]
      314 GETIMPORT                        R38 K79 [Vector2.new]
      316 LOADN                            R39 1
      317 LOADN                            R40 0
      318 CALL                             R38 2 1
      319 SETTABLEKS                       R38 R37 K73 ["AnchorPoint"]
      321 DUPCLOSURE                       R40 K80 [PROTO_6]
      322 NAMECALL                         R38 R18 K22 ["map"]
      324 CALL                             R38 2 1
      325 SETTABLEKS                       R38 R37 K74 ["Visible"]
      327 LOADK                            R39 K81 ["%*--close-affordance"]
      328 GETTABLEKS                       R41 R2 K24 ["testId"]
      330 NAMECALL                         R39 R39 K34 ["format"]
      332 CALL                             R39 2 1
      333 MOVE                             R38 R39
      334 SETTABLEKS                       R38 R37 K24 ["testId"]
      336 CALL                             R35 2 1
      337 SETTABLEKS                       R35 R34 K62 ["CloseAffordance"]
      339 CALL                             R31 3 1
      340 SETTABLEKS                       R31 R30 K0 ["Sheet"]
      342 GETUPVAL                         R31 8
      343 GETTABLEKS                       R31 R31 K26 ["createElement"]
      345 GETUPVAL                         R32 22
      346 DUPTABLE                         R33 K85 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      347 GETUPVAL                         R34 23
      348 SETTABLEKS                       R34 R33 K82 ["Image"]
      350 GETIMPORT                        R35 K87 [UDim2.fromOffset]
      352 GETUPVAL                         R37 24
      353 MULK                             R36 R37 K21 [2]
      354 GETUPVAL                         R38 24
      355 MULK                             R37 R38 K21 [2]
      356 CALL                             R35 2 1
      357 ADD                              R34 R23 R35
      358 SETTABLEKS                       R34 R33 K38 ["Size"]
      360 DUPCLOSURE                       R36 K88 [PROTO_7]
      361 CAPTURE                          UPVAL U24
      362 NAMECALL                         R34 R24 K22 ["map"]
      364 CALL                             R34 2 1
      365 SETTABLEKS                       R34 R33 K39 ["Position"]
      367 DUPTABLE                         R34 K91 [{["center"], ["scale"] = 2}]
      368 GETIMPORT                        R35 K93 [Rect.new]
      370 GETUPVAL                         R36 24
      371 GETUPVAL                         R37 24
      372 GETUPVAL                         R39 24
      373 ADDK                             R38 R39 K94 [1]
      374 GETUPVAL                         R40 24
      375 ADDK                             R39 R40 K94 [1]
      376 CALL                             R35 4 1
      377 SETTABLEKS                       R35 R34 K89 ["center"]
      379 SETTABLEKS                       R34 R33 K83 ["slice"]
      381 GETTABLEKS                       R34 R4 K95 ["Color"]
      383 GETTABLEKS                       R34 R34 K96 ["Extended"]
      385 GETTABLEKS                       R34 R34 K97 ["Black"]
      387 GETTABLEKS                       R34 R34 K98 ["Black_10"]
      389 SETTABLEKS                       R34 R33 K84 ["imageStyle"]
      391 CALL                             R31 2 1
      392 SETTABLEKS                       R31 R30 K35 ["Shadow"]
      394 GETUPVAL                         R31 8
      395 GETTABLEKS                       R31 R31 K26 ["createElement"]
      397 GETUPVAL                         R32 14
      398 DUPTABLE                         R33 K100 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      399 GETIMPORT                        R34 K102 [UDim2.fromScale]
      401 LOADN                            R35 2
      402 LOADN                            R36 2
      403 CALL                             R34 2 1
      404 SETTABLEKS                       R34 R33 K38 ["Size"]
      406 GETIMPORT                        R34 K102 [UDim2.fromScale]
      408 LOADK                            R35 K103 [-0.5]
      409 LOADK                            R36 K103 [-0.5]
      410 CALL                             R34 2 1
      411 SETTABLEKS                       R34 R33 K39 ["Position"]
      413 DUPTABLE                         R34 K54 [{"affordance"}]
      414 GETUPVAL                         R35 16
      415 GETTABLEKS                       R35 R35 K55 ["None"]
      417 SETTABLEKS                       R35 R34 K53 ["affordance"]
      419 SETTABLEKS                       R34 R33 K44 ["stateLayer"]
      421 NEWCLOSURE                       R36 P8
      422 CAPTURE                          VAL R4
      423 NAMECALL                         R34 R11 K22 ["map"]
      425 CALL                             R34 2 1
      426 SETTABLEKS                       R34 R33 K99 ["backgroundStyle"]
      428 SETTABLEKS                       R22 R33 K45 ["onActivated"]
      430 LOADK                            R35 K104 ["%*--backdrop"]
      431 GETTABLEKS                       R37 R2 K24 ["testId"]
      433 NAMECALL                         R35 R35 K34 ["format"]
      435 CALL                             R35 2 1
      436 MOVE                             R34 R35
      437 SETTABLEKS                       R34 R33 K24 ["testId"]
      439 CALL                             R31 2 1
      440 SETTABLEKS                       R31 R30 K36 ["Backdrop"]
      442 CALL                             R27 3 1
      443 MOVE                             R28 R3
      444 CALL                             R26 2 1
      445 RETURN                           R26 1

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
       38 GETTABLEKS                       R9 R0 K13 ["Providers"]
       40 GETTABLEKS                       R9 R9 K14 ["Overlay"]
       42 GETTABLEKS                       R9 R9 K15 ["useOverlay"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R10 R0 K13 ["Providers"]
       49 GETTABLEKS                       R10 R10 K16 ["Style"]
       51 GETTABLEKS                       R10 R10 K17 ["useTokens"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K18 ["Utility"]
       58 GETTABLEKS                       R11 R11 K19 ["useScaledValue"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R0 K18 ["Utility"]
       65 GETTABLEKS                       R12 R12 K20 ["withDefaults"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R0 K21 ["Enums"]
       72 GETTABLEKS                       R13 R13 K22 ["StateLayerAffordance"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K21 ["Enums"]
       79 GETTABLEKS                       R14 R14 K23 ["CloseAffordanceVariant"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K24 ["Constants"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETIMPORT                        R16 K1 [script]
       91 GETTABLEKS                       R16 R16 K4 ["Parent"]
       93 GETTABLEKS                       R16 R16 K25 ["SheetContext"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K6 [require]
       98 GETIMPORT                        R17 K1 [script]
      100 GETTABLEKS                       R17 R17 K4 ["Parent"]
      102 GETTABLEKS                       R17 R17 K26 ["Types"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R18 K1 [script]
      109 GETTABLEKS                       R18 R18 K4 ["Parent"]
      111 GETTABLEKS                       R18 R18 K27 ["SheetType"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R19 R0 K13 ["Providers"]
      118 GETTABLEKS                       R19 R19 K28 ["Elevation"]
      120 GETTABLEKS                       R19 R19 K29 ["useElevation"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R20 R0 K13 ["Providers"]
      127 GETTABLEKS                       R20 R20 K28 ["Elevation"]
      129 GETTABLEKS                       R20 R20 K30 ["ElevationProvider"]
      131 CALL                             R19 1 1
      132 GETTABLEKS                       R19 R19 K31 ["ElevationOwnerScope"]
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R21 R0 K21 ["Enums"]
      138 GETTABLEKS                       R21 R21 K32 ["ElevationLayer"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K4 ["Parent"]
      147 GETTABLEKS                       R22 R22 K33 ["useHardwareInsets"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R23 R0 K34 ["Components"]
      154 GETTABLEKS                       R23 R23 K35 ["View"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R24 R0 K34 ["Components"]
      161 GETTABLEKS                       R24 R24 K36 ["Image"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R25 R0 K34 ["Components"]
      168 GETTABLEKS                       R25 R25 K37 ["CloseAffordance"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K6 [require]
      173 GETTABLEKS                       R26 R0 K18 ["Utility"]
      175 GETTABLEKS                       R26 R26 K38 ["Flags"]
      177 CALL                             R25 1 1
      178 DUPTABLE                         R26 K41 [{["testId"] = "--foundation-sheet"}]
      179 GETTABLEKS                       R27 R14 K42 ["SHADOW_IMAGE"]
      181 GETTABLEKS                       R28 R14 K43 ["SHADOW_SIZE"]
      183 DUPCLOSURE                       R29 K44 [PROTO_9]
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R25
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R27
      208 CAPTURE                          VAL R28
      209 GETTABLEKS                       R30 R2 K45 ["memo"]
      211 GETTABLEKS                       R31 R2 K46 ["forwardRef"]
      213 MOVE                             R32 R29
      214 CALL                             R31 1 -1
      215 CALL                             R30 -1 -1
      216 RETURN                           R30 -1
