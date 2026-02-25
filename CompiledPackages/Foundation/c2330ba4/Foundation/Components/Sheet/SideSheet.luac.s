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
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K0 ["Sheet"]
       12 DUPTABLE                         R7 K2 [{"relativeToOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["relativeToOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R7 6
       18 MOVE                             R8 R3
       19 CALL                             R7 1 1
       20 GETTABLEKS                       R6 R7 K3 ["right"]
       22 GETTABLEKS                       R8 R2 K4 ["displaySize"]
       24 GETIMPORT                        R9 K8 [Enum.DisplaySize.Small]
       26 JUMPIFEQ                         R8 R9 ; [+2]
       28 LOADB                            R7 0 +1
       29 LOADB                            R7 1
       30 GETUPVAL                         R8 7
       31 JUMPIFNOT                        R7 ; [+2]
       32 LOADN                            R9 144
       33 JUMP                             ; [+1]
       34 LOADN                            R9 104
       35 CALL                             R8 1 1
       36 GETTABLEKS                       R10 R4 K9 ["Padding"]
       38 GETTABLEKS                       R9 R10 K10 ["Medium"]
       40 GETUPVAL                         R11 8
       41 GETTABLEKS                       R10 R11 K11 ["useRef"]
       43 LOADB                            R11 0
       44 CALL                             R10 1 1
       45 GETUPVAL                         R11 9
       46 LOADN                            R12 1
       47 NEWCLOSURE                       R13 P0
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R2
       50 CALL                             R11 2 2
       51 JUMPIFNOT                        R7 ; [+2]
       52 LOADN                            R15 0
       53 JUMP                             ; [+1]
       54 MOVE                             R15 R9
       55 ADD                              R14 R6 R15
       56 MINUS                            R13 R14
       57 GETUPVAL                         R14 9
       58 MOVE                             R15 R13
       59 CALL                             R14 1 2
       60 GETUPVAL                         R17 8
       61 GETTABLEKS                       R16 R17 K12 ["useBinding"]
       63 LOADB                            R17 0
       64 CALL                             R16 1 2
       65 GETUPVAL                         R19 8
       66 GETTABLEKS                       R18 R19 K12 ["useBinding"]
       68 LOADB                            R19 0
       69 CALL                             R18 1 2
       70 GETUPVAL                         R21 8
       71 GETTABLEKS                       R20 R21 K12 ["useBinding"]
       73 LOADN                            R21 0
       74 CALL                             R20 1 2
       75 GETUPVAL                         R23 8
       76 GETTABLEKS                       R22 R23 K13 ["useEffect"]
       78 NEWCLOSURE                       R23 P1
       79 CAPTURE                          VAL R15
       80 CAPTURE                          UPVAL U10
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R12
       84 NEWTABLE                         R24 0 1
       86 MOVE                             R25 R8
       87 SETLIST                          R24 R25 1 [1]
       89 CALL                             R22 2 0
       90 GETUPVAL                         R23 8
       91 GETTABLEKS                       R22 R23 K14 ["useCallback"]
       93 NEWCLOSURE                       R23 P2
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R15
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R12
      100 NEWTABLE                         R24 0 1
      102 MOVE                             R25 R13
      103 SETLIST                          R24 R25 1 [1]
      105 CALL                             R22 2 1
      106 GETUPVAL                         R24 8
      107 GETTABLEKS                       R23 R24 K15 ["useImperativeHandle"]
      109 GETTABLEKS                       R24 R2 K16 ["sheetRef"]
      111 NEWCLOSURE                       R25 P3
      112 CAPTURE                          VAL R22
      113 NEWTABLE                         R26 0 0
      115 CALL                             R23 3 0
      116 GETIMPORT                        R23 K19 [UDim2.new]
      118 LOADN                            R24 0
      119 JUMPIFNOT                        R7 ; [+2]
      120 MOVE                             R26 R6
      121 JUMP                             ; [+1]
      122 LOADN                            R26 0
      123 ADD                              R25 R8 R26
      124 LOADN                            R26 1
      125 JUMPIFNOT                        R7 ; [+2]
      126 LOADN                            R27 0
      127 JUMP                             ; [+2]
      128 MINUS                            R28 R9
      129 MULK                             R27 R28 K20 [2]
      130 CALL                             R23 4 1
      131 NEWCLOSURE                       R26 P4
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R9
      134 NAMECALL                         R24 R14 K21 ["map"]
      136 CALL                             R24 2 1
      137 GETUPVAL                         R26 8
      138 GETTABLEKS                       R25 R26 K22 ["useMemo"]
      140 NEWCLOSURE                       R26 P5
      141 CAPTURE                          UPVAL U11
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R22
      149 CAPTURE                          UPVAL U12
      150 CAPTURE                          VAL R2
      151 NEWTABLE                         R27 0 2
      153 GETTABLEKS                       R28 R2 K23 ["testId"]
      155 MOVE                             R29 R22
      156 SETLIST                          R27 R28 2 [1]
      158 CALL                             R25 2 1
      159 MOVE                             R26 R3
      160 JUMPIFNOT                        R26 ; [+308]
      161 GETUPVAL                         R27 13
      162 GETTABLEKS                       R26 R27 K24 ["createPortal"]
      164 GETUPVAL                         R28 8
      165 GETTABLEKS                       R27 R28 K25 ["createElement"]
      167 GETUPVAL                         R28 14
      168 DUPTABLE                         R29 K28 [{"ZIndex", "tag", "testId"}]
      169 GETUPVAL                         R32 15
      170 GETTABLEKS                       R31 R32 K29 ["FoundationElevationSystem"]
      172 JUMPIFNOT                        R31 ; [+3]
      173 GETTABLEKS                       R30 R5 K30 ["zIndex"]
      175 JUMP                             ; [+1]
      176 LOADN                            R30 5
      177 SETTABLEKS                       R30 R29 K26 ["ZIndex"]
      179 LOADK                            R30 K31 ["size-full"]
      180 SETTABLEKS                       R30 R29 K27 ["tag"]
      182 LOADK                            R31 K32 ["%*--surface"]
      183 GETTABLEKS                       R33 R2 K23 ["testId"]
      185 NAMECALL                         R31 R31 K33 ["format"]
      187 CALL                             R31 2 1
      188 MOVE                             R30 R31
      189 SETTABLEKS                       R30 R29 K23 ["testId"]
      191 DUPTABLE                         R30 K36 [{"Sheet", "Shadow", "Backdrop"}]
      192 GETUPVAL                         R32 8
      193 GETTABLEKS                       R31 R32 K25 ["createElement"]
      195 GETUPVAL                         R32 14
      196 DUPTABLE                         R33 K46 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      197 SETTABLEKS                       R23 R33 K37 ["Size"]
      199 SETTABLEKS                       R24 R33 K38 ["Position"]
      201 LOADB                            R34 1
      202 SETTABLEKS                       R34 R33 K39 ["ClipsDescendants"]
      204 LOADN                            R34 3
      205 SETTABLEKS                       R34 R33 K26 ["ZIndex"]
      207 JUMPIFNOT                        R7 ; [+12]
      208 LOADN                            R35 0
      209 JUMPIFNOTLT                      R35 R6 ; [+10]
      211 DUPTABLE                         R34 K47 [{"right"}]
      212 GETIMPORT                        R35 K49 [UDim.new]
      214 LOADN                            R36 0
      215 MOVE                             R37 R6
      216 CALL                             R35 2 1
      217 SETTABLEKS                       R35 R34 K3 ["right"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R34
      221 SETTABLEKS                       R34 R33 K40 ["padding"]
      223 DUPTABLE                         R34 K51 [{"affordance"}]
      224 GETUPVAL                         R36 16
      225 GETTABLEKS                       R35 R36 K52 ["None"]
      227 SETTABLEKS                       R35 R34 K50 ["affordance"]
      229 SETTABLEKS                       R34 R33 K41 ["stateLayer"]
      231 GETUPVAL                         R35 11
      232 GETTABLEKS                       R34 R35 K53 ["noop"]
      234 SETTABLEKS                       R34 R33 K42 ["onActivated"]
      236 SETTABLEKS                       R1 R33 K43 ["ref"]
      238 GETUPVAL                         R35 17
      239 GETTABLEKS                       R34 R35 K54 ["nonSelectable"]
      241 SETTABLEKS                       R34 R33 K44 ["selection"]
      243 GETUPVAL                         R35 17
      244 GETTABLEKS                       R34 R35 K55 ["isolatedSelectionGroup"]
      246 SETTABLEKS                       R34 R33 K45 ["selectionGroup"]
      248 NEWTABLE                         R34 2 0
      250 LOADB                            R35 1
      251 SETTABLEKS                       R35 R34 K56 ["bg-surface-100 stroke-default stroke-standard"]
      253 NOT                              R35 R7
      254 SETTABLEKS                       R35 R34 K57 ["radius-large"]
      256 SETTABLEKS                       R34 R33 K27 ["tag"]
      258 GETTABLEKS                       R34 R2 K23 ["testId"]
      260 SETTABLEKS                       R34 R33 K23 ["testId"]
      262 DUPTABLE                         R34 K60 [{"Content", "CloseAffordance"}]
      263 GETUPVAL                         R36 8
      264 GETTABLEKS                       R35 R36 K25 ["createElement"]
      266 GETUPVAL                         R36 14
      267 DUPTABLE                         R37 K61 [{"tag"}]
      268 LOADK                            R38 K62 ["size-full-full col items-center clip"]
      269 SETTABLEKS                       R38 R37 K27 ["tag"]
      271 GETUPVAL                         R39 8
      272 GETTABLEKS                       R38 R39 K25 ["createElement"]
      274 GETUPVAL                         R40 18
      275 GETTABLEKS                       R39 R40 K63 ["Provider"]
      277 DUPTABLE                         R40 K65 [{"value"}]
      278 SETTABLEKS                       R25 R40 K64 ["value"]
      280 GETUPVAL                         R43 15
      281 GETTABLEKS                       R42 R43 K29 ["FoundationElevationSystem"]
      283 JUMPIFNOT                        R42 ; [+11]
      284 GETUPVAL                         R42 8
      285 GETTABLEKS                       R41 R42 K25 ["createElement"]
      287 GETUPVAL                         R42 19
      288 DUPTABLE                         R43 K67 [{"owner"}]
      289 SETTABLEKS                       R5 R43 K66 ["owner"]
      291 GETTABLEKS                       R44 R2 K68 ["children"]
      293 CALL                             R41 3 1
      294 JUMP                             ; [+2]
      295 GETTABLEKS                       R41 R2 K68 ["children"]
      297 CALL                             R38 3 -1
      298 CALL                             R35 -1 1
      299 SETTABLEKS                       R35 R34 K58 ["Content"]
      301 GETUPVAL                         R36 8
      302 GETTABLEKS                       R35 R36 K25 ["createElement"]
      304 GETUPVAL                         R36 20
      305 DUPTABLE                         R37 K72 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      306 SETTABLEKS                       R22 R37 K42 ["onActivated"]
      308 GETUPVAL                         R39 21
      309 GETTABLEKS                       R38 R39 K73 ["Utility"]
      311 SETTABLEKS                       R38 R37 K69 ["variant"]
      313 GETIMPORT                        R38 K19 [UDim2.new]
      315 LOADN                            R39 1
      316 GETTABLEKS                       R42 R4 K74 ["Margin"]
      318 GETTABLEKS                       R41 R42 K7 ["Small"]
      320 MINUS                            R40 R41
      321 LOADN                            R41 0
      322 GETTABLEKS                       R43 R4 K74 ["Margin"]
      324 GETTABLEKS                       R42 R43 K7 ["Small"]
      326 CALL                             R38 4 1
      327 SETTABLEKS                       R38 R37 K38 ["Position"]
      329 GETIMPORT                        R38 K76 [Vector2.new]
      331 LOADN                            R39 1
      332 LOADN                            R40 0
      333 CALL                             R38 2 1
      334 SETTABLEKS                       R38 R37 K70 ["AnchorPoint"]
      336 DUPCLOSURE                       R40 K77 [PROTO_6]
      337 NAMECALL                         R38 R18 K21 ["map"]
      339 CALL                             R38 2 1
      340 SETTABLEKS                       R38 R37 K71 ["Visible"]
      342 LOADK                            R39 K78 ["%*--close-affordance"]
      343 GETTABLEKS                       R41 R2 K23 ["testId"]
      345 NAMECALL                         R39 R39 K33 ["format"]
      347 CALL                             R39 2 1
      348 MOVE                             R38 R39
      349 SETTABLEKS                       R38 R37 K23 ["testId"]
      351 CALL                             R35 2 1
      352 SETTABLEKS                       R35 R34 K59 ["CloseAffordance"]
      354 CALL                             R31 3 1
      355 SETTABLEKS                       R31 R30 K0 ["Sheet"]
      357 GETUPVAL                         R32 8
      358 GETTABLEKS                       R31 R32 K25 ["createElement"]
      360 GETUPVAL                         R32 22
      361 DUPTABLE                         R33 K82 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      362 GETUPVAL                         R34 23
      363 SETTABLEKS                       R34 R33 K79 ["Image"]
      365 GETIMPORT                        R35 K84 [UDim2.fromOffset]
      367 GETUPVAL                         R37 24
      368 MULK                             R36 R37 K20 [2]
      369 GETUPVAL                         R38 24
      370 MULK                             R37 R38 K20 [2]
      371 CALL                             R35 2 1
      372 ADD                              R34 R23 R35
      373 SETTABLEKS                       R34 R33 K37 ["Size"]
      375 DUPCLOSURE                       R36 K85 [PROTO_7]
      376 CAPTURE                          UPVAL U24
      377 NAMECALL                         R34 R24 K21 ["map"]
      379 CALL                             R34 2 1
      380 SETTABLEKS                       R34 R33 K38 ["Position"]
      382 LOADN                            R34 2
      383 SETTABLEKS                       R34 R33 K26 ["ZIndex"]
      385 DUPTABLE                         R34 K88 [{"center", "scale"}]
      386 GETIMPORT                        R35 K90 [Rect.new]
      388 GETUPVAL                         R36 24
      389 GETUPVAL                         R37 24
      390 GETUPVAL                         R39 24
      391 ADDK                             R38 R39 K91 [1]
      392 GETUPVAL                         R40 24
      393 ADDK                             R39 R40 K91 [1]
      394 CALL                             R35 4 1
      395 SETTABLEKS                       R35 R34 K86 ["center"]
      397 LOADN                            R35 2
      398 SETTABLEKS                       R35 R34 K87 ["scale"]
      400 SETTABLEKS                       R34 R33 K80 ["slice"]
      402 GETTABLEKS                       R37 R4 K92 ["Color"]
      404 GETTABLEKS                       R36 R37 K93 ["Extended"]
      406 GETTABLEKS                       R35 R36 K94 ["Black"]
      408 GETTABLEKS                       R34 R35 K95 ["Black_10"]
      410 SETTABLEKS                       R34 R33 K81 ["imageStyle"]
      412 CALL                             R31 2 1
      413 SETTABLEKS                       R31 R30 K34 ["Shadow"]
      415 GETUPVAL                         R32 8
      416 GETTABLEKS                       R31 R32 K25 ["createElement"]
      418 GETUPVAL                         R32 14
      419 DUPTABLE                         R33 K97 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      420 GETIMPORT                        R34 K99 [UDim2.fromScale]
      422 LOADN                            R35 2
      423 LOADN                            R36 2
      424 CALL                             R34 2 1
      425 SETTABLEKS                       R34 R33 K37 ["Size"]
      427 GETIMPORT                        R34 K99 [UDim2.fromScale]
      429 LOADK                            R35 K100 [-0.5]
      430 LOADK                            R36 K100 [-0.5]
      431 CALL                             R34 2 1
      432 SETTABLEKS                       R34 R33 K38 ["Position"]
      434 LOADN                            R34 1
      435 SETTABLEKS                       R34 R33 K26 ["ZIndex"]
      437 DUPTABLE                         R34 K51 [{"affordance"}]
      438 GETUPVAL                         R36 16
      439 GETTABLEKS                       R35 R36 K52 ["None"]
      441 SETTABLEKS                       R35 R34 K50 ["affordance"]
      443 SETTABLEKS                       R34 R33 K41 ["stateLayer"]
      445 NEWCLOSURE                       R36 P8
      446 CAPTURE                          VAL R4
      447 NAMECALL                         R34 R11 K21 ["map"]
      449 CALL                             R34 2 1
      450 SETTABLEKS                       R34 R33 K96 ["backgroundStyle"]
      452 SETTABLEKS                       R22 R33 K42 ["onActivated"]
      454 LOADK                            R35 K101 ["%*--backdrop"]
      455 GETTABLEKS                       R37 R2 K23 ["testId"]
      457 NAMECALL                         R35 R35 K33 ["format"]
      459 CALL                             R35 2 1
      460 MOVE                             R34 R35
      461 SETTABLEKS                       R34 R33 K23 ["testId"]
      463 CALL                             R31 2 1
      464 SETTABLEKS                       R31 R30 K35 ["Backdrop"]
      466 CALL                             R27 3 1
      467 MOVE                             R28 R3
      468 CALL                             R26 2 1
      469 RETURN                           R26 1

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
      116 GETTABLEKS                       R21 R0 K13 ["Providers"]
      118 GETTABLEKS                       R20 R21 K28 ["Elevation"]
      120 GETTABLEKS                       R19 R20 K29 ["useElevation"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R20 K6 [require]
      125 GETTABLEKS                       R23 R0 K13 ["Providers"]
      127 GETTABLEKS                       R22 R23 K28 ["Elevation"]
      129 GETTABLEKS                       R21 R22 K30 ["ElevationProvider"]
      131 CALL                             R20 1 1
      132 GETTABLEKS                       R19 R20 K31 ["ElevationOwnerScope"]
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R22 R0 K21 ["Enums"]
      138 GETTABLEKS                       R21 R22 K32 ["ElevationLayer"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R24 K1 [script]
      145 GETTABLEKS                       R23 R24 K4 ["Parent"]
      147 GETTABLEKS                       R22 R23 K33 ["useHardwareInsets"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R24 R0 K34 ["Components"]
      154 GETTABLEKS                       R23 R24 K35 ["View"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R25 R0 K34 ["Components"]
      161 GETTABLEKS                       R24 R25 K36 ["Image"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R26 R0 K34 ["Components"]
      168 GETTABLEKS                       R25 R26 K37 ["CloseAffordance"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K6 [require]
      173 GETTABLEKS                       R27 R0 K18 ["Utility"]
      175 GETTABLEKS                       R26 R27 K38 ["Flags"]
      177 CALL                             R25 1 1
      178 DUPTABLE                         R26 K40 [{"testId"}]
      179 LOADK                            R27 K41 ["--foundation-sheet"]
      180 SETTABLEKS                       R27 R26 K39 ["testId"]
      182 GETTABLEKS                       R27 R14 K42 ["SHADOW_IMAGE"]
      184 GETTABLEKS                       R28 R14 K43 ["SHADOW_SIZE"]
      186 DUPCLOSURE                       R29 K44 [PROTO_9]
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R28
      212 GETTABLEKS                       R30 R2 K45 ["memo"]
      214 GETTABLEKS                       R31 R2 K46 ["forwardRef"]
      216 MOVE                             R32 R29
      217 CALL                             R31 1 -1
      218 CALL                             R30 -1 -1
      219 RETURN                           R30 -1
