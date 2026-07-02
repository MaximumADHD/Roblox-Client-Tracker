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
       12 DUPTABLE                         R7 K3 [{["stackAboveOwner"] = False}]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 6
       15 MOVE                             R7 R3
       16 CALL                             R6 1 1
       17 GETUPVAL                         R8 7
       18 GETTABLEKS                       R8 R8 K4 ["FoundationSideSheetNewWidthCalculation"]
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETUPVAL                         R7 8
       22 CALL                             R7 0 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 GETTABLEKS                       R8 R6 K5 ["right"]
       27 GETUPVAL                         R10 7
       28 GETTABLEKS                       R10 R10 K6 ["FoundationSheetSideSheetTopBarFix"]
       30 JUMPIFNOT                        R10 ; [+3]
       31 GETTABLEKS                       R9 R6 K7 ["top"]
       33 JUMP                             ; [+1]
       34 LOADN                            R9 0
       35 GETTABLEKS                       R11 R2 K8 ["displaySize"]
       37 GETIMPORT                        R12 K12 [Enum.DisplaySize.Small]
       39 JUMPIFEQ                         R11 R12 ; [+2]
       41 LOADB                            R10 0 +1
       42 LOADB                            R10 1
       43 LOADNIL                          R11
       44 LOADNIL                          R12
       45 LOADNIL                          R13
       46 GETUPVAL                         R14 7
       47 GETTABLEKS                       R14 R14 K4 ["FoundationSideSheetNewWidthCalculation"]
       49 JUMPIFNOT                        R14 ; [+26]
       50 GETTABLEKS                       R14 R4 K13 ["Config"]
       52 GETTABLEKS                       R14 R14 K14 ["UI"]
       54 GETTABLEKS                       R14 R14 K15 ["Scale"]
       56 GETUPVAL                         R16 9
       57 GETTABLEKS                       R17 R2 K16 ["size"]
       59 GETTABLE                         R15 R16 R17
       60 GETTABLEKS                       R11 R15 K17 ["TARGET_WIDTH"]
       62 GETUPVAL                         R16 9
       63 GETTABLEKS                       R17 R2 K16 ["size"]
       65 GETTABLE                         R15 R16 R17
       66 GETTABLEKS                       R15 R15 K18 ["MIN"]
       68 MUL                              R12 R15 R14
       69 GETUPVAL                         R16 9
       70 GETTABLEKS                       R17 R2 K16 ["size"]
       72 GETTABLE                         R15 R16 R17
       73 GETTABLEKS                       R15 R15 K19 ["MAX"]
       75 MUL                              R13 R15 R14
       76 GETUPVAL                         R15 7
       77 GETTABLEKS                       R15 R15 K4 ["FoundationSideSheetNewWidthCalculation"]
       79 JUMPIFNOT                        R15 ; [+11]
       80 GETTABLEKS                       R16 R7 K20 ["X"]
       82 MUL                              R15 R16 R11
       83 FASTCALL3                        MATH_CLAMP R15 R12 R13
       85 MOVE                             R16 R12
       86 MOVE                             R17 R13
       87 GETIMPORT                        R14 K23 [math.clamp]
       89 CALL                             R14 3 1
       90 JUMP                             ; [+6]
       91 GETUPVAL                         R14 10
       92 JUMPIFNOT                        R10 ; [+2]
       93 LOADN                            R15 400
       94 JUMP                             ; [+1]
       95 LOADN                            R15 360
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R15 R4 K24 ["Padding"]
       99 GETTABLEKS                       R15 R15 K25 ["Medium"]
      101 GETUPVAL                         R16 11
      102 GETTABLEKS                       R16 R16 K26 ["useRef"]
      104 LOADB                            R17 0
      105 CALL                             R16 1 1
      106 GETUPVAL                         R17 12
      107 LOADN                            R18 1
      108 NEWCLOSURE                       R19 P0
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R2
      111 CALL                             R17 2 2
      112 JUMPIFNOT                        R10 ; [+2]
      113 LOADN                            R21 0
      114 JUMP                             ; [+1]
      115 MOVE                             R21 R15
      116 ADD                              R20 R8 R21
      117 MINUS                            R19 R20
      118 GETUPVAL                         R20 12
      119 MOVE                             R21 R19
      120 CALL                             R20 1 2
      121 GETUPVAL                         R22 11
      122 GETTABLEKS                       R22 R22 K27 ["useBinding"]
      124 LOADB                            R23 0
      125 CALL                             R22 1 2
      126 GETUPVAL                         R24 11
      127 GETTABLEKS                       R24 R24 K27 ["useBinding"]
      129 LOADB                            R25 0
      130 CALL                             R24 1 2
      131 GETUPVAL                         R26 11
      132 GETTABLEKS                       R26 R26 K27 ["useBinding"]
      134 LOADN                            R27 0
      135 CALL                             R26 1 2
      136 GETUPVAL                         R28 11
      137 GETTABLEKS                       R28 R28 K28 ["useEffect"]
      139 NEWCLOSURE                       R29 P1
      140 CAPTURE                          VAL R21
      141 CAPTURE                          UPVAL U13
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R18
      145 NEWTABLE                         R30 0 1
      147 MOVE                             R31 R14
      148 SETLIST                          R30 R31 1 [1]
      150 CALL                             R28 2 0
      151 GETUPVAL                         R28 11
      152 GETTABLEKS                       R28 R28 K29 ["useCallback"]
      154 NEWCLOSURE                       R29 P2
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R21
      157 CAPTURE                          UPVAL U13
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R18
      161 NEWTABLE                         R30 0 1
      163 MOVE                             R31 R19
      164 SETLIST                          R30 R31 1 [1]
      166 CALL                             R28 2 1
      167 GETUPVAL                         R29 11
      168 GETTABLEKS                       R29 R29 K30 ["useImperativeHandle"]
      170 GETTABLEKS                       R30 R2 K31 ["sheetRef"]
      172 NEWCLOSURE                       R31 P3
      173 CAPTURE                          VAL R28
      174 NEWTABLE                         R32 0 0
      176 CALL                             R29 3 0
      177 GETIMPORT                        R29 K34 [UDim2.new]
      179 LOADN                            R30 0
      180 JUMPIFNOT                        R10 ; [+2]
      181 MOVE                             R32 R8
      182 JUMP                             ; [+1]
      183 LOADN                            R32 0
      184 ADD                              R31 R14 R32
      185 LOADN                            R32 1
      186 JUMPIFNOT                        R10 ; [+2]
      187 LOADN                            R34 0
      188 JUMP                             ; [+2]
      189 MINUS                            R35 R15
      190 MULK                             R34 R35 K35 [2]
      191 ADD                              R33 R34 R9
      192 CALL                             R29 4 1
      193 NEWCLOSURE                       R32 P4
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R9
      197 NAMECALL                         R30 R20 K36 ["map"]
      199 CALL                             R30 2 1
      200 GETUPVAL                         R31 11
      201 GETTABLEKS                       R31 R31 K37 ["useMemo"]
      203 NEWCLOSURE                       R32 P5
      204 CAPTURE                          UPVAL U14
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R27
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R28
      212 CAPTURE                          UPVAL U15
      213 CAPTURE                          VAL R2
      214 NEWTABLE                         R33 0 2
      216 GETTABLEKS                       R34 R2 K38 ["testId"]
      218 MOVE                             R35 R28
      219 SETLIST                          R33 R34 2 [1]
      221 CALL                             R31 2 1
      222 MOVE                             R32 R3
      223 JUMPIFNOT                        R32 ; [+274]
      224 GETUPVAL                         R32 16
      225 GETTABLEKS                       R32 R32 K39 ["createPortal"]
      227 GETUPVAL                         R33 11
      228 GETTABLEKS                       R33 R33 K40 ["createElement"]
      230 GETUPVAL                         R34 17
      231 DUPTABLE                         R35 K44 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      232 GETTABLEKS                       R36 R5 K45 ["zIndex"]
      234 SETTABLEKS                       R36 R35 K41 ["ZIndex"]
      236 LOADK                            R37 K46 ["%*--surface"]
      237 GETTABLEKS                       R39 R2 K38 ["testId"]
      239 NAMECALL                         R37 R37 K47 ["format"]
      241 CALL                             R37 2 1
      242 MOVE                             R36 R37
      243 SETTABLEKS                       R36 R35 K38 ["testId"]
      245 DUPTABLE                         R36 K50 [{"Sheet", "Shadow", "Backdrop"}]
      246 GETUPVAL                         R37 11
      247 GETTABLEKS                       R37 R37 K40 ["createElement"]
      249 GETUPVAL                         R38 17
      250 DUPTABLE                         R39 K62 [{["Size"], ["Position"], ["ClipsDescendants"] = True, ["ZIndex"] = 3, ["padding"], ["stateLayer"], ["onActivated"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      251 SETTABLEKS                       R29 R39 K51 ["Size"]
      253 SETTABLEKS                       R30 R39 K52 ["Position"]
      255 JUMPIFNOT                        R10 ; [+12]
      256 LOADN                            R41 0
      257 JUMPIFNOTLT                      R41 R8 ; [+10]
      259 DUPTABLE                         R40 K63 [{"right"}]
      260 GETIMPORT                        R41 K65 [UDim.new]
      262 LOADN                            R42 0
      263 MOVE                             R43 R8
      264 CALL                             R41 2 1
      265 SETTABLEKS                       R41 R40 K5 ["right"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R40
      269 SETTABLEKS                       R40 R39 K56 ["padding"]
      271 DUPTABLE                         R40 K67 [{"affordance"}]
      272 GETUPVAL                         R41 18
      273 GETTABLEKS                       R41 R41 K68 ["None"]
      275 SETTABLEKS                       R41 R40 K66 ["affordance"]
      277 SETTABLEKS                       R40 R39 K57 ["stateLayer"]
      279 GETUPVAL                         R40 14
      280 GETTABLEKS                       R40 R40 K69 ["noop"]
      282 SETTABLEKS                       R40 R39 K58 ["onActivated"]
      284 SETTABLEKS                       R1 R39 K59 ["ref"]
      286 GETUPVAL                         R40 19
      287 GETTABLEKS                       R40 R40 K70 ["nonSelectable"]
      289 SETTABLEKS                       R40 R39 K60 ["selection"]
      291 GETUPVAL                         R40 19
      292 GETTABLEKS                       R40 R40 K71 ["isolatedSelectionGroup"]
      294 SETTABLEKS                       R40 R39 K61 ["selectionGroup"]
      296 NEWTABLE                         R40 2 0
      298 LOADB                            R41 1
      299 SETTABLEKS                       R41 R40 K72 ["bg-surface-100 stroke-default stroke-standard"]
      301 NOT                              R41 R10
      302 SETTABLEKS                       R41 R40 K73 ["radius-large"]
      304 SETTABLEKS                       R40 R39 K42 ["tag"]
      306 GETTABLEKS                       R40 R2 K38 ["testId"]
      308 SETTABLEKS                       R40 R39 K38 ["testId"]
      310 DUPTABLE                         R40 K76 [{"Content", "CloseAffordance"}]
      311 GETUPVAL                         R41 11
      312 GETTABLEKS                       R41 R41 K40 ["createElement"]
      314 GETUPVAL                         R42 17
      315 DUPTABLE                         R43 K78 [{["tag"] = "size-full-full col items-center clip"}]
      316 GETUPVAL                         R44 11
      317 GETTABLEKS                       R44 R44 K40 ["createElement"]
      319 GETUPVAL                         R45 20
      320 GETTABLEKS                       R45 R45 K79 ["Provider"]
      322 DUPTABLE                         R46 K81 [{"value"}]
      323 SETTABLEKS                       R31 R46 K80 ["value"]
      325 GETUPVAL                         R47 11
      326 GETTABLEKS                       R47 R47 K40 ["createElement"]
      328 GETUPVAL                         R48 21
      329 DUPTABLE                         R49 K83 [{"owner"}]
      330 SETTABLEKS                       R5 R49 K82 ["owner"]
      332 GETTABLEKS                       R50 R2 K84 ["children"]
      334 CALL                             R47 3 -1
      335 CALL                             R44 -1 -1
      336 CALL                             R41 -1 1
      337 SETTABLEKS                       R41 R40 K74 ["Content"]
      339 GETUPVAL                         R41 11
      340 GETTABLEKS                       R41 R41 K40 ["createElement"]
      342 GETUPVAL                         R42 22
      343 DUPTABLE                         R43 K88 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      344 SETTABLEKS                       R28 R43 K58 ["onActivated"]
      346 GETUPVAL                         R44 23
      347 GETTABLEKS                       R44 R44 K89 ["Utility"]
      349 SETTABLEKS                       R44 R43 K85 ["variant"]
      351 GETIMPORT                        R44 K34 [UDim2.new]
      353 LOADN                            R45 1
      354 GETTABLEKS                       R47 R4 K90 ["Margin"]
      356 GETTABLEKS                       R47 R47 K11 ["Small"]
      358 MINUS                            R46 R47
      359 LOADN                            R47 0
      360 GETTABLEKS                       R48 R4 K90 ["Margin"]
      362 GETTABLEKS                       R48 R48 K11 ["Small"]
      364 CALL                             R44 4 1
      365 SETTABLEKS                       R44 R43 K52 ["Position"]
      367 GETIMPORT                        R44 K92 [Vector2.new]
      369 LOADN                            R45 1
      370 LOADN                            R46 0
      371 CALL                             R44 2 1
      372 SETTABLEKS                       R44 R43 K86 ["AnchorPoint"]
      374 DUPCLOSURE                       R46 K93 [PROTO_6]
      375 NAMECALL                         R44 R24 K36 ["map"]
      377 CALL                             R44 2 1
      378 SETTABLEKS                       R44 R43 K87 ["Visible"]
      380 LOADK                            R45 K94 ["%*--close-affordance"]
      381 GETTABLEKS                       R47 R2 K38 ["testId"]
      383 NAMECALL                         R45 R45 K47 ["format"]
      385 CALL                             R45 2 1
      386 MOVE                             R44 R45
      387 SETTABLEKS                       R44 R43 K38 ["testId"]
      389 CALL                             R41 2 1
      390 SETTABLEKS                       R41 R40 K75 ["CloseAffordance"]
      392 CALL                             R37 3 1
      393 SETTABLEKS                       R37 R36 K0 ["Sheet"]
      395 GETUPVAL                         R37 11
      396 GETTABLEKS                       R37 R37 K40 ["createElement"]
      398 GETUPVAL                         R38 24
      399 DUPTABLE                         R39 K98 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      400 GETUPVAL                         R40 25
      401 SETTABLEKS                       R40 R39 K95 ["Image"]
      403 GETIMPORT                        R41 K100 [UDim2.fromOffset]
      405 GETUPVAL                         R43 26
      406 MULK                             R42 R43 K35 [2]
      407 GETUPVAL                         R44 26
      408 MULK                             R43 R44 K35 [2]
      409 CALL                             R41 2 1
      410 ADD                              R40 R29 R41
      411 SETTABLEKS                       R40 R39 K51 ["Size"]
      413 DUPCLOSURE                       R42 K101 [PROTO_7]
      414 CAPTURE                          UPVAL U26
      415 NAMECALL                         R40 R30 K36 ["map"]
      417 CALL                             R40 2 1
      418 SETTABLEKS                       R40 R39 K52 ["Position"]
      420 DUPTABLE                         R40 K104 [{["center"], ["scale"] = 2}]
      421 GETIMPORT                        R41 K106 [Rect.new]
      423 GETUPVAL                         R42 26
      424 GETUPVAL                         R43 26
      425 GETUPVAL                         R45 26
      426 ADDK                             R44 R45 K107 [1]
      427 GETUPVAL                         R46 26
      428 ADDK                             R45 R46 K107 [1]
      429 CALL                             R41 4 1
      430 SETTABLEKS                       R41 R40 K102 ["center"]
      432 SETTABLEKS                       R40 R39 K96 ["slice"]
      434 GETTABLEKS                       R40 R4 K108 ["Color"]
      436 GETTABLEKS                       R40 R40 K109 ["Extended"]
      438 GETTABLEKS                       R40 R40 K110 ["Black"]
      440 GETTABLEKS                       R40 R40 K111 ["Black_10"]
      442 SETTABLEKS                       R40 R39 K97 ["imageStyle"]
      444 CALL                             R37 2 1
      445 SETTABLEKS                       R37 R36 K48 ["Shadow"]
      447 GETUPVAL                         R37 11
      448 GETTABLEKS                       R37 R37 K40 ["createElement"]
      450 GETUPVAL                         R38 17
      451 DUPTABLE                         R39 K113 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      452 GETIMPORT                        R40 K115 [UDim2.fromScale]
      454 LOADN                            R41 2
      455 LOADN                            R42 2
      456 CALL                             R40 2 1
      457 SETTABLEKS                       R40 R39 K51 ["Size"]
      459 GETIMPORT                        R40 K115 [UDim2.fromScale]
      461 LOADK                            R41 K116 [-0.5]
      462 LOADK                            R42 K116 [-0.5]
      463 CALL                             R40 2 1
      464 SETTABLEKS                       R40 R39 K52 ["Position"]
      466 DUPTABLE                         R40 K67 [{"affordance"}]
      467 GETUPVAL                         R41 18
      468 GETTABLEKS                       R41 R41 K68 ["None"]
      470 SETTABLEKS                       R41 R40 K66 ["affordance"]
      472 SETTABLEKS                       R40 R39 K57 ["stateLayer"]
      474 NEWCLOSURE                       R42 P8
      475 CAPTURE                          VAL R4
      476 NAMECALL                         R40 R17 K36 ["map"]
      478 CALL                             R40 2 1
      479 SETTABLEKS                       R40 R39 K112 ["backgroundStyle"]
      481 SETTABLEKS                       R28 R39 K58 ["onActivated"]
      483 LOADK                            R41 K117 ["%*--backdrop"]
      484 GETTABLEKS                       R43 R2 K38 ["testId"]
      486 NAMECALL                         R41 R41 K47 ["format"]
      488 CALL                             R41 2 1
      489 MOVE                             R40 R41
      490 SETTABLEKS                       R40 R39 K38 ["testId"]
      492 CALL                             R37 2 1
      493 SETTABLEKS                       R37 R36 K49 ["Backdrop"]
      495 CALL                             R33 3 1
      496 MOVE                             R34 R3
      497 CALL                             R32 2 1
      498 RETURN                           R32 1

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
      143 GETTABLEKS                       R22 R0 K13 ["Enums"]
      145 GETTABLEKS                       R22 R22 K33 ["DialogSize"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K4 ["Parent"]
      154 GETTABLEKS                       R23 R23 K34 ["useHardwareInsets"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K4 ["Parent"]
      163 GETTABLEKS                       R24 R24 K35 ["useScreenSize"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R25 R0 K36 ["Components"]
      170 GETTABLEKS                       R25 R25 K37 ["CloseAffordance"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R26 R0 K20 ["Utility"]
      177 GETTABLEKS                       R26 R26 K38 ["Flags"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R27 R0 K36 ["Components"]
      184 GETTABLEKS                       R27 R27 K39 ["Image"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K6 [require]
      189 GETTABLEKS                       R28 R0 K36 ["Components"]
      191 GETTABLEKS                       R28 R28 K40 ["View"]
      193 CALL                             R27 1 1
      194 NEWTABLE                         R28 2 0
      196 GETTABLEKS                       R29 R21 K41 ["Medium"]
      198 DUPTABLE                         R30 K48 [{["TARGET_WIDTH"] = 0.4, ["MIN"] = 360, ["MAX"] = 440}]
      199 SETTABLE                         R30 R28 R29
      200 GETTABLEKS                       R29 R21 K49 ["Large"]
      202 DUPTABLE                         R30 K52 [{["TARGET_WIDTH"] = 0.5, ["MIN"] = 440, ["MAX"] = 640}]
      203 SETTABLE                         R30 R28 R29
      204 DUPTABLE                         R29 K56 [{["testId"] = "--foundation-sheet", ["size"]}]
      205 GETTABLEKS                       R31 R25 K57 ["FoundationSideSheetNewWidthCalculation"]
      207 JUMPIFNOT                        R31 ; [+3]
      208 GETTABLEKS                       R30 R21 K41 ["Medium"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R30
      212 SETTABLEKS                       R30 R29 K55 ["size"]
      214 GETTABLEKS                       R30 R9 K58 ["SHADOW_IMAGE"]
      216 GETTABLEKS                       R31 R9 K59 ["SHADOW_SIZE"]
      218 DUPCLOSURE                       R32 K60 [PROTO_9]
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R29
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R22
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R12
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R6
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R16
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R8
      243 CAPTURE                          VAL R26
      244 CAPTURE                          VAL R30
      245 CAPTURE                          VAL R31
      246 GETTABLEKS                       R33 R4 K61 ["memo"]
      248 GETTABLEKS                       R34 R4 K62 ["forwardRef"]
      250 MOVE                             R35 R32
      251 CALL                             R34 1 -1
      252 CALL                             R33 -1 -1
      253 RETURN                           R33 -1
