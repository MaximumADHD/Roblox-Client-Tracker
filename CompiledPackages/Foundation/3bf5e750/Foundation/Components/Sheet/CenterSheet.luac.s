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
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ease"]
        4 LOADN                            R2 0
        5 DUPTABLE                         R3 K3 [{"easingStyle", "duration"}]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K4 ["Ease"]
        9 GETTABLEKS                       R4 R4 K5 ["StandardOut"]
       11 SETTABLEKS                       R4 R3 K1 ["easingStyle"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K6 ["Time"]
       16 GETTABLEKS                       R4 R4 K7 ["Time_300"]
       18 SETTABLEKS                       R4 R3 K2 ["duration"]
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 3
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K0 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K8 [{"duration"}]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K6 ["Time"]
       31 GETTABLEKS                       R4 R4 K9 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K2 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_3:
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
       42 GETUPVAL                         R0 6
       43 LOADB                            R1 1
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 0
       46 LOADB                            R1 1
       47 SETTABLEKS                       R1 R0 K0 ["current"]
       49 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

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
       33 GETTABLEKS                       R1 R1 K20 ["Center"]
       35 SETTABLEKS                       R1 R0 K16 ["sheetType"]
       37 GETUPVAL                         R1 9
       38 GETTABLEKS                       R1 R1 K17 ["testId"]
       40 SETTABLEKS                       R1 R0 K17 ["testId"]
       42 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADN                            R3 0
        4 LOADK                            R4 K3 [0.5]
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 DIV                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 GETUPVAL                         R4 0
        4 MULK                             R3 R4 K3 [2]
        5 LOADN                            R4 0
        6 GETUPVAL                         R7 0
        7 MULK                             R6 R7 K3 [2]
        8 ADD                              R5 R0 R6
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_11:
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

PROTO_12:
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
       15 GETUPVAL                         R8 7
       16 GETTABLEKS                       R9 R2 K4 ["size"]
       18 GETTABLE                         R7 R8 R9
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 6
       21 LOADN                            R8 600
       22 CALL                             R7 1 1
       23 GETTABLEKS                       R8 R4 K5 ["Size"]
       25 GETTABLEKS                       R8 R8 K6 ["Size_800"]
       27 GETUPVAL                         R9 8
       28 GETTABLEKS                       R9 R9 K7 ["useState"]
       30 LOADB                            R10 1
       31 CALL                             R9 1 2
       32 GETUPVAL                         R11 8
       33 GETTABLEKS                       R11 R11 K8 ["useRef"]
       35 LOADB                            R12 0
       36 CALL                             R11 1 1
       37 GETUPVAL                         R12 9
       38 LOADN                            R13 1
       39 NEWCLOSURE                       R14 P0
       40 CAPTURE                          VAL R11
       41 CAPTURE                          VAL R2
       42 CALL                             R12 2 2
       43 GETUPVAL                         R14 9
       44 MOVE                             R15 R8
       45 NEWCLOSURE                       R16 P1
       46 CAPTURE                          VAL R10
       47 CALL                             R14 2 2
       48 GETUPVAL                         R16 8
       49 GETTABLEKS                       R16 R16 K9 ["useBinding"]
       51 LOADB                            R17 0
       52 CALL                             R16 1 2
       53 GETUPVAL                         R18 8
       54 GETTABLEKS                       R18 R18 K9 ["useBinding"]
       56 LOADB                            R19 0
       57 CALL                             R18 1 2
       58 GETUPVAL                         R20 8
       59 GETTABLEKS                       R20 R20 K9 ["useBinding"]
       61 LOADN                            R21 0
       62 CALL                             R20 1 2
       63 GETUPVAL                         R22 8
       64 GETTABLEKS                       R22 R22 K9 ["useBinding"]
       66 LOADN                            R23 0
       67 CALL                             R22 1 2
       68 GETUPVAL                         R24 8
       69 GETTABLEKS                       R24 R24 K10 ["useEffect"]
       71 NEWCLOSURE                       R25 P2
       72 CAPTURE                          VAL R15
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R13
       76 NEWTABLE                         R26 0 0
       78 CALL                             R24 2 0
       79 GETUPVAL                         R24 8
       80 GETTABLEKS                       R24 R24 K11 ["useCallback"]
       82 NEWCLOSURE                       R25 P3
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R15
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R10
       90 NEWTABLE                         R26 0 1
       92 MOVE                             R27 R8
       93 SETLIST                          R26 R27 1 [1]
       95 CALL                             R24 2 1
       96 GETUPVAL                         R25 8
       97 GETTABLEKS                       R25 R25 K12 ["useImperativeHandle"]
       99 GETTABLEKS                       R26 R2 K13 ["sheetRef"]
      101 NEWCLOSURE                       R27 P4
      102 CAPTURE                          VAL R24
      103 NEWTABLE                         R28 0 0
      105 CALL                             R25 3 0
      106 GETUPVAL                         R25 8
      107 GETTABLEKS                       R25 R25 K14 ["useMemo"]
      109 NEWCLOSURE                       R26 P5
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R20
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R19
      117 CAPTURE                          VAL R24
      118 CAPTURE                          UPVAL U12
      119 CAPTURE                          VAL R2
      120 NEWTABLE                         R27 0 2
      122 GETTABLEKS                       R28 R2 K15 ["testId"]
      124 MOVE                             R29 R24
      125 SETLIST                          R27 R28 2 [1]
      127 CALL                             R25 2 1
      128 MOVE                             R26 R3
      129 JUMPIFNOT                        R26 ; [+307]
      130 GETUPVAL                         R26 13
      131 GETTABLEKS                       R26 R26 K16 ["createPortal"]
      133 GETUPVAL                         R27 8
      134 GETTABLEKS                       R27 R27 K17 ["createElement"]
      136 GETUPVAL                         R28 14
      137 DUPTABLE                         R29 K21 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      138 GETTABLEKS                       R30 R5 K22 ["zIndex"]
      140 SETTABLEKS                       R30 R29 K18 ["ZIndex"]
      142 LOADK                            R31 K23 ["%*--surface"]
      143 GETTABLEKS                       R33 R2 K15 ["testId"]
      145 NAMECALL                         R31 R31 K24 ["format"]
      147 CALL                             R31 2 1
      148 MOVE                             R30 R31
      149 SETTABLEKS                       R30 R29 K15 ["testId"]
      151 DUPTABLE                         R30 K27 [{"SheetContainer", "Backdrop"}]
      152 GETUPVAL                         R31 8
      153 GETTABLEKS                       R31 R31 K17 ["createElement"]
      155 GETUPVAL                         R32 14
      156 DUPTABLE                         R33 K33 [{["ZIndex"] = 2, ["sizeConstraint"], ["Position"], ["tag"] = "size-full col align-y-center padding-medium anchor-center-center", ["GroupTransparency"]}]
      157 DUPTABLE                         R34 K35 [{"MaxSize"}]
      158 GETIMPORT                        R35 K38 [Vector2.new]
      160 MOVE                             R36 R6
      161 MOVE                             R37 R7
      162 CALL                             R35 2 1
      163 SETTABLEKS                       R35 R34 K34 ["MaxSize"]
      165 SETTABLEKS                       R34 R33 K29 ["sizeConstraint"]
      167 DUPCLOSURE                       R36 K39 [PROTO_6]
      168 NAMECALL                         R34 R14 K40 ["map"]
      170 CALL                             R34 2 1
      171 SETTABLEKS                       R34 R33 K30 ["Position"]
      173 JUMPIFNOT                        R9 ; [+6]
      174 NEWCLOSURE                       R36 P7
      175 CAPTURE                          VAL R8
      176 NAMECALL                         R34 R14 K40 ["map"]
      178 CALL                             R34 2 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R34
      181 SETTABLEKS                       R34 R33 K32 ["GroupTransparency"]
      183 DUPTABLE                         R34 K42 [{"Sheet", "Shadow"}]
      184 GETUPVAL                         R35 8
      185 GETTABLEKS                       R35 R35 K17 ["createElement"]
      187 GETUPVAL                         R36 14
      188 DUPTABLE                         R37 K51 [{["ClipsDescendants"] = True, ["stateLayer"], ["ZIndex"] = 2, ["onActivated"], ["onAbsoluteSizeChanged"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      189 DUPTABLE                         R38 K53 [{"affordance"}]
      190 GETUPVAL                         R39 15
      191 GETTABLEKS                       R39 R39 K54 ["None"]
      193 SETTABLEKS                       R39 R38 K52 ["affordance"]
      195 SETTABLEKS                       R38 R37 K45 ["stateLayer"]
      197 GETUPVAL                         R38 11
      198 GETTABLEKS                       R38 R38 K55 ["noop"]
      200 SETTABLEKS                       R38 R37 K46 ["onActivated"]
      202 NEWCLOSURE                       R38 P8
      203 CAPTURE                          VAL R23
      204 SETTABLEKS                       R38 R37 K47 ["onAbsoluteSizeChanged"]
      206 SETTABLEKS                       R1 R37 K48 ["ref"]
      208 GETUPVAL                         R38 16
      209 GETTABLEKS                       R38 R38 K56 ["nonSelectable"]
      211 SETTABLEKS                       R38 R37 K49 ["selection"]
      213 GETUPVAL                         R38 16
      214 GETTABLEKS                       R38 R38 K57 ["isolatedSelectionGroup"]
      216 SETTABLEKS                       R38 R37 K50 ["selectionGroup"]
      218 GETUPVAL                         R39 17
      219 GETTABLEKS                       R39 R39 K58 ["FoundationSheetCenterSheetNoShrink"]
      221 JUMPIFNOT                        R39 ; [+2]
      222 LOADK                            R38 K59 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      223 JUMP                             ; [+1]
      224 LOADK                            R38 K60 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 shrink auto-y"]
      225 SETTABLEKS                       R38 R37 K19 ["tag"]
      227 GETTABLEKS                       R38 R2 K15 ["testId"]
      229 SETTABLEKS                       R38 R37 K15 ["testId"]
      231 DUPTABLE                         R38 K63 [{"Content", "CloseAffordance"}]
      232 GETUPVAL                         R39 8
      233 GETTABLEKS                       R39 R39 K17 ["createElement"]
      235 GETUPVAL                         R40 14
      236 DUPTABLE                         R41 K64 [{"tag"}]
      237 GETUPVAL                         R43 17
      238 GETTABLEKS                       R43 R43 K58 ["FoundationSheetCenterSheetNoShrink"]
      240 JUMPIFNOT                        R43 ; [+2]
      241 LOADK                            R42 K65 ["size-full-0 auto-y col items-center clip"]
      242 JUMP                             ; [+1]
      243 LOADK                            R42 K66 ["size-full-0 auto-y shrink col items-center clip"]
      244 SETTABLEKS                       R42 R41 K19 ["tag"]
      246 GETUPVAL                         R42 8
      247 GETTABLEKS                       R42 R42 K17 ["createElement"]
      249 GETUPVAL                         R43 18
      250 GETTABLEKS                       R43 R43 K67 ["Provider"]
      252 DUPTABLE                         R44 K69 [{"value"}]
      253 SETTABLEKS                       R25 R44 K68 ["value"]
      255 GETUPVAL                         R45 8
      256 GETTABLEKS                       R45 R45 K17 ["createElement"]
      258 GETUPVAL                         R46 19
      259 DUPTABLE                         R47 K71 [{"owner"}]
      260 SETTABLEKS                       R5 R47 K70 ["owner"]
      262 GETTABLEKS                       R48 R2 K72 ["children"]
      264 CALL                             R45 3 -1
      265 CALL                             R42 -1 -1
      266 CALL                             R39 -1 1
      267 SETTABLEKS                       R39 R38 K61 ["Content"]
      269 GETUPVAL                         R39 8
      270 GETTABLEKS                       R39 R39 K17 ["createElement"]
      272 GETUPVAL                         R40 20
      273 DUPTABLE                         R41 K76 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      274 SETTABLEKS                       R24 R41 K46 ["onActivated"]
      276 GETUPVAL                         R42 21
      277 GETTABLEKS                       R42 R42 K77 ["Utility"]
      279 SETTABLEKS                       R42 R41 K73 ["variant"]
      281 GETIMPORT                        R42 K79 [UDim2.new]
      283 LOADN                            R43 1
      284 GETTABLEKS                       R45 R4 K80 ["Margin"]
      286 GETTABLEKS                       R45 R45 K81 ["Small"]
      288 MINUS                            R44 R45
      289 LOADN                            R45 0
      290 GETTABLEKS                       R46 R4 K80 ["Margin"]
      292 GETTABLEKS                       R46 R46 K81 ["Small"]
      294 CALL                             R42 4 1
      295 SETTABLEKS                       R42 R41 K30 ["Position"]
      297 GETIMPORT                        R42 K38 [Vector2.new]
      299 LOADN                            R43 1
      300 LOADN                            R44 0
      301 CALL                             R42 2 1
      302 SETTABLEKS                       R42 R41 K74 ["AnchorPoint"]
      304 DUPCLOSURE                       R44 K82 [PROTO_9]
      305 NAMECALL                         R42 R18 K40 ["map"]
      307 CALL                             R42 2 1
      308 SETTABLEKS                       R42 R41 K75 ["Visible"]
      310 LOADK                            R43 K83 ["%*--close-affordance"]
      311 GETTABLEKS                       R45 R2 K15 ["testId"]
      313 NAMECALL                         R43 R43 K24 ["format"]
      315 CALL                             R43 2 1
      316 MOVE                             R42 R43
      317 SETTABLEKS                       R42 R41 K15 ["testId"]
      319 CALL                             R39 2 1
      320 SETTABLEKS                       R39 R38 K62 ["CloseAffordance"]
      322 CALL                             R35 3 1
      323 SETTABLEKS                       R35 R34 K0 ["Sheet"]
      325 GETUPVAL                         R35 8
      326 GETTABLEKS                       R35 R35 K17 ["createElement"]
      328 LOADK                            R36 K84 ["Folder"]
      329 LOADNIL                          R37
      330 GETUPVAL                         R38 8
      331 GETTABLEKS                       R38 R38 K17 ["createElement"]
      333 GETUPVAL                         R39 22
      334 DUPTABLE                         R40 K90 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 1, ["slice"], ["imageStyle"], ["tag"] = "anchor-center-left"}]
      335 GETUPVAL                         R41 23
      336 SETTABLEKS                       R41 R40 K85 ["Image"]
      338 DUPCLOSURE                       R43 K91 [PROTO_10]
      339 CAPTURE                          UPVAL U24
      340 NAMECALL                         R41 R22 K40 ["map"]
      342 CALL                             R41 2 1
      343 SETTABLEKS                       R41 R40 K5 ["Size"]
      345 GETIMPORT                        R41 K79 [UDim2.new]
      347 LOADN                            R42 0
      348 GETUPVAL                         R44 24
      349 MINUS                            R43 R44
      350 LOADK                            R44 K92 [0.5]
      351 LOADN                            R45 0
      352 CALL                             R41 4 1
      353 SETTABLEKS                       R41 R40 K30 ["Position"]
      355 DUPTABLE                         R41 K95 [{["center"], ["scale"] = 2}]
      356 GETIMPORT                        R42 K97 [Rect.new]
      358 GETUPVAL                         R43 24
      359 GETUPVAL                         R44 24
      360 GETUPVAL                         R46 24
      361 ADDK                             R45 R46 K86 [1]
      362 GETUPVAL                         R47 24
      363 ADDK                             R46 R47 K86 [1]
      364 CALL                             R42 4 1
      365 SETTABLEKS                       R42 R41 K93 ["center"]
      367 SETTABLEKS                       R41 R40 K87 ["slice"]
      369 GETTABLEKS                       R41 R4 K98 ["Color"]
      371 GETTABLEKS                       R41 R41 K99 ["Extended"]
      373 GETTABLEKS                       R41 R41 K100 ["Black"]
      375 GETTABLEKS                       R41 R41 K101 ["Black_10"]
      377 SETTABLEKS                       R41 R40 K88 ["imageStyle"]
      379 CALL                             R38 2 -1
      380 CALL                             R35 -1 1
      381 SETTABLEKS                       R35 R34 K41 ["Shadow"]
      383 CALL                             R31 3 1
      384 SETTABLEKS                       R31 R30 K25 ["SheetContainer"]
      386 GETUPVAL                         R31 8
      387 GETTABLEKS                       R31 R31 K17 ["createElement"]
      389 GETUPVAL                         R32 14
      390 DUPTABLE                         R33 K103 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      391 GETIMPORT                        R34 K105 [UDim2.fromScale]
      393 LOADN                            R35 2
      394 LOADN                            R36 2
      395 CALL                             R34 2 1
      396 SETTABLEKS                       R34 R33 K5 ["Size"]
      398 GETIMPORT                        R34 K105 [UDim2.fromScale]
      400 LOADK                            R35 K106 [-0.5]
      401 LOADK                            R36 K106 [-0.5]
      402 CALL                             R34 2 1
      403 SETTABLEKS                       R34 R33 K30 ["Position"]
      405 DUPTABLE                         R34 K53 [{"affordance"}]
      406 GETUPVAL                         R35 15
      407 GETTABLEKS                       R35 R35 K54 ["None"]
      409 SETTABLEKS                       R35 R34 K52 ["affordance"]
      411 SETTABLEKS                       R34 R33 K45 ["stateLayer"]
      413 NEWCLOSURE                       R36 P11
      414 CAPTURE                          VAL R4
      415 NAMECALL                         R34 R12 K40 ["map"]
      417 CALL                             R34 2 1
      418 SETTABLEKS                       R34 R33 K102 ["backgroundStyle"]
      420 SETTABLEKS                       R24 R33 K46 ["onActivated"]
      422 LOADK                            R35 K107 ["%*--backdrop"]
      423 GETTABLEKS                       R37 R2 K15 ["testId"]
      425 NAMECALL                         R35 R35 K24 ["format"]
      427 CALL                             R35 2 1
      428 MOVE                             R34 R35
      429 SETTABLEKS                       R34 R33 K15 ["testId"]
      431 CALL                             R31 2 1
      432 SETTABLEKS                       R31 R30 K26 ["Backdrop"]
      434 CALL                             R27 3 1
      435 MOVE                             R28 R3
      436 CALL                             R26 2 1
      437 RETURN                           R26 1

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
       45 GETTABLEKS                       R10 R0 K13 ["Enums"]
       47 GETTABLEKS                       R10 R10 K15 ["StateLayerAffordance"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K16 ["Providers"]
       54 GETTABLEKS                       R11 R11 K17 ["Overlay"]
       56 GETTABLEKS                       R11 R11 K18 ["useOverlay"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R0 K19 ["Utility"]
       63 GETTABLEKS                       R12 R12 K20 ["useScaledValue"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K16 ["Providers"]
       70 GETTABLEKS                       R13 R13 K21 ["Style"]
       72 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K19 ["Utility"]
       79 GETTABLEKS                       R14 R14 K23 ["withDefaults"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K24 ["Components"]
       86 GETTABLEKS                       R15 R15 K25 ["Dialog"]
       88 GETTABLEKS                       R15 R15 K26 ["useDialogVariants"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R14 R14 K27 ["DIALOG_SIZES"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R0 K28 ["Constants"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K13 ["Enums"]
      102 GETTABLEKS                       R17 R17 K29 ["DialogSize"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R0 K13 ["Enums"]
      109 GETTABLEKS                       R18 R18 K30 ["ElevationLayer"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K16 ["Providers"]
      116 GETTABLEKS                       R19 R19 K31 ["Elevation"]
      118 GETTABLEKS                       R19 R19 K32 ["useElevation"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K6 [require]
      123 GETTABLEKS                       R20 R0 K16 ["Providers"]
      125 GETTABLEKS                       R20 R20 K31 ["Elevation"]
      127 GETTABLEKS                       R20 R20 K33 ["ElevationProvider"]
      129 CALL                             R19 1 1
      130 GETTABLEKS                       R19 R19 K34 ["ElevationOwnerScope"]
      132 GETIMPORT                        R20 K6 [require]
      134 GETTABLEKS                       R21 R0 K19 ["Utility"]
      136 GETTABLEKS                       R21 R21 K35 ["Flags"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETIMPORT                        R22 K1 [script]
      143 GETTABLEKS                       R22 R22 K4 ["Parent"]
      145 GETTABLEKS                       R22 R22 K36 ["SheetContext"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K4 ["Parent"]
      154 GETTABLEKS                       R23 R23 K37 ["Types"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K4 ["Parent"]
      163 GETTABLEKS                       R24 R24 K38 ["SheetType"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R25 R0 K24 ["Components"]
      170 GETTABLEKS                       R25 R25 K39 ["CloseAffordance"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R26 R0 K24 ["Components"]
      177 GETTABLEKS                       R26 R26 K40 ["Image"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R27 R0 K24 ["Components"]
      184 GETTABLEKS                       R27 R27 K41 ["View"]
      186 CALL                             R26 1 1
      187 DUPTABLE                         R27 K45 [{["size"], ["testId"] = "--foundation-sheet"}]
      188 GETTABLEKS                       R28 R16 K46 ["Medium"]
      190 SETTABLEKS                       R28 R27 K42 ["size"]
      192 GETTABLEKS                       R28 R15 K47 ["SHADOW_IMAGE"]
      194 GETTABLEKS                       R29 R15 K48 ["SHADOW_SIZE"]
      196 DUPCLOSURE                       R30 K49 [PROTO_12]
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R29
      222 GETTABLEKS                       R31 R4 K50 ["memo"]
      224 GETTABLEKS                       R32 R4 K51 ["forwardRef"]
      226 MOVE                             R33 R30
      227 CALL                             R32 1 -1
      228 CALL                             R31 -1 -1
      229 RETURN                           R31 -1
