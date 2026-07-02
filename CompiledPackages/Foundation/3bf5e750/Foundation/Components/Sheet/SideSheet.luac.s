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
       12 DUPTABLE                         R7 K3 [{["relativeToOwner"] = False}]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 6
       15 MOVE                             R7 R3
       16 CALL                             R6 1 1
       17 GETTABLEKS                       R7 R6 K4 ["right"]
       19 GETUPVAL                         R9 7
       20 GETTABLEKS                       R9 R9 K5 ["FoundationSheetSideSheetTopBarFix"]
       22 JUMPIFNOT                        R9 ; [+3]
       23 GETTABLEKS                       R8 R6 K6 ["top"]
       25 JUMP                             ; [+1]
       26 LOADN                            R8 0
       27 GETTABLEKS                       R10 R2 K7 ["displaySize"]
       29 GETIMPORT                        R11 K11 [Enum.DisplaySize.Small]
       31 JUMPIFEQ                         R10 R11 ; [+2]
       33 LOADB                            R9 0 +1
       34 LOADB                            R9 1
       35 GETUPVAL                         R10 8
       36 JUMPIFNOT                        R9 ; [+2]
       37 LOADN                            R11 400
       38 JUMP                             ; [+1]
       39 LOADN                            R11 360
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R11 R4 K12 ["Padding"]
       43 GETTABLEKS                       R11 R11 K13 ["Medium"]
       45 GETUPVAL                         R12 9
       46 GETTABLEKS                       R12 R12 K14 ["useRef"]
       48 LOADB                            R13 0
       49 CALL                             R12 1 1
       50 GETUPVAL                         R13 10
       51 LOADN                            R14 1
       52 NEWCLOSURE                       R15 P0
       53 CAPTURE                          VAL R12
       54 CAPTURE                          VAL R2
       55 CALL                             R13 2 2
       56 JUMPIFNOT                        R9 ; [+2]
       57 LOADN                            R17 0
       58 JUMP                             ; [+1]
       59 MOVE                             R17 R11
       60 ADD                              R16 R7 R17
       61 MINUS                            R15 R16
       62 GETUPVAL                         R16 10
       63 MOVE                             R17 R15
       64 CALL                             R16 1 2
       65 GETUPVAL                         R18 9
       66 GETTABLEKS                       R18 R18 K15 ["useBinding"]
       68 LOADB                            R19 0
       69 CALL                             R18 1 2
       70 GETUPVAL                         R20 9
       71 GETTABLEKS                       R20 R20 K15 ["useBinding"]
       73 LOADB                            R21 0
       74 CALL                             R20 1 2
       75 GETUPVAL                         R22 9
       76 GETTABLEKS                       R22 R22 K15 ["useBinding"]
       78 LOADN                            R23 0
       79 CALL                             R22 1 2
       80 GETUPVAL                         R24 9
       81 GETTABLEKS                       R24 R24 K16 ["useEffect"]
       83 NEWCLOSURE                       R25 P1
       84 CAPTURE                          VAL R17
       85 CAPTURE                          UPVAL U11
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R14
       89 NEWTABLE                         R26 0 1
       91 MOVE                             R27 R10
       92 SETLIST                          R26 R27 1 [1]
       94 CALL                             R24 2 0
       95 GETUPVAL                         R24 9
       96 GETTABLEKS                       R24 R24 K17 ["useCallback"]
       98 NEWCLOSURE                       R25 P2
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R17
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R14
      105 NEWTABLE                         R26 0 1
      107 MOVE                             R27 R15
      108 SETLIST                          R26 R27 1 [1]
      110 CALL                             R24 2 1
      111 GETUPVAL                         R25 9
      112 GETTABLEKS                       R25 R25 K18 ["useImperativeHandle"]
      114 GETTABLEKS                       R26 R2 K19 ["sheetRef"]
      116 NEWCLOSURE                       R27 P3
      117 CAPTURE                          VAL R24
      118 NEWTABLE                         R28 0 0
      120 CALL                             R25 3 0
      121 GETIMPORT                        R25 K22 [UDim2.new]
      123 LOADN                            R26 0
      124 JUMPIFNOT                        R9 ; [+2]
      125 MOVE                             R28 R7
      126 JUMP                             ; [+1]
      127 LOADN                            R28 0
      128 ADD                              R27 R10 R28
      129 LOADN                            R28 1
      130 JUMPIFNOT                        R9 ; [+2]
      131 LOADN                            R30 0
      132 JUMP                             ; [+2]
      133 MINUS                            R31 R11
      134 MULK                             R30 R31 K23 [2]
      135 ADD                              R29 R30 R8
      136 CALL                             R25 4 1
      137 NEWCLOSURE                       R28 P4
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R8
      141 NAMECALL                         R26 R16 K24 ["map"]
      143 CALL                             R26 2 1
      144 GETUPVAL                         R27 9
      145 GETTABLEKS                       R27 R27 K25 ["useMemo"]
      147 NEWCLOSURE                       R28 P5
      148 CAPTURE                          UPVAL U12
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R24
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          VAL R2
      158 NEWTABLE                         R29 0 2
      160 GETTABLEKS                       R30 R2 K26 ["testId"]
      162 MOVE                             R31 R24
      163 SETLIST                          R29 R30 2 [1]
      165 CALL                             R27 2 1
      166 MOVE                             R28 R3
      167 JUMPIFNOT                        R28 ; [+274]
      168 GETUPVAL                         R28 14
      169 GETTABLEKS                       R28 R28 K27 ["createPortal"]
      171 GETUPVAL                         R29 9
      172 GETTABLEKS                       R29 R29 K28 ["createElement"]
      174 GETUPVAL                         R30 15
      175 DUPTABLE                         R31 K32 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      176 GETTABLEKS                       R32 R5 K33 ["zIndex"]
      178 SETTABLEKS                       R32 R31 K29 ["ZIndex"]
      180 LOADK                            R33 K34 ["%*--surface"]
      181 GETTABLEKS                       R35 R2 K26 ["testId"]
      183 NAMECALL                         R33 R33 K35 ["format"]
      185 CALL                             R33 2 1
      186 MOVE                             R32 R33
      187 SETTABLEKS                       R32 R31 K26 ["testId"]
      189 DUPTABLE                         R32 K38 [{"Sheet", "Shadow", "Backdrop"}]
      190 GETUPVAL                         R33 9
      191 GETTABLEKS                       R33 R33 K28 ["createElement"]
      193 GETUPVAL                         R34 15
      194 DUPTABLE                         R35 K50 [{["Size"], ["Position"], ["ClipsDescendants"] = True, ["ZIndex"] = 3, ["padding"], ["stateLayer"], ["onActivated"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      195 SETTABLEKS                       R25 R35 K39 ["Size"]
      197 SETTABLEKS                       R26 R35 K40 ["Position"]
      199 JUMPIFNOT                        R9 ; [+12]
      200 LOADN                            R37 0
      201 JUMPIFNOTLT                      R37 R7 ; [+10]
      203 DUPTABLE                         R36 K51 [{"right"}]
      204 GETIMPORT                        R37 K53 [UDim.new]
      206 LOADN                            R38 0
      207 MOVE                             R39 R7
      208 CALL                             R37 2 1
      209 SETTABLEKS                       R37 R36 K4 ["right"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R36
      213 SETTABLEKS                       R36 R35 K44 ["padding"]
      215 DUPTABLE                         R36 K55 [{"affordance"}]
      216 GETUPVAL                         R37 16
      217 GETTABLEKS                       R37 R37 K56 ["None"]
      219 SETTABLEKS                       R37 R36 K54 ["affordance"]
      221 SETTABLEKS                       R36 R35 K45 ["stateLayer"]
      223 GETUPVAL                         R36 12
      224 GETTABLEKS                       R36 R36 K57 ["noop"]
      226 SETTABLEKS                       R36 R35 K46 ["onActivated"]
      228 SETTABLEKS                       R1 R35 K47 ["ref"]
      230 GETUPVAL                         R36 17
      231 GETTABLEKS                       R36 R36 K58 ["nonSelectable"]
      233 SETTABLEKS                       R36 R35 K48 ["selection"]
      235 GETUPVAL                         R36 17
      236 GETTABLEKS                       R36 R36 K59 ["isolatedSelectionGroup"]
      238 SETTABLEKS                       R36 R35 K49 ["selectionGroup"]
      240 NEWTABLE                         R36 2 0
      242 LOADB                            R37 1
      243 SETTABLEKS                       R37 R36 K60 ["bg-surface-100 stroke-default stroke-standard"]
      245 NOT                              R37 R9
      246 SETTABLEKS                       R37 R36 K61 ["radius-large"]
      248 SETTABLEKS                       R36 R35 K30 ["tag"]
      250 GETTABLEKS                       R36 R2 K26 ["testId"]
      252 SETTABLEKS                       R36 R35 K26 ["testId"]
      254 DUPTABLE                         R36 K64 [{"Content", "CloseAffordance"}]
      255 GETUPVAL                         R37 9
      256 GETTABLEKS                       R37 R37 K28 ["createElement"]
      258 GETUPVAL                         R38 15
      259 DUPTABLE                         R39 K66 [{["tag"] = "size-full-full col items-center clip"}]
      260 GETUPVAL                         R40 9
      261 GETTABLEKS                       R40 R40 K28 ["createElement"]
      263 GETUPVAL                         R41 18
      264 GETTABLEKS                       R41 R41 K67 ["Provider"]
      266 DUPTABLE                         R42 K69 [{"value"}]
      267 SETTABLEKS                       R27 R42 K68 ["value"]
      269 GETUPVAL                         R43 9
      270 GETTABLEKS                       R43 R43 K28 ["createElement"]
      272 GETUPVAL                         R44 19
      273 DUPTABLE                         R45 K71 [{"owner"}]
      274 SETTABLEKS                       R5 R45 K70 ["owner"]
      276 GETTABLEKS                       R46 R2 K72 ["children"]
      278 CALL                             R43 3 -1
      279 CALL                             R40 -1 -1
      280 CALL                             R37 -1 1
      281 SETTABLEKS                       R37 R36 K62 ["Content"]
      283 GETUPVAL                         R37 9
      284 GETTABLEKS                       R37 R37 K28 ["createElement"]
      286 GETUPVAL                         R38 20
      287 DUPTABLE                         R39 K76 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      288 SETTABLEKS                       R24 R39 K46 ["onActivated"]
      290 GETUPVAL                         R40 21
      291 GETTABLEKS                       R40 R40 K77 ["Utility"]
      293 SETTABLEKS                       R40 R39 K73 ["variant"]
      295 GETIMPORT                        R40 K22 [UDim2.new]
      297 LOADN                            R41 1
      298 GETTABLEKS                       R43 R4 K78 ["Margin"]
      300 GETTABLEKS                       R43 R43 K10 ["Small"]
      302 MINUS                            R42 R43
      303 LOADN                            R43 0
      304 GETTABLEKS                       R44 R4 K78 ["Margin"]
      306 GETTABLEKS                       R44 R44 K10 ["Small"]
      308 CALL                             R40 4 1
      309 SETTABLEKS                       R40 R39 K40 ["Position"]
      311 GETIMPORT                        R40 K80 [Vector2.new]
      313 LOADN                            R41 1
      314 LOADN                            R42 0
      315 CALL                             R40 2 1
      316 SETTABLEKS                       R40 R39 K74 ["AnchorPoint"]
      318 DUPCLOSURE                       R42 K81 [PROTO_6]
      319 NAMECALL                         R40 R20 K24 ["map"]
      321 CALL                             R40 2 1
      322 SETTABLEKS                       R40 R39 K75 ["Visible"]
      324 LOADK                            R41 K82 ["%*--close-affordance"]
      325 GETTABLEKS                       R43 R2 K26 ["testId"]
      327 NAMECALL                         R41 R41 K35 ["format"]
      329 CALL                             R41 2 1
      330 MOVE                             R40 R41
      331 SETTABLEKS                       R40 R39 K26 ["testId"]
      333 CALL                             R37 2 1
      334 SETTABLEKS                       R37 R36 K63 ["CloseAffordance"]
      336 CALL                             R33 3 1
      337 SETTABLEKS                       R33 R32 K0 ["Sheet"]
      339 GETUPVAL                         R33 9
      340 GETTABLEKS                       R33 R33 K28 ["createElement"]
      342 GETUPVAL                         R34 22
      343 DUPTABLE                         R35 K86 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      344 GETUPVAL                         R36 23
      345 SETTABLEKS                       R36 R35 K83 ["Image"]
      347 GETIMPORT                        R37 K88 [UDim2.fromOffset]
      349 GETUPVAL                         R39 24
      350 MULK                             R38 R39 K23 [2]
      351 GETUPVAL                         R40 24
      352 MULK                             R39 R40 K23 [2]
      353 CALL                             R37 2 1
      354 ADD                              R36 R25 R37
      355 SETTABLEKS                       R36 R35 K39 ["Size"]
      357 DUPCLOSURE                       R38 K89 [PROTO_7]
      358 CAPTURE                          UPVAL U24
      359 NAMECALL                         R36 R26 K24 ["map"]
      361 CALL                             R36 2 1
      362 SETTABLEKS                       R36 R35 K40 ["Position"]
      364 DUPTABLE                         R36 K92 [{["center"], ["scale"] = 2}]
      365 GETIMPORT                        R37 K94 [Rect.new]
      367 GETUPVAL                         R38 24
      368 GETUPVAL                         R39 24
      369 GETUPVAL                         R41 24
      370 ADDK                             R40 R41 K95 [1]
      371 GETUPVAL                         R42 24
      372 ADDK                             R41 R42 K95 [1]
      373 CALL                             R37 4 1
      374 SETTABLEKS                       R37 R36 K90 ["center"]
      376 SETTABLEKS                       R36 R35 K84 ["slice"]
      378 GETTABLEKS                       R36 R4 K96 ["Color"]
      380 GETTABLEKS                       R36 R36 K97 ["Extended"]
      382 GETTABLEKS                       R36 R36 K98 ["Black"]
      384 GETTABLEKS                       R36 R36 K99 ["Black_10"]
      386 SETTABLEKS                       R36 R35 K85 ["imageStyle"]
      388 CALL                             R33 2 1
      389 SETTABLEKS                       R33 R32 K36 ["Shadow"]
      391 GETUPVAL                         R33 9
      392 GETTABLEKS                       R33 R33 K28 ["createElement"]
      394 GETUPVAL                         R34 15
      395 DUPTABLE                         R35 K101 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      396 GETIMPORT                        R36 K103 [UDim2.fromScale]
      398 LOADN                            R37 2
      399 LOADN                            R38 2
      400 CALL                             R36 2 1
      401 SETTABLEKS                       R36 R35 K39 ["Size"]
      403 GETIMPORT                        R36 K103 [UDim2.fromScale]
      405 LOADK                            R37 K104 [-0.5]
      406 LOADK                            R38 K104 [-0.5]
      407 CALL                             R36 2 1
      408 SETTABLEKS                       R36 R35 K40 ["Position"]
      410 DUPTABLE                         R36 K55 [{"affordance"}]
      411 GETUPVAL                         R37 16
      412 GETTABLEKS                       R37 R37 K56 ["None"]
      414 SETTABLEKS                       R37 R36 K54 ["affordance"]
      416 SETTABLEKS                       R36 R35 K45 ["stateLayer"]
      418 NEWCLOSURE                       R38 P8
      419 CAPTURE                          VAL R4
      420 NAMECALL                         R36 R13 K24 ["map"]
      422 CALL                             R36 2 1
      423 SETTABLEKS                       R36 R35 K100 ["backgroundStyle"]
      425 SETTABLEKS                       R24 R35 K46 ["onActivated"]
      427 LOADK                            R37 K105 ["%*--backdrop"]
      428 GETTABLEKS                       R39 R2 K26 ["testId"]
      430 NAMECALL                         R37 R37 K35 ["format"]
      432 CALL                             R37 2 1
      433 MOVE                             R36 R37
      434 SETTABLEKS                       R36 R35 K26 ["testId"]
      436 CALL                             R33 2 1
      437 SETTABLEKS                       R33 R32 K37 ["Backdrop"]
      439 CALL                             R29 3 1
      440 MOVE                             R30 R3
      441 CALL                             R28 2 1
      442 RETURN                           R28 1

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
      178 DUPTABLE                         R26 K41 [{["testId"] = "--foundation-sheet"}]
      179 GETTABLEKS                       R27 R9 K42 ["SHADOW_IMAGE"]
      181 GETTABLEKS                       R28 R9 K43 ["SHADOW_SIZE"]
      183 DUPCLOSURE                       R29 K44 [PROTO_9]
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R17
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R25
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R27
      208 CAPTURE                          VAL R28
      209 GETTABLEKS                       R30 R4 K45 ["memo"]
      211 GETTABLEKS                       R31 R4 K46 ["forwardRef"]
      213 MOVE                             R32 R29
      214 CALL                             R31 1 -1
      215 CALL                             R30 -1 -1
      216 RETURN                           R30 -1
