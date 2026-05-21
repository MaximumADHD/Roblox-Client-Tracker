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
       11 GETUPVAL                         R7 0
       12 JUMPIFNOT                        R7 ; [+2]
       13 LOADN                            R6 0
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R6 1
       16 GETUPVAL                         R7 2
       17 SUB                              R5 R6 R7
       18 CALL                             R1 4 -1
       19 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R0 K16 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "testId"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K17 ["noop"]
        7 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["sheetHeightAvailable"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K17 ["noop"]
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
       47 GETUPVAL                         R1 8
       48 GETTABLEKS                       R1 R1 K18 ["Side"]
       50 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       52 GETUPVAL                         R1 9
       53 GETTABLEKS                       R1 R1 K15 ["testId"]
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
       12 DUPTABLE                         R7 K2 [{"relativeToOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["relativeToOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 MOVE                             R7 R3
       19 CALL                             R6 1 1
       20 GETTABLEKS                       R7 R6 K3 ["right"]
       22 GETUPVAL                         R9 7
       23 GETTABLEKS                       R9 R9 K4 ["FoundationSheetSideSheetTopBarFix"]
       25 JUMPIFNOT                        R9 ; [+3]
       26 GETTABLEKS                       R8 R6 K5 ["top"]
       28 JUMP                             ; [+1]
       29 LOADN                            R8 0
       30 GETTABLEKS                       R10 R2 K6 ["displaySize"]
       32 GETIMPORT                        R11 K10 [Enum.DisplaySize.Small]
       34 JUMPIFEQ                         R10 R11 ; [+2]
       36 LOADB                            R9 0 +1
       37 LOADB                            R9 1
       38 GETUPVAL                         R10 8
       39 JUMPIFNOT                        R9 ; [+2]
       40 LOADN                            R11 144
       41 JUMP                             ; [+1]
       42 LOADN                            R11 104
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R11 R4 K11 ["Padding"]
       46 GETTABLEKS                       R11 R11 K12 ["Medium"]
       48 GETUPVAL                         R12 9
       49 GETTABLEKS                       R12 R12 K13 ["useRef"]
       51 LOADB                            R13 0
       52 CALL                             R12 1 1
       53 GETUPVAL                         R13 10
       54 LOADN                            R14 1
       55 NEWCLOSURE                       R15 P0
       56 CAPTURE                          VAL R12
       57 CAPTURE                          VAL R2
       58 CALL                             R13 2 2
       59 JUMPIFNOT                        R9 ; [+2]
       60 LOADN                            R17 0
       61 JUMP                             ; [+1]
       62 MOVE                             R17 R11
       63 ADD                              R16 R7 R17
       64 MINUS                            R15 R16
       65 GETUPVAL                         R16 10
       66 MOVE                             R17 R15
       67 CALL                             R16 1 2
       68 GETUPVAL                         R18 9
       69 GETTABLEKS                       R18 R18 K14 ["useBinding"]
       71 LOADB                            R19 0
       72 CALL                             R18 1 2
       73 GETUPVAL                         R20 9
       74 GETTABLEKS                       R20 R20 K14 ["useBinding"]
       76 LOADB                            R21 0
       77 CALL                             R20 1 2
       78 GETUPVAL                         R22 9
       79 GETTABLEKS                       R22 R22 K14 ["useBinding"]
       81 LOADN                            R23 0
       82 CALL                             R22 1 2
       83 GETUPVAL                         R24 9
       84 GETTABLEKS                       R24 R24 K15 ["useEffect"]
       86 NEWCLOSURE                       R25 P1
       87 CAPTURE                          VAL R17
       88 CAPTURE                          UPVAL U11
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R14
       92 NEWTABLE                         R26 0 1
       94 MOVE                             R27 R10
       95 SETLIST                          R26 R27 1 [1]
       97 CALL                             R24 2 0
       98 GETUPVAL                         R24 9
       99 GETTABLEKS                       R24 R24 K16 ["useCallback"]
      101 NEWCLOSURE                       R25 P2
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R17
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R14
      108 NEWTABLE                         R26 0 1
      110 MOVE                             R27 R15
      111 SETLIST                          R26 R27 1 [1]
      113 CALL                             R24 2 1
      114 GETUPVAL                         R25 9
      115 GETTABLEKS                       R25 R25 K17 ["useImperativeHandle"]
      117 GETTABLEKS                       R26 R2 K18 ["sheetRef"]
      119 NEWCLOSURE                       R27 P3
      120 CAPTURE                          VAL R24
      121 NEWTABLE                         R28 0 0
      123 CALL                             R25 3 0
      124 GETIMPORT                        R25 K21 [UDim2.new]
      126 LOADN                            R26 0
      127 JUMPIFNOT                        R9 ; [+2]
      128 MOVE                             R28 R7
      129 JUMP                             ; [+1]
      130 LOADN                            R28 0
      131 ADD                              R27 R10 R28
      132 LOADN                            R28 1
      133 JUMPIFNOT                        R9 ; [+2]
      134 LOADN                            R30 0
      135 JUMP                             ; [+2]
      136 MINUS                            R31 R11
      137 MULK                             R30 R31 K22 [2]
      138 ADD                              R29 R30 R8
      139 CALL                             R25 4 1
      140 NEWCLOSURE                       R28 P4
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R8
      144 NAMECALL                         R26 R16 K23 ["map"]
      146 CALL                             R26 2 1
      147 GETUPVAL                         R27 9
      148 GETTABLEKS                       R27 R27 K24 ["useMemo"]
      150 NEWCLOSURE                       R28 P5
      151 CAPTURE                          UPVAL U12
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R24
      159 CAPTURE                          UPVAL U13
      160 CAPTURE                          VAL R2
      161 NEWTABLE                         R29 0 2
      163 GETTABLEKS                       R30 R2 K25 ["testId"]
      165 MOVE                             R31 R24
      166 SETLIST                          R29 R30 2 [1]
      168 CALL                             R27 2 1
      169 MOVE                             R28 R3
      170 JUMPIFNOT                        R28 ; [+295]
      171 GETUPVAL                         R28 14
      172 GETTABLEKS                       R28 R28 K26 ["createPortal"]
      174 GETUPVAL                         R29 9
      175 GETTABLEKS                       R29 R29 K27 ["createElement"]
      177 GETUPVAL                         R30 15
      178 DUPTABLE                         R31 K30 [{"ZIndex", "tag", "testId"}]
      179 GETTABLEKS                       R32 R5 K31 ["zIndex"]
      181 SETTABLEKS                       R32 R31 K28 ["ZIndex"]
      183 LOADK                            R32 K32 ["size-full"]
      184 SETTABLEKS                       R32 R31 K29 ["tag"]
      186 LOADK                            R33 K33 ["%*--surface"]
      187 GETTABLEKS                       R35 R2 K25 ["testId"]
      189 NAMECALL                         R33 R33 K34 ["format"]
      191 CALL                             R33 2 1
      192 MOVE                             R32 R33
      193 SETTABLEKS                       R32 R31 K25 ["testId"]
      195 DUPTABLE                         R32 K37 [{"Sheet", "Shadow", "Backdrop"}]
      196 GETUPVAL                         R33 9
      197 GETTABLEKS                       R33 R33 K27 ["createElement"]
      199 GETUPVAL                         R34 15
      200 DUPTABLE                         R35 K47 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      201 SETTABLEKS                       R25 R35 K38 ["Size"]
      203 SETTABLEKS                       R26 R35 K39 ["Position"]
      205 LOADB                            R36 1
      206 SETTABLEKS                       R36 R35 K40 ["ClipsDescendants"]
      208 LOADN                            R36 3
      209 SETTABLEKS                       R36 R35 K28 ["ZIndex"]
      211 JUMPIFNOT                        R9 ; [+12]
      212 LOADN                            R37 0
      213 JUMPIFNOTLT                      R37 R7 ; [+10]
      215 DUPTABLE                         R36 K48 [{"right"}]
      216 GETIMPORT                        R37 K50 [UDim.new]
      218 LOADN                            R38 0
      219 MOVE                             R39 R7
      220 CALL                             R37 2 1
      221 SETTABLEKS                       R37 R36 K3 ["right"]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R36
      225 SETTABLEKS                       R36 R35 K41 ["padding"]
      227 DUPTABLE                         R36 K52 [{"affordance"}]
      228 GETUPVAL                         R37 16
      229 GETTABLEKS                       R37 R37 K53 ["None"]
      231 SETTABLEKS                       R37 R36 K51 ["affordance"]
      233 SETTABLEKS                       R36 R35 K42 ["stateLayer"]
      235 GETUPVAL                         R36 12
      236 GETTABLEKS                       R36 R36 K54 ["noop"]
      238 SETTABLEKS                       R36 R35 K43 ["onActivated"]
      240 SETTABLEKS                       R1 R35 K44 ["ref"]
      242 GETUPVAL                         R36 17
      243 GETTABLEKS                       R36 R36 K55 ["nonSelectable"]
      245 SETTABLEKS                       R36 R35 K45 ["selection"]
      247 GETUPVAL                         R36 17
      248 GETTABLEKS                       R36 R36 K56 ["isolatedSelectionGroup"]
      250 SETTABLEKS                       R36 R35 K46 ["selectionGroup"]
      252 NEWTABLE                         R36 2 0
      254 LOADB                            R37 1
      255 SETTABLEKS                       R37 R36 K57 ["bg-surface-100 stroke-default stroke-standard"]
      257 NOT                              R37 R9
      258 SETTABLEKS                       R37 R36 K58 ["radius-large"]
      260 SETTABLEKS                       R36 R35 K29 ["tag"]
      262 GETTABLEKS                       R36 R2 K25 ["testId"]
      264 SETTABLEKS                       R36 R35 K25 ["testId"]
      266 DUPTABLE                         R36 K61 [{"Content", "CloseAffordance"}]
      267 GETUPVAL                         R37 9
      268 GETTABLEKS                       R37 R37 K27 ["createElement"]
      270 GETUPVAL                         R38 15
      271 DUPTABLE                         R39 K62 [{"tag"}]
      272 LOADK                            R40 K63 ["size-full-full col items-center clip"]
      273 SETTABLEKS                       R40 R39 K29 ["tag"]
      275 GETUPVAL                         R40 9
      276 GETTABLEKS                       R40 R40 K27 ["createElement"]
      278 GETUPVAL                         R41 18
      279 GETTABLEKS                       R41 R41 K64 ["Provider"]
      281 DUPTABLE                         R42 K66 [{"value"}]
      282 SETTABLEKS                       R27 R42 K65 ["value"]
      284 GETUPVAL                         R43 9
      285 GETTABLEKS                       R43 R43 K27 ["createElement"]
      287 GETUPVAL                         R44 19
      288 DUPTABLE                         R45 K68 [{"owner"}]
      289 SETTABLEKS                       R5 R45 K67 ["owner"]
      291 GETTABLEKS                       R46 R2 K69 ["children"]
      293 CALL                             R43 3 -1
      294 CALL                             R40 -1 -1
      295 CALL                             R37 -1 1
      296 SETTABLEKS                       R37 R36 K59 ["Content"]
      298 GETUPVAL                         R37 9
      299 GETTABLEKS                       R37 R37 K27 ["createElement"]
      301 GETUPVAL                         R38 20
      302 DUPTABLE                         R39 K73 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      303 SETTABLEKS                       R24 R39 K43 ["onActivated"]
      305 GETUPVAL                         R40 21
      306 GETTABLEKS                       R40 R40 K74 ["Utility"]
      308 SETTABLEKS                       R40 R39 K70 ["variant"]
      310 GETIMPORT                        R40 K21 [UDim2.new]
      312 LOADN                            R41 1
      313 GETTABLEKS                       R43 R4 K75 ["Margin"]
      315 GETTABLEKS                       R43 R43 K9 ["Small"]
      317 MINUS                            R42 R43
      318 LOADN                            R43 0
      319 GETTABLEKS                       R44 R4 K75 ["Margin"]
      321 GETTABLEKS                       R44 R44 K9 ["Small"]
      323 CALL                             R40 4 1
      324 SETTABLEKS                       R40 R39 K39 ["Position"]
      326 GETIMPORT                        R40 K77 [Vector2.new]
      328 LOADN                            R41 1
      329 LOADN                            R42 0
      330 CALL                             R40 2 1
      331 SETTABLEKS                       R40 R39 K71 ["AnchorPoint"]
      333 DUPCLOSURE                       R42 K78 [PROTO_6]
      334 NAMECALL                         R40 R20 K23 ["map"]
      336 CALL                             R40 2 1
      337 SETTABLEKS                       R40 R39 K72 ["Visible"]
      339 LOADK                            R41 K79 ["%*--close-affordance"]
      340 GETTABLEKS                       R43 R2 K25 ["testId"]
      342 NAMECALL                         R41 R41 K34 ["format"]
      344 CALL                             R41 2 1
      345 MOVE                             R40 R41
      346 SETTABLEKS                       R40 R39 K25 ["testId"]
      348 CALL                             R37 2 1
      349 SETTABLEKS                       R37 R36 K60 ["CloseAffordance"]
      351 CALL                             R33 3 1
      352 SETTABLEKS                       R33 R32 K0 ["Sheet"]
      354 GETUPVAL                         R33 9
      355 GETTABLEKS                       R33 R33 K27 ["createElement"]
      357 GETUPVAL                         R34 22
      358 DUPTABLE                         R35 K83 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      359 GETUPVAL                         R36 23
      360 SETTABLEKS                       R36 R35 K80 ["Image"]
      362 GETIMPORT                        R37 K85 [UDim2.fromOffset]
      364 GETUPVAL                         R39 24
      365 MULK                             R38 R39 K22 [2]
      366 GETUPVAL                         R40 24
      367 MULK                             R39 R40 K22 [2]
      368 CALL                             R37 2 1
      369 ADD                              R36 R25 R37
      370 SETTABLEKS                       R36 R35 K38 ["Size"]
      372 DUPCLOSURE                       R38 K86 [PROTO_7]
      373 CAPTURE                          UPVAL U24
      374 NAMECALL                         R36 R26 K23 ["map"]
      376 CALL                             R36 2 1
      377 SETTABLEKS                       R36 R35 K39 ["Position"]
      379 LOADN                            R36 2
      380 SETTABLEKS                       R36 R35 K28 ["ZIndex"]
      382 DUPTABLE                         R36 K89 [{"center", "scale"}]
      383 GETIMPORT                        R37 K91 [Rect.new]
      385 GETUPVAL                         R38 24
      386 GETUPVAL                         R39 24
      387 GETUPVAL                         R41 24
      388 ADDK                             R40 R41 K92 [1]
      389 GETUPVAL                         R42 24
      390 ADDK                             R41 R42 K92 [1]
      391 CALL                             R37 4 1
      392 SETTABLEKS                       R37 R36 K87 ["center"]
      394 LOADN                            R37 2
      395 SETTABLEKS                       R37 R36 K88 ["scale"]
      397 SETTABLEKS                       R36 R35 K81 ["slice"]
      399 GETTABLEKS                       R36 R4 K93 ["Color"]
      401 GETTABLEKS                       R36 R36 K94 ["Extended"]
      403 GETTABLEKS                       R36 R36 K95 ["Black"]
      405 GETTABLEKS                       R36 R36 K96 ["Black_10"]
      407 SETTABLEKS                       R36 R35 K82 ["imageStyle"]
      409 CALL                             R33 2 1
      410 SETTABLEKS                       R33 R32 K35 ["Shadow"]
      412 GETUPVAL                         R33 9
      413 GETTABLEKS                       R33 R33 K27 ["createElement"]
      415 GETUPVAL                         R34 15
      416 DUPTABLE                         R35 K98 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      417 GETIMPORT                        R36 K100 [UDim2.fromScale]
      419 LOADN                            R37 2
      420 LOADN                            R38 2
      421 CALL                             R36 2 1
      422 SETTABLEKS                       R36 R35 K38 ["Size"]
      424 GETIMPORT                        R36 K100 [UDim2.fromScale]
      426 LOADK                            R37 K101 [-0.5]
      427 LOADK                            R38 K101 [-0.5]
      428 CALL                             R36 2 1
      429 SETTABLEKS                       R36 R35 K39 ["Position"]
      431 LOADN                            R36 1
      432 SETTABLEKS                       R36 R35 K28 ["ZIndex"]
      434 DUPTABLE                         R36 K52 [{"affordance"}]
      435 GETUPVAL                         R37 16
      436 GETTABLEKS                       R37 R37 K53 ["None"]
      438 SETTABLEKS                       R37 R36 K51 ["affordance"]
      440 SETTABLEKS                       R36 R35 K42 ["stateLayer"]
      442 NEWCLOSURE                       R38 P8
      443 CAPTURE                          VAL R4
      444 NAMECALL                         R36 R13 K23 ["map"]
      446 CALL                             R36 2 1
      447 SETTABLEKS                       R36 R35 K97 ["backgroundStyle"]
      449 SETTABLEKS                       R24 R35 K43 ["onActivated"]
      451 LOADK                            R37 K102 ["%*--backdrop"]
      452 GETTABLEKS                       R39 R2 K25 ["testId"]
      454 NAMECALL                         R37 R37 K34 ["format"]
      456 CALL                             R37 2 1
      457 MOVE                             R36 R37
      458 SETTABLEKS                       R36 R35 K25 ["testId"]
      460 CALL                             R33 2 1
      461 SETTABLEKS                       R33 R32 K36 ["Backdrop"]
      463 CALL                             R29 3 1
      464 MOVE                             R30 R3
      465 CALL                             R28 2 1
      466 RETURN                           R28 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Otter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ReactRoblox"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R5 K12 ["useAnimatedBinding"]
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Enums"]
       40 GETTABLEKS                       R9 R9 K14 ["CloseAffordanceVariant"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K13 ["Enums"]
       52 GETTABLEKS                       R11 R11 K16 ["StateLayerAffordance"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R0 K17 ["Providers"]
       59 GETTABLEKS                       R12 R12 K18 ["Overlay"]
       61 GETTABLEKS                       R12 R12 K19 ["useOverlay"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K20 ["Utility"]
       68 GETTABLEKS                       R13 R13 K21 ["useScaledValue"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R0 K17 ["Providers"]
       75 GETTABLEKS                       R14 R14 K22 ["Style"]
       77 GETTABLEKS                       R14 R14 K23 ["useTokens"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K20 ["Utility"]
       84 GETTABLEKS                       R15 R15 K24 ["withDefaults"]
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
      116 GETTABLEKS                       R19 R0 K17 ["Providers"]
      118 GETTABLEKS                       R19 R19 K28 ["Elevation"]
      120 GETTABLEKS                       R19 R19 K29 ["useElevation"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R20 R0 K17 ["Providers"]
      127 GETTABLEKS                       R20 R20 K28 ["Elevation"]
      129 GETTABLEKS                       R20 R20 K30 ["ElevationProvider"]
      131 CALL                             R19 1 1
      132 GETTABLEKS                       R19 R19 K31 ["ElevationOwnerScope"]
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R21 R0 K13 ["Enums"]
      138 GETTABLEKS                       R21 R21 K32 ["ElevationLayer"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K4 ["Parent"]
      147 GETTABLEKS                       R22 R22 K33 ["useHardwareInsets"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R23 R0 K34 ["Components"]
      154 GETTABLEKS                       R23 R23 K35 ["CloseAffordance"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R24 R0 K20 ["Utility"]
      161 GETTABLEKS                       R24 R24 K36 ["Flags"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R25 R0 K34 ["Components"]
      168 GETTABLEKS                       R25 R25 K37 ["Image"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K6 [require]
      173 GETTABLEKS                       R26 R0 K34 ["Components"]
      175 GETTABLEKS                       R26 R26 K38 ["View"]
      177 CALL                             R25 1 1
      178 DUPTABLE                         R26 K40 [{"testId"}]
      179 LOADK                            R27 K41 ["--foundation-sheet"]
      180 SETTABLEKS                       R27 R26 K39 ["testId"]
      182 GETTABLEKS                       R27 R9 K42 ["SHADOW_IMAGE"]
      184 GETTABLEKS                       R28 R9 K43 ["SHADOW_SIZE"]
      186 DUPCLOSURE                       R29 K44 [PROTO_9]
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R22
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R28
      212 GETTABLEKS                       R30 R4 K45 ["memo"]
      214 GETTABLEKS                       R31 R4 K46 ["forwardRef"]
      216 MOVE                             R32 R29
      217 CALL                             R31 1 -1
      218 CALL                             R30 -1 -1
      219 RETURN                           R30 -1
