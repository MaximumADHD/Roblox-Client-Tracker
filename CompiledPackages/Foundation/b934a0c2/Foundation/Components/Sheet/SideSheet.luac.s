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
       17 GETUPVAL                         R6 6
       18 MOVE                             R7 R3
       19 CALL                             R6 1 1
       20 GETUPVAL                         R9 7
       21 GETTABLEKS                       R8 R9 K3 ["FoundationSideSheetNewWidthCalculation"]
       23 JUMPIFNOT                        R8 ; [+3]
       24 GETUPVAL                         R7 8
       25 CALL                             R7 0 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R7
       28 GETTABLEKS                       R8 R6 K4 ["right"]
       30 GETUPVAL                         R11 7
       31 GETTABLEKS                       R10 R11 K5 ["FoundationSheetSideSheetTopBarFix"]
       33 JUMPIFNOT                        R10 ; [+3]
       34 GETTABLEKS                       R9 R6 K6 ["top"]
       36 JUMP                             ; [+1]
       37 LOADN                            R9 0
       38 GETTABLEKS                       R11 R2 K7 ["displaySize"]
       40 GETIMPORT                        R12 K11 [Enum.DisplaySize.Small]
       42 JUMPIFEQ                         R11 R12 ; [+2]
       44 LOADB                            R10 0 +1
       45 LOADB                            R10 1
       46 LOADNIL                          R11
       47 LOADNIL                          R12
       48 LOADNIL                          R13
       49 GETUPVAL                         R15 7
       50 GETTABLEKS                       R14 R15 K3 ["FoundationSideSheetNewWidthCalculation"]
       52 JUMPIFNOT                        R14 ; [+26]
       53 GETTABLEKS                       R16 R4 K12 ["Config"]
       55 GETTABLEKS                       R15 R16 K13 ["UI"]
       57 GETTABLEKS                       R14 R15 K14 ["Scale"]
       59 GETUPVAL                         R16 9
       60 GETTABLEKS                       R17 R2 K15 ["size"]
       62 GETTABLE                         R15 R16 R17
       63 GETTABLEKS                       R11 R15 K16 ["TARGET_WIDTH"]
       65 GETUPVAL                         R17 9
       66 GETTABLEKS                       R18 R2 K15 ["size"]
       68 GETTABLE                         R16 R17 R18
       69 GETTABLEKS                       R15 R16 K17 ["MIN"]
       71 MUL                              R12 R15 R14
       72 GETUPVAL                         R17 9
       73 GETTABLEKS                       R18 R2 K15 ["size"]
       75 GETTABLE                         R16 R17 R18
       76 GETTABLEKS                       R15 R16 K18 ["MAX"]
       78 MUL                              R13 R15 R14
       79 GETUPVAL                         R16 7
       80 GETTABLEKS                       R15 R16 K3 ["FoundationSideSheetNewWidthCalculation"]
       82 JUMPIFNOT                        R15 ; [+11]
       83 GETTABLEKS                       R16 R7 K19 ["X"]
       85 MUL                              R15 R16 R11
       86 FASTCALL3                        MATH_CLAMP R15 R12 R13
       88 MOVE                             R16 R12
       89 MOVE                             R17 R13
       90 GETIMPORT                        R14 K22 [math.clamp]
       92 CALL                             R14 3 1
       93 JUMP                             ; [+6]
       94 GETUPVAL                         R14 10
       95 JUMPIFNOT                        R10 ; [+2]
       96 LOADN                            R15 144
       97 JUMP                             ; [+1]
       98 LOADN                            R15 104
       99 CALL                             R14 1 1
      100 GETTABLEKS                       R16 R4 K23 ["Padding"]
      102 GETTABLEKS                       R15 R16 K24 ["Medium"]
      104 GETUPVAL                         R17 11
      105 GETTABLEKS                       R16 R17 K25 ["useRef"]
      107 LOADB                            R17 0
      108 CALL                             R16 1 1
      109 GETUPVAL                         R17 12
      110 LOADN                            R18 1
      111 NEWCLOSURE                       R19 P0
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R2
      114 CALL                             R17 2 2
      115 JUMPIFNOT                        R10 ; [+2]
      116 LOADN                            R21 0
      117 JUMP                             ; [+1]
      118 MOVE                             R21 R15
      119 ADD                              R20 R8 R21
      120 MINUS                            R19 R20
      121 GETUPVAL                         R20 12
      122 MOVE                             R21 R19
      123 CALL                             R20 1 2
      124 GETUPVAL                         R23 11
      125 GETTABLEKS                       R22 R23 K26 ["useBinding"]
      127 LOADB                            R23 0
      128 CALL                             R22 1 2
      129 GETUPVAL                         R25 11
      130 GETTABLEKS                       R24 R25 K26 ["useBinding"]
      132 LOADB                            R25 0
      133 CALL                             R24 1 2
      134 GETUPVAL                         R27 11
      135 GETTABLEKS                       R26 R27 K26 ["useBinding"]
      137 LOADN                            R27 0
      138 CALL                             R26 1 2
      139 GETUPVAL                         R29 11
      140 GETTABLEKS                       R28 R29 K27 ["useEffect"]
      142 NEWCLOSURE                       R29 P1
      143 CAPTURE                          VAL R21
      144 CAPTURE                          UPVAL U13
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R18
      148 NEWTABLE                         R30 0 1
      150 MOVE                             R31 R14
      151 SETLIST                          R30 R31 1 [1]
      153 CALL                             R28 2 0
      154 GETUPVAL                         R29 11
      155 GETTABLEKS                       R28 R29 K28 ["useCallback"]
      157 NEWCLOSURE                       R29 P2
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R21
      160 CAPTURE                          UPVAL U13
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R18
      164 NEWTABLE                         R30 0 1
      166 MOVE                             R31 R19
      167 SETLIST                          R30 R31 1 [1]
      169 CALL                             R28 2 1
      170 GETUPVAL                         R30 11
      171 GETTABLEKS                       R29 R30 K29 ["useImperativeHandle"]
      173 GETTABLEKS                       R30 R2 K30 ["sheetRef"]
      175 NEWCLOSURE                       R31 P3
      176 CAPTURE                          VAL R28
      177 NEWTABLE                         R32 0 0
      179 CALL                             R29 3 0
      180 GETIMPORT                        R29 K33 [UDim2.new]
      182 LOADN                            R30 0
      183 JUMPIFNOT                        R10 ; [+2]
      184 MOVE                             R32 R8
      185 JUMP                             ; [+1]
      186 LOADN                            R32 0
      187 ADD                              R31 R14 R32
      188 LOADN                            R32 1
      189 JUMPIFNOT                        R10 ; [+2]
      190 LOADN                            R34 0
      191 JUMP                             ; [+2]
      192 MINUS                            R35 R15
      193 MULK                             R34 R35 K34 [2]
      194 ADD                              R33 R34 R9
      195 CALL                             R29 4 1
      196 NEWCLOSURE                       R32 P4
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R9
      200 NAMECALL                         R30 R20 K35 ["map"]
      202 CALL                             R30 2 1
      203 GETUPVAL                         R32 11
      204 GETTABLEKS                       R31 R32 K36 ["useMemo"]
      206 NEWCLOSURE                       R32 P5
      207 CAPTURE                          UPVAL U14
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R25
      214 CAPTURE                          VAL R28
      215 CAPTURE                          UPVAL U15
      216 CAPTURE                          VAL R2
      217 NEWTABLE                         R33 0 2
      219 GETTABLEKS                       R34 R2 K37 ["testId"]
      221 MOVE                             R35 R28
      222 SETLIST                          R33 R34 2 [1]
      224 CALL                             R31 2 1
      225 MOVE                             R32 R3
      226 JUMPIFNOT                        R32 ; [+295]
      227 GETUPVAL                         R33 16
      228 GETTABLEKS                       R32 R33 K38 ["createPortal"]
      230 GETUPVAL                         R34 11
      231 GETTABLEKS                       R33 R34 K39 ["createElement"]
      233 GETUPVAL                         R34 17
      234 DUPTABLE                         R35 K42 [{"ZIndex", "tag", "testId"}]
      235 GETTABLEKS                       R36 R5 K43 ["zIndex"]
      237 SETTABLEKS                       R36 R35 K40 ["ZIndex"]
      239 LOADK                            R36 K44 ["size-full"]
      240 SETTABLEKS                       R36 R35 K41 ["tag"]
      242 LOADK                            R37 K45 ["%*--surface"]
      243 GETTABLEKS                       R39 R2 K37 ["testId"]
      245 NAMECALL                         R37 R37 K46 ["format"]
      247 CALL                             R37 2 1
      248 MOVE                             R36 R37
      249 SETTABLEKS                       R36 R35 K37 ["testId"]
      251 DUPTABLE                         R36 K49 [{"Sheet", "Shadow", "Backdrop"}]
      252 GETUPVAL                         R38 11
      253 GETTABLEKS                       R37 R38 K39 ["createElement"]
      255 GETUPVAL                         R38 17
      256 DUPTABLE                         R39 K59 [{"Size", "Position", "ClipsDescendants", "ZIndex", "padding", "stateLayer", "onActivated", "ref", "selection", "selectionGroup", "tag", "testId"}]
      257 SETTABLEKS                       R29 R39 K50 ["Size"]
      259 SETTABLEKS                       R30 R39 K51 ["Position"]
      261 LOADB                            R40 1
      262 SETTABLEKS                       R40 R39 K52 ["ClipsDescendants"]
      264 LOADN                            R40 3
      265 SETTABLEKS                       R40 R39 K40 ["ZIndex"]
      267 JUMPIFNOT                        R10 ; [+12]
      268 LOADN                            R41 0
      269 JUMPIFNOTLT                      R41 R8 ; [+10]
      271 DUPTABLE                         R40 K60 [{"right"}]
      272 GETIMPORT                        R41 K62 [UDim.new]
      274 LOADN                            R42 0
      275 MOVE                             R43 R8
      276 CALL                             R41 2 1
      277 SETTABLEKS                       R41 R40 K4 ["right"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R40
      281 SETTABLEKS                       R40 R39 K53 ["padding"]
      283 DUPTABLE                         R40 K64 [{"affordance"}]
      284 GETUPVAL                         R42 18
      285 GETTABLEKS                       R41 R42 K65 ["None"]
      287 SETTABLEKS                       R41 R40 K63 ["affordance"]
      289 SETTABLEKS                       R40 R39 K54 ["stateLayer"]
      291 GETUPVAL                         R41 14
      292 GETTABLEKS                       R40 R41 K66 ["noop"]
      294 SETTABLEKS                       R40 R39 K55 ["onActivated"]
      296 SETTABLEKS                       R1 R39 K56 ["ref"]
      298 GETUPVAL                         R41 19
      299 GETTABLEKS                       R40 R41 K67 ["nonSelectable"]
      301 SETTABLEKS                       R40 R39 K57 ["selection"]
      303 GETUPVAL                         R41 19
      304 GETTABLEKS                       R40 R41 K68 ["isolatedSelectionGroup"]
      306 SETTABLEKS                       R40 R39 K58 ["selectionGroup"]
      308 NEWTABLE                         R40 2 0
      310 LOADB                            R41 1
      311 SETTABLEKS                       R41 R40 K69 ["bg-surface-100 stroke-default stroke-standard"]
      313 NOT                              R41 R10
      314 SETTABLEKS                       R41 R40 K70 ["radius-large"]
      316 SETTABLEKS                       R40 R39 K41 ["tag"]
      318 GETTABLEKS                       R40 R2 K37 ["testId"]
      320 SETTABLEKS                       R40 R39 K37 ["testId"]
      322 DUPTABLE                         R40 K73 [{"Content", "CloseAffordance"}]
      323 GETUPVAL                         R42 11
      324 GETTABLEKS                       R41 R42 K39 ["createElement"]
      326 GETUPVAL                         R42 17
      327 DUPTABLE                         R43 K74 [{"tag"}]
      328 LOADK                            R44 K75 ["size-full-full col items-center clip"]
      329 SETTABLEKS                       R44 R43 K41 ["tag"]
      331 GETUPVAL                         R45 11
      332 GETTABLEKS                       R44 R45 K39 ["createElement"]
      334 GETUPVAL                         R46 20
      335 GETTABLEKS                       R45 R46 K76 ["Provider"]
      337 DUPTABLE                         R46 K78 [{"value"}]
      338 SETTABLEKS                       R31 R46 K77 ["value"]
      340 GETUPVAL                         R48 11
      341 GETTABLEKS                       R47 R48 K39 ["createElement"]
      343 GETUPVAL                         R48 21
      344 DUPTABLE                         R49 K80 [{"owner"}]
      345 SETTABLEKS                       R5 R49 K79 ["owner"]
      347 GETTABLEKS                       R50 R2 K81 ["children"]
      349 CALL                             R47 3 -1
      350 CALL                             R44 -1 -1
      351 CALL                             R41 -1 1
      352 SETTABLEKS                       R41 R40 K71 ["Content"]
      354 GETUPVAL                         R42 11
      355 GETTABLEKS                       R41 R42 K39 ["createElement"]
      357 GETUPVAL                         R42 22
      358 DUPTABLE                         R43 K85 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      359 SETTABLEKS                       R28 R43 K55 ["onActivated"]
      361 GETUPVAL                         R45 23
      362 GETTABLEKS                       R44 R45 K86 ["Utility"]
      364 SETTABLEKS                       R44 R43 K82 ["variant"]
      366 GETIMPORT                        R44 K33 [UDim2.new]
      368 LOADN                            R45 1
      369 GETTABLEKS                       R48 R4 K87 ["Margin"]
      371 GETTABLEKS                       R47 R48 K10 ["Small"]
      373 MINUS                            R46 R47
      374 LOADN                            R47 0
      375 GETTABLEKS                       R49 R4 K87 ["Margin"]
      377 GETTABLEKS                       R48 R49 K10 ["Small"]
      379 CALL                             R44 4 1
      380 SETTABLEKS                       R44 R43 K51 ["Position"]
      382 GETIMPORT                        R44 K89 [Vector2.new]
      384 LOADN                            R45 1
      385 LOADN                            R46 0
      386 CALL                             R44 2 1
      387 SETTABLEKS                       R44 R43 K83 ["AnchorPoint"]
      389 DUPCLOSURE                       R46 K90 [PROTO_6]
      390 NAMECALL                         R44 R24 K35 ["map"]
      392 CALL                             R44 2 1
      393 SETTABLEKS                       R44 R43 K84 ["Visible"]
      395 LOADK                            R45 K91 ["%*--close-affordance"]
      396 GETTABLEKS                       R47 R2 K37 ["testId"]
      398 NAMECALL                         R45 R45 K46 ["format"]
      400 CALL                             R45 2 1
      401 MOVE                             R44 R45
      402 SETTABLEKS                       R44 R43 K37 ["testId"]
      404 CALL                             R41 2 1
      405 SETTABLEKS                       R41 R40 K72 ["CloseAffordance"]
      407 CALL                             R37 3 1
      408 SETTABLEKS                       R37 R36 K0 ["Sheet"]
      410 GETUPVAL                         R38 11
      411 GETTABLEKS                       R37 R38 K39 ["createElement"]
      413 GETUPVAL                         R38 24
      414 DUPTABLE                         R39 K95 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      415 GETUPVAL                         R40 25
      416 SETTABLEKS                       R40 R39 K92 ["Image"]
      418 GETIMPORT                        R41 K97 [UDim2.fromOffset]
      420 GETUPVAL                         R43 26
      421 MULK                             R42 R43 K34 [2]
      422 GETUPVAL                         R44 26
      423 MULK                             R43 R44 K34 [2]
      424 CALL                             R41 2 1
      425 ADD                              R40 R29 R41
      426 SETTABLEKS                       R40 R39 K50 ["Size"]
      428 DUPCLOSURE                       R42 K98 [PROTO_7]
      429 CAPTURE                          UPVAL U26
      430 NAMECALL                         R40 R30 K35 ["map"]
      432 CALL                             R40 2 1
      433 SETTABLEKS                       R40 R39 K51 ["Position"]
      435 LOADN                            R40 2
      436 SETTABLEKS                       R40 R39 K40 ["ZIndex"]
      438 DUPTABLE                         R40 K101 [{"center", "scale"}]
      439 GETIMPORT                        R41 K103 [Rect.new]
      441 GETUPVAL                         R42 26
      442 GETUPVAL                         R43 26
      443 GETUPVAL                         R45 26
      444 ADDK                             R44 R45 K104 [1]
      445 GETUPVAL                         R46 26
      446 ADDK                             R45 R46 K104 [1]
      447 CALL                             R41 4 1
      448 SETTABLEKS                       R41 R40 K99 ["center"]
      450 LOADN                            R41 2
      451 SETTABLEKS                       R41 R40 K100 ["scale"]
      453 SETTABLEKS                       R40 R39 K93 ["slice"]
      455 GETTABLEKS                       R43 R4 K105 ["Color"]
      457 GETTABLEKS                       R42 R43 K106 ["Extended"]
      459 GETTABLEKS                       R41 R42 K107 ["Black"]
      461 GETTABLEKS                       R40 R41 K108 ["Black_10"]
      463 SETTABLEKS                       R40 R39 K94 ["imageStyle"]
      465 CALL                             R37 2 1
      466 SETTABLEKS                       R37 R36 K47 ["Shadow"]
      468 GETUPVAL                         R38 11
      469 GETTABLEKS                       R37 R38 K39 ["createElement"]
      471 GETUPVAL                         R38 17
      472 DUPTABLE                         R39 K110 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      473 GETIMPORT                        R40 K112 [UDim2.fromScale]
      475 LOADN                            R41 2
      476 LOADN                            R42 2
      477 CALL                             R40 2 1
      478 SETTABLEKS                       R40 R39 K50 ["Size"]
      480 GETIMPORT                        R40 K112 [UDim2.fromScale]
      482 LOADK                            R41 K113 [-0.5]
      483 LOADK                            R42 K113 [-0.5]
      484 CALL                             R40 2 1
      485 SETTABLEKS                       R40 R39 K51 ["Position"]
      487 LOADN                            R40 1
      488 SETTABLEKS                       R40 R39 K40 ["ZIndex"]
      490 DUPTABLE                         R40 K64 [{"affordance"}]
      491 GETUPVAL                         R42 18
      492 GETTABLEKS                       R41 R42 K65 ["None"]
      494 SETTABLEKS                       R41 R40 K63 ["affordance"]
      496 SETTABLEKS                       R40 R39 K54 ["stateLayer"]
      498 NEWCLOSURE                       R42 P8
      499 CAPTURE                          VAL R4
      500 NAMECALL                         R40 R17 K35 ["map"]
      502 CALL                             R40 2 1
      503 SETTABLEKS                       R40 R39 K109 ["backgroundStyle"]
      505 SETTABLEKS                       R28 R39 K55 ["onActivated"]
      507 LOADK                            R41 K114 ["%*--backdrop"]
      508 GETTABLEKS                       R43 R2 K37 ["testId"]
      510 NAMECALL                         R41 R41 K46 ["format"]
      512 CALL                             R41 2 1
      513 MOVE                             R40 R41
      514 SETTABLEKS                       R40 R39 K37 ["testId"]
      516 CALL                             R37 2 1
      517 SETTABLEKS                       R37 R36 K48 ["Backdrop"]
      519 CALL                             R33 3 1
      520 MOVE                             R34 R3
      521 CALL                             R32 2 1
      522 RETURN                           R32 1

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
       38 GETTABLEKS                       R10 R0 K13 ["Enums"]
       40 GETTABLEKS                       R9 R10 K14 ["CloseAffordanceVariant"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K13 ["Enums"]
       52 GETTABLEKS                       R11 R12 K16 ["StateLayerAffordance"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R14 R0 K17 ["Providers"]
       59 GETTABLEKS                       R13 R14 K18 ["Overlay"]
       61 GETTABLEKS                       R12 R13 K19 ["useOverlay"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R14 R0 K20 ["Utility"]
       68 GETTABLEKS                       R13 R14 K21 ["useScaledValue"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R16 R0 K17 ["Providers"]
       75 GETTABLEKS                       R15 R16 K22 ["Style"]
       77 GETTABLEKS                       R14 R15 K23 ["useTokens"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R16 R0 K20 ["Utility"]
       84 GETTABLEKS                       R15 R16 K24 ["withDefaults"]
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
      116 GETTABLEKS                       R21 R0 K17 ["Providers"]
      118 GETTABLEKS                       R20 R21 K28 ["Elevation"]
      120 GETTABLEKS                       R19 R20 K29 ["useElevation"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R20 K6 [require]
      125 GETTABLEKS                       R23 R0 K17 ["Providers"]
      127 GETTABLEKS                       R22 R23 K28 ["Elevation"]
      129 GETTABLEKS                       R21 R22 K30 ["ElevationProvider"]
      131 CALL                             R20 1 1
      132 GETTABLEKS                       R19 R20 K31 ["ElevationOwnerScope"]
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R22 R0 K13 ["Enums"]
      138 GETTABLEKS                       R21 R22 K32 ["ElevationLayer"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETTABLEKS                       R23 R0 K13 ["Enums"]
      145 GETTABLEKS                       R22 R23 K33 ["DialogSize"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R25 K1 [script]
      152 GETTABLEKS                       R24 R25 K4 ["Parent"]
      154 GETTABLEKS                       R23 R24 K34 ["useHardwareInsets"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R26 K1 [script]
      161 GETTABLEKS                       R25 R26 K4 ["Parent"]
      163 GETTABLEKS                       R24 R25 K35 ["useScreenSize"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R26 R0 K36 ["Components"]
      170 GETTABLEKS                       R25 R26 K37 ["CloseAffordance"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R27 R0 K20 ["Utility"]
      177 GETTABLEKS                       R26 R27 K38 ["Flags"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R28 R0 K36 ["Components"]
      184 GETTABLEKS                       R27 R28 K39 ["Image"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K6 [require]
      189 GETTABLEKS                       R29 R0 K36 ["Components"]
      191 GETTABLEKS                       R28 R29 K40 ["View"]
      193 CALL                             R27 1 1
      194 NEWTABLE                         R28 2 0
      196 GETTABLEKS                       R29 R21 K41 ["Medium"]
      198 DUPTABLE                         R30 K45 [{"TARGET_WIDTH", "MIN", "MAX"}]
      199 LOADK                            R31 K46 [0.4]
      200 SETTABLEKS                       R31 R30 K42 ["TARGET_WIDTH"]
      202 LOADN                            R31 104
      203 SETTABLEKS                       R31 R30 K43 ["MIN"]
      205 LOADN                            R31 184
      206 SETTABLEKS                       R31 R30 K44 ["MAX"]
      208 SETTABLE                         R30 R28 R29
      209 GETTABLEKS                       R29 R21 K47 ["Large"]
      211 DUPTABLE                         R30 K45 [{"TARGET_WIDTH", "MIN", "MAX"}]
      212 LOADK                            R31 K48 [0.5]
      213 SETTABLEKS                       R31 R30 K42 ["TARGET_WIDTH"]
      215 LOADN                            R31 184
      216 SETTABLEKS                       R31 R30 K43 ["MIN"]
      218 LOADN                            R31 128
      219 SETTABLEKS                       R31 R30 K44 ["MAX"]
      221 SETTABLE                         R30 R28 R29
      222 DUPTABLE                         R29 K51 [{"testId", "size"}]
      223 LOADK                            R30 K52 ["--foundation-sheet"]
      224 SETTABLEKS                       R30 R29 K49 ["testId"]
      226 GETTABLEKS                       R31 R25 K53 ["FoundationSideSheetNewWidthCalculation"]
      228 JUMPIFNOT                        R31 ; [+3]
      229 GETTABLEKS                       R30 R21 K41 ["Medium"]
      231 JUMP                             ; [+1]
      232 LOADNIL                          R30
      233 SETTABLEKS                       R30 R29 K50 ["size"]
      235 GETTABLEKS                       R30 R9 K54 ["SHADOW_IMAGE"]
      237 GETTABLEKS                       R31 R9 K55 ["SHADOW_SIZE"]
      239 DUPCLOSURE                       R32 K56 [PROTO_9]
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R29
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R18
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R22
      247 CAPTURE                          VAL R25
      248 CAPTURE                          VAL R23
      249 CAPTURE                          VAL R28
      250 CAPTURE                          VAL R12
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R7
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R17
      256 CAPTURE                          VAL R6
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R16
      260 CAPTURE                          VAL R15
      261 CAPTURE                          VAL R19
      262 CAPTURE                          VAL R24
      263 CAPTURE                          VAL R8
      264 CAPTURE                          VAL R26
      265 CAPTURE                          VAL R30
      266 CAPTURE                          VAL R31
      267 GETTABLEKS                       R33 R4 K57 ["memo"]
      269 GETTABLEKS                       R34 R4 K58 ["forwardRef"]
      271 MOVE                             R35 R32
      272 CALL                             R34 1 -1
      273 CALL                             R33 -1 -1
      274 RETURN                           R33 -1
