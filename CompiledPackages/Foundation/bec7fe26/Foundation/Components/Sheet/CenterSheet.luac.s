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
      129 JUMPIFNOT                        R26 ; [+320]
      130 GETUPVAL                         R26 13
      131 GETTABLEKS                       R26 R26 K16 ["createPortal"]
      133 GETUPVAL                         R27 8
      134 GETTABLEKS                       R27 R27 K17 ["createElement"]
      136 GETUPVAL                         R28 14
      137 DUPTABLE                         R29 K21 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      138 GETUPVAL                         R31 15
      139 GETTABLEKS                       R31 R31 K22 ["FoundationElevationSystem"]
      141 JUMPIFNOT                        R31 ; [+3]
      142 GETTABLEKS                       R30 R5 K23 ["zIndex"]
      144 JUMP                             ; [+1]
      145 LOADN                            R30 5
      146 SETTABLEKS                       R30 R29 K18 ["ZIndex"]
      148 LOADK                            R31 K24 ["%*--surface"]
      149 GETTABLEKS                       R33 R2 K15 ["testId"]
      151 NAMECALL                         R31 R31 K25 ["format"]
      153 CALL                             R31 2 1
      154 MOVE                             R30 R31
      155 SETTABLEKS                       R30 R29 K15 ["testId"]
      157 DUPTABLE                         R30 K28 [{"SheetContainer", "Backdrop"}]
      158 GETUPVAL                         R31 8
      159 GETTABLEKS                       R31 R31 K17 ["createElement"]
      161 GETUPVAL                         R32 14
      162 DUPTABLE                         R33 K34 [{["ZIndex"] = 2, ["sizeConstraint"], ["Position"], ["tag"] = "size-full col align-y-center padding-medium anchor-center-center", ["GroupTransparency"]}]
      163 DUPTABLE                         R34 K36 [{"MaxSize"}]
      164 GETIMPORT                        R35 K39 [Vector2.new]
      166 MOVE                             R36 R6
      167 MOVE                             R37 R7
      168 CALL                             R35 2 1
      169 SETTABLEKS                       R35 R34 K35 ["MaxSize"]
      171 SETTABLEKS                       R34 R33 K30 ["sizeConstraint"]
      173 DUPCLOSURE                       R36 K40 [PROTO_6]
      174 NAMECALL                         R34 R14 K41 ["map"]
      176 CALL                             R34 2 1
      177 SETTABLEKS                       R34 R33 K31 ["Position"]
      179 JUMPIFNOT                        R9 ; [+6]
      180 NEWCLOSURE                       R36 P7
      181 CAPTURE                          VAL R8
      182 NAMECALL                         R34 R14 K41 ["map"]
      184 CALL                             R34 2 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R34
      187 SETTABLEKS                       R34 R33 K33 ["GroupTransparency"]
      189 DUPTABLE                         R34 K43 [{"Sheet", "Shadow"}]
      190 GETUPVAL                         R35 8
      191 GETTABLEKS                       R35 R35 K17 ["createElement"]
      193 GETUPVAL                         R36 14
      194 DUPTABLE                         R37 K52 [{["ClipsDescendants"] = True, ["stateLayer"], ["ZIndex"] = 2, ["onActivated"], ["onAbsoluteSizeChanged"], ["ref"], ["selection"], ["selectionGroup"], ["tag"], ["testId"]}]
      195 DUPTABLE                         R38 K54 [{"affordance"}]
      196 GETUPVAL                         R39 16
      197 GETTABLEKS                       R39 R39 K55 ["None"]
      199 SETTABLEKS                       R39 R38 K53 ["affordance"]
      201 SETTABLEKS                       R38 R37 K46 ["stateLayer"]
      203 GETUPVAL                         R38 11
      204 GETTABLEKS                       R38 R38 K56 ["noop"]
      206 SETTABLEKS                       R38 R37 K47 ["onActivated"]
      208 NEWCLOSURE                       R38 P8
      209 CAPTURE                          VAL R23
      210 SETTABLEKS                       R38 R37 K48 ["onAbsoluteSizeChanged"]
      212 SETTABLEKS                       R1 R37 K49 ["ref"]
      214 GETUPVAL                         R38 17
      215 GETTABLEKS                       R38 R38 K57 ["nonSelectable"]
      217 SETTABLEKS                       R38 R37 K50 ["selection"]
      219 GETUPVAL                         R38 17
      220 GETTABLEKS                       R38 R38 K58 ["isolatedSelectionGroup"]
      222 SETTABLEKS                       R38 R37 K51 ["selectionGroup"]
      224 GETUPVAL                         R39 15
      225 GETTABLEKS                       R39 R39 K59 ["FoundationSheetCenterSheetNoShrink"]
      227 JUMPIFNOT                        R39 ; [+2]
      228 LOADK                            R38 K60 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      229 JUMP                             ; [+1]
      230 LOADK                            R38 K61 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 shrink auto-y"]
      231 SETTABLEKS                       R38 R37 K19 ["tag"]
      233 GETTABLEKS                       R38 R2 K15 ["testId"]
      235 SETTABLEKS                       R38 R37 K15 ["testId"]
      237 DUPTABLE                         R38 K64 [{"Content", "CloseAffordance"}]
      238 GETUPVAL                         R39 8
      239 GETTABLEKS                       R39 R39 K17 ["createElement"]
      241 GETUPVAL                         R40 14
      242 DUPTABLE                         R41 K65 [{"tag"}]
      243 GETUPVAL                         R43 15
      244 GETTABLEKS                       R43 R43 K59 ["FoundationSheetCenterSheetNoShrink"]
      246 JUMPIFNOT                        R43 ; [+2]
      247 LOADK                            R42 K66 ["size-full-0 auto-y col items-center clip"]
      248 JUMP                             ; [+1]
      249 LOADK                            R42 K67 ["size-full-0 auto-y shrink col items-center clip"]
      250 SETTABLEKS                       R42 R41 K19 ["tag"]
      252 GETUPVAL                         R42 8
      253 GETTABLEKS                       R42 R42 K17 ["createElement"]
      255 GETUPVAL                         R43 18
      256 GETTABLEKS                       R43 R43 K68 ["Provider"]
      258 DUPTABLE                         R44 K70 [{"value"}]
      259 SETTABLEKS                       R25 R44 K69 ["value"]
      261 GETUPVAL                         R46 15
      262 GETTABLEKS                       R46 R46 K22 ["FoundationElevationSystem"]
      264 JUMPIFNOT                        R46 ; [+11]
      265 GETUPVAL                         R45 8
      266 GETTABLEKS                       R45 R45 K17 ["createElement"]
      268 GETUPVAL                         R46 19
      269 DUPTABLE                         R47 K72 [{"owner"}]
      270 SETTABLEKS                       R5 R47 K71 ["owner"]
      272 GETTABLEKS                       R48 R2 K73 ["children"]
      274 CALL                             R45 3 1
      275 JUMP                             ; [+2]
      276 GETTABLEKS                       R45 R2 K73 ["children"]
      278 CALL                             R42 3 -1
      279 CALL                             R39 -1 1
      280 SETTABLEKS                       R39 R38 K62 ["Content"]
      282 GETUPVAL                         R39 8
      283 GETTABLEKS                       R39 R39 K17 ["createElement"]
      285 GETUPVAL                         R40 20
      286 DUPTABLE                         R41 K77 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      287 SETTABLEKS                       R24 R41 K47 ["onActivated"]
      289 GETUPVAL                         R42 21
      290 GETTABLEKS                       R42 R42 K78 ["Utility"]
      292 SETTABLEKS                       R42 R41 K74 ["variant"]
      294 GETIMPORT                        R42 K80 [UDim2.new]
      296 LOADN                            R43 1
      297 GETTABLEKS                       R45 R4 K81 ["Margin"]
      299 GETTABLEKS                       R45 R45 K82 ["Small"]
      301 MINUS                            R44 R45
      302 LOADN                            R45 0
      303 GETTABLEKS                       R46 R4 K81 ["Margin"]
      305 GETTABLEKS                       R46 R46 K82 ["Small"]
      307 CALL                             R42 4 1
      308 SETTABLEKS                       R42 R41 K31 ["Position"]
      310 GETIMPORT                        R42 K39 [Vector2.new]
      312 LOADN                            R43 1
      313 LOADN                            R44 0
      314 CALL                             R42 2 1
      315 SETTABLEKS                       R42 R41 K75 ["AnchorPoint"]
      317 DUPCLOSURE                       R44 K83 [PROTO_9]
      318 NAMECALL                         R42 R18 K41 ["map"]
      320 CALL                             R42 2 1
      321 SETTABLEKS                       R42 R41 K76 ["Visible"]
      323 LOADK                            R43 K84 ["%*--close-affordance"]
      324 GETTABLEKS                       R45 R2 K15 ["testId"]
      326 NAMECALL                         R43 R43 K25 ["format"]
      328 CALL                             R43 2 1
      329 MOVE                             R42 R43
      330 SETTABLEKS                       R42 R41 K15 ["testId"]
      332 CALL                             R39 2 1
      333 SETTABLEKS                       R39 R38 K63 ["CloseAffordance"]
      335 CALL                             R35 3 1
      336 SETTABLEKS                       R35 R34 K0 ["Sheet"]
      338 GETUPVAL                         R35 8
      339 GETTABLEKS                       R35 R35 K17 ["createElement"]
      341 LOADK                            R36 K85 ["Folder"]
      342 LOADNIL                          R37
      343 GETUPVAL                         R38 8
      344 GETTABLEKS                       R38 R38 K17 ["createElement"]
      346 GETUPVAL                         R39 22
      347 DUPTABLE                         R40 K91 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 1, ["slice"], ["imageStyle"], ["tag"] = "anchor-center-left"}]
      348 GETUPVAL                         R41 23
      349 SETTABLEKS                       R41 R40 K86 ["Image"]
      351 DUPCLOSURE                       R43 K92 [PROTO_10]
      352 CAPTURE                          UPVAL U24
      353 NAMECALL                         R41 R22 K41 ["map"]
      355 CALL                             R41 2 1
      356 SETTABLEKS                       R41 R40 K5 ["Size"]
      358 GETIMPORT                        R41 K80 [UDim2.new]
      360 LOADN                            R42 0
      361 GETUPVAL                         R44 24
      362 MINUS                            R43 R44
      363 LOADK                            R44 K93 [0.5]
      364 LOADN                            R45 0
      365 CALL                             R41 4 1
      366 SETTABLEKS                       R41 R40 K31 ["Position"]
      368 DUPTABLE                         R41 K96 [{["center"], ["scale"] = 2}]
      369 GETIMPORT                        R42 K98 [Rect.new]
      371 GETUPVAL                         R43 24
      372 GETUPVAL                         R44 24
      373 GETUPVAL                         R46 24
      374 ADDK                             R45 R46 K87 [1]
      375 GETUPVAL                         R47 24
      376 ADDK                             R46 R47 K87 [1]
      377 CALL                             R42 4 1
      378 SETTABLEKS                       R42 R41 K94 ["center"]
      380 SETTABLEKS                       R41 R40 K88 ["slice"]
      382 GETTABLEKS                       R41 R4 K99 ["Color"]
      384 GETTABLEKS                       R41 R41 K100 ["Extended"]
      386 GETTABLEKS                       R41 R41 K101 ["Black"]
      388 GETTABLEKS                       R41 R41 K102 ["Black_10"]
      390 SETTABLEKS                       R41 R40 K89 ["imageStyle"]
      392 CALL                             R38 2 -1
      393 CALL                             R35 -1 1
      394 SETTABLEKS                       R35 R34 K42 ["Shadow"]
      396 CALL                             R31 3 1
      397 SETTABLEKS                       R31 R30 K26 ["SheetContainer"]
      399 GETUPVAL                         R31 8
      400 GETTABLEKS                       R31 R31 K17 ["createElement"]
      402 GETUPVAL                         R32 14
      403 DUPTABLE                         R33 K104 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      404 GETIMPORT                        R34 K106 [UDim2.fromScale]
      406 LOADN                            R35 2
      407 LOADN                            R36 2
      408 CALL                             R34 2 1
      409 SETTABLEKS                       R34 R33 K5 ["Size"]
      411 GETIMPORT                        R34 K106 [UDim2.fromScale]
      413 LOADK                            R35 K107 [-0.5]
      414 LOADK                            R36 K107 [-0.5]
      415 CALL                             R34 2 1
      416 SETTABLEKS                       R34 R33 K31 ["Position"]
      418 DUPTABLE                         R34 K54 [{"affordance"}]
      419 GETUPVAL                         R35 16
      420 GETTABLEKS                       R35 R35 K55 ["None"]
      422 SETTABLEKS                       R35 R34 K53 ["affordance"]
      424 SETTABLEKS                       R34 R33 K46 ["stateLayer"]
      426 NEWCLOSURE                       R36 P11
      427 CAPTURE                          VAL R4
      428 NAMECALL                         R34 R12 K41 ["map"]
      430 CALL                             R34 2 1
      431 SETTABLEKS                       R34 R33 K103 ["backgroundStyle"]
      433 SETTABLEKS                       R24 R33 K47 ["onActivated"]
      435 LOADK                            R35 K108 ["%*--backdrop"]
      436 GETTABLEKS                       R37 R2 K15 ["testId"]
      438 NAMECALL                         R35 R35 K25 ["format"]
      440 CALL                             R35 2 1
      441 MOVE                             R34 R35
      442 SETTABLEKS                       R34 R33 K15 ["testId"]
      444 CALL                             R31 2 1
      445 SETTABLEKS                       R31 R30 K27 ["Backdrop"]
      447 CALL                             R27 3 1
      448 MOVE                             R28 R3
      449 CALL                             R26 2 1
      450 RETURN                           R26 1

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
       84 GETTABLEKS                       R15 R0 K24 ["Components"]
       86 GETTABLEKS                       R15 R15 K25 ["Dialog"]
       88 GETTABLEKS                       R15 R15 K26 ["useDialogVariants"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R14 R14 K27 ["DIALOG_SIZES"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R0 K21 ["Enums"]
       97 GETTABLEKS                       R16 R16 K28 ["DialogSize"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K29 ["Constants"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R0 K21 ["Enums"]
      109 GETTABLEKS                       R18 R18 K30 ["ElevationLayer"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K13 ["Providers"]
      116 GETTABLEKS                       R19 R19 K31 ["Elevation"]
      118 GETTABLEKS                       R19 R19 K32 ["useElevation"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K6 [require]
      123 GETTABLEKS                       R20 R0 K13 ["Providers"]
      125 GETTABLEKS                       R20 R20 K31 ["Elevation"]
      127 GETTABLEKS                       R20 R20 K33 ["ElevationProvider"]
      129 CALL                             R19 1 1
      130 GETTABLEKS                       R19 R19 K34 ["ElevationOwnerScope"]
      132 GETIMPORT                        R20 K6 [require]
      134 GETTABLEKS                       R21 R0 K18 ["Utility"]
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
      170 GETTABLEKS                       R25 R25 K39 ["View"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R26 R0 K24 ["Components"]
      177 GETTABLEKS                       R26 R26 K40 ["Image"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R27 R0 K24 ["Components"]
      184 GETTABLEKS                       R27 R27 K41 ["CloseAffordance"]
      186 CALL                             R26 1 1
      187 DUPTABLE                         R27 K45 [{["size"], ["testId"] = "--foundation-sheet"}]
      188 GETTABLEKS                       R28 R15 K46 ["Medium"]
      190 SETTABLEKS                       R28 R27 K42 ["size"]
      192 GETTABLEKS                       R28 R16 K47 ["SHADOW_IMAGE"]
      194 GETTABLEKS                       R29 R16 K48 ["SHADOW_SIZE"]
      196 DUPCLOSURE                       R30 K49 [PROTO_12]
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R29
      222 GETTABLEKS                       R31 R2 K50 ["memo"]
      224 GETTABLEKS                       R32 R2 K51 ["forwardRef"]
      226 MOVE                             R33 R30
      227 CALL                             R32 1 -1
      228 CALL                             R31 -1 -1
      229 RETURN                           R31 -1
