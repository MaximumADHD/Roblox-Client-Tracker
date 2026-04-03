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
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ease"]
        4 LOADN                            R2 0
        5 DUPTABLE                         R3 K3 [{"easingStyle", "duration"}]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K4 ["Ease"]
        9 GETTABLEKS                       R4 R5 K5 ["StandardOut"]
       11 SETTABLEKS                       R4 R3 K1 ["easingStyle"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K6 ["Time"]
       16 GETTABLEKS                       R4 R5 K7 ["Time_300"]
       18 SETTABLEKS                       R4 R3 K2 ["duration"]
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 3
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K0 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K8 [{"duration"}]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K6 ["Time"]
       31 GETTABLEKS                       R4 R5 K9 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K2 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_3:
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
       48 GETTABLEKS                       R1 R2 K18 ["Center"]
       50 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       52 GETUPVAL                         R2 9
       53 GETTABLEKS                       R1 R2 K15 ["testId"]
       55 SETTABLEKS                       R1 R0 K15 ["testId"]
       57 RETURN                           R0 1

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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K0 ["Sheet"]
       12 DUPTABLE                         R7 K2 [{"relativeToOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["relativeToOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 GETUPVAL                         R8 7
       19 GETTABLEKS                       R9 R2 K3 ["size"]
       21 GETTABLE                         R7 R8 R9
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 6
       24 LOADN                            R8 88
       25 CALL                             R7 1 1
       26 GETTABLEKS                       R9 R4 K4 ["Size"]
       28 GETTABLEKS                       R8 R9 K5 ["Size_800"]
       30 GETUPVAL                         R10 8
       31 GETTABLEKS                       R9 R10 K6 ["useState"]
       33 LOADB                            R10 1
       34 CALL                             R9 1 2
       35 GETUPVAL                         R12 8
       36 GETTABLEKS                       R11 R12 K7 ["useRef"]
       38 LOADB                            R12 0
       39 CALL                             R11 1 1
       40 GETUPVAL                         R12 9
       41 LOADN                            R13 1
       42 NEWCLOSURE                       R14 P0
       43 CAPTURE                          VAL R11
       44 CAPTURE                          VAL R2
       45 CALL                             R12 2 2
       46 GETUPVAL                         R14 9
       47 MOVE                             R15 R8
       48 NEWCLOSURE                       R16 P1
       49 CAPTURE                          VAL R10
       50 CALL                             R14 2 2
       51 GETUPVAL                         R17 8
       52 GETTABLEKS                       R16 R17 K8 ["useBinding"]
       54 LOADB                            R17 0
       55 CALL                             R16 1 2
       56 GETUPVAL                         R19 8
       57 GETTABLEKS                       R18 R19 K8 ["useBinding"]
       59 LOADB                            R19 0
       60 CALL                             R18 1 2
       61 GETUPVAL                         R21 8
       62 GETTABLEKS                       R20 R21 K8 ["useBinding"]
       64 LOADN                            R21 0
       65 CALL                             R20 1 2
       66 GETUPVAL                         R23 8
       67 GETTABLEKS                       R22 R23 K8 ["useBinding"]
       69 LOADN                            R23 0
       70 CALL                             R22 1 2
       71 GETUPVAL                         R25 8
       72 GETTABLEKS                       R24 R25 K9 ["useEffect"]
       74 NEWCLOSURE                       R25 P2
       75 CAPTURE                          VAL R15
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R13
       79 NEWTABLE                         R26 0 0
       81 CALL                             R24 2 0
       82 GETUPVAL                         R25 8
       83 GETTABLEKS                       R24 R25 K10 ["useCallback"]
       85 NEWCLOSURE                       R25 P3
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R15
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R10
       93 NEWTABLE                         R26 0 1
       95 MOVE                             R27 R8
       96 SETLIST                          R26 R27 1 [1]
       98 CALL                             R24 2 1
       99 GETUPVAL                         R26 8
      100 GETTABLEKS                       R25 R26 K11 ["useImperativeHandle"]
      102 GETTABLEKS                       R26 R2 K12 ["sheetRef"]
      104 NEWCLOSURE                       R27 P4
      105 CAPTURE                          VAL R24
      106 NEWTABLE                         R28 0 0
      108 CALL                             R25 3 0
      109 GETUPVAL                         R26 8
      110 GETTABLEKS                       R25 R26 K13 ["useMemo"]
      112 NEWCLOSURE                       R26 P5
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R24
      121 CAPTURE                          UPVAL U12
      122 CAPTURE                          VAL R2
      123 NEWTABLE                         R27 0 2
      125 GETTABLEKS                       R28 R2 K14 ["testId"]
      127 MOVE                             R29 R24
      128 SETLIST                          R27 R28 2 [1]
      130 CALL                             R25 2 1
      131 MOVE                             R26 R3
      132 JUMPIFNOT                        R26 ; [+347]
      133 GETUPVAL                         R27 13
      134 GETTABLEKS                       R26 R27 K15 ["createPortal"]
      136 GETUPVAL                         R28 8
      137 GETTABLEKS                       R27 R28 K16 ["createElement"]
      139 GETUPVAL                         R28 14
      140 DUPTABLE                         R29 K19 [{"ZIndex", "tag", "testId"}]
      141 GETUPVAL                         R32 15
      142 GETTABLEKS                       R31 R32 K20 ["FoundationElevationSystem"]
      144 JUMPIFNOT                        R31 ; [+3]
      145 GETTABLEKS                       R30 R5 K21 ["zIndex"]
      147 JUMP                             ; [+1]
      148 LOADN                            R30 5
      149 SETTABLEKS                       R30 R29 K17 ["ZIndex"]
      151 LOADK                            R30 K22 ["size-full"]
      152 SETTABLEKS                       R30 R29 K18 ["tag"]
      154 LOADK                            R31 K23 ["%*--surface"]
      155 GETTABLEKS                       R33 R2 K14 ["testId"]
      157 NAMECALL                         R31 R31 K24 ["format"]
      159 CALL                             R31 2 1
      160 MOVE                             R30 R31
      161 SETTABLEKS                       R30 R29 K14 ["testId"]
      163 DUPTABLE                         R30 K27 [{"SheetContainer", "Backdrop"}]
      164 GETUPVAL                         R32 8
      165 GETTABLEKS                       R31 R32 K16 ["createElement"]
      167 GETUPVAL                         R32 14
      168 DUPTABLE                         R33 K31 [{"ZIndex", "sizeConstraint", "Position", "tag", "GroupTransparency"}]
      169 LOADN                            R34 2
      170 SETTABLEKS                       R34 R33 K17 ["ZIndex"]
      172 DUPTABLE                         R34 K33 [{"MaxSize"}]
      173 GETIMPORT                        R35 K36 [Vector2.new]
      175 MOVE                             R36 R6
      176 MOVE                             R37 R7
      177 CALL                             R35 2 1
      178 SETTABLEKS                       R35 R34 K32 ["MaxSize"]
      180 SETTABLEKS                       R34 R33 K28 ["sizeConstraint"]
      182 DUPCLOSURE                       R36 K37 [PROTO_6]
      183 NAMECALL                         R34 R14 K38 ["map"]
      185 CALL                             R34 2 1
      186 SETTABLEKS                       R34 R33 K29 ["Position"]
      188 LOADK                            R34 K39 ["size-full col align-y-center padding-medium anchor-center-center"]
      189 SETTABLEKS                       R34 R33 K18 ["tag"]
      191 JUMPIFNOT                        R9 ; [+6]
      192 NEWCLOSURE                       R36 P7
      193 CAPTURE                          VAL R8
      194 NAMECALL                         R34 R14 K38 ["map"]
      196 CALL                             R34 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R34
      199 SETTABLEKS                       R34 R33 K30 ["GroupTransparency"]
      201 DUPTABLE                         R34 K41 [{"Sheet", "Shadow"}]
      202 GETUPVAL                         R36 8
      203 GETTABLEKS                       R35 R36 K16 ["createElement"]
      205 GETUPVAL                         R36 14
      206 DUPTABLE                         R37 K49 [{"ClipsDescendants", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      207 LOADB                            R38 1
      208 SETTABLEKS                       R38 R37 K42 ["ClipsDescendants"]
      210 DUPTABLE                         R38 K51 [{"affordance"}]
      211 GETUPVAL                         R40 16
      212 GETTABLEKS                       R39 R40 K52 ["None"]
      214 SETTABLEKS                       R39 R38 K50 ["affordance"]
      216 SETTABLEKS                       R38 R37 K43 ["stateLayer"]
      218 LOADN                            R38 2
      219 SETTABLEKS                       R38 R37 K17 ["ZIndex"]
      221 GETUPVAL                         R39 11
      222 GETTABLEKS                       R38 R39 K53 ["noop"]
      224 SETTABLEKS                       R38 R37 K44 ["onActivated"]
      226 NEWCLOSURE                       R38 P8
      227 CAPTURE                          VAL R23
      228 SETTABLEKS                       R38 R37 K45 ["onAbsoluteSizeChanged"]
      230 SETTABLEKS                       R1 R37 K46 ["ref"]
      232 GETUPVAL                         R39 17
      233 GETTABLEKS                       R38 R39 K54 ["nonSelectable"]
      235 SETTABLEKS                       R38 R37 K47 ["selection"]
      237 GETUPVAL                         R39 17
      238 GETTABLEKS                       R38 R39 K55 ["isolatedSelectionGroup"]
      240 SETTABLEKS                       R38 R37 K48 ["selectionGroup"]
      242 GETUPVAL                         R40 15
      243 GETTABLEKS                       R39 R40 K56 ["FoundationSheetCenterSheetNoShrink"]
      245 JUMPIFNOT                        R39 ; [+2]
      246 LOADK                            R38 K57 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      247 JUMP                             ; [+1]
      248 LOADK                            R38 K58 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 shrink auto-y"]
      249 SETTABLEKS                       R38 R37 K18 ["tag"]
      251 GETTABLEKS                       R38 R2 K14 ["testId"]
      253 SETTABLEKS                       R38 R37 K14 ["testId"]
      255 DUPTABLE                         R38 K61 [{"Content", "CloseAffordance"}]
      256 GETUPVAL                         R40 8
      257 GETTABLEKS                       R39 R40 K16 ["createElement"]
      259 GETUPVAL                         R40 14
      260 DUPTABLE                         R41 K62 [{"tag"}]
      261 GETUPVAL                         R44 15
      262 GETTABLEKS                       R43 R44 K56 ["FoundationSheetCenterSheetNoShrink"]
      264 JUMPIFNOT                        R43 ; [+2]
      265 LOADK                            R42 K63 ["size-full-0 auto-y col items-center clip"]
      266 JUMP                             ; [+1]
      267 LOADK                            R42 K64 ["size-full-0 auto-y shrink col items-center clip"]
      268 SETTABLEKS                       R42 R41 K18 ["tag"]
      270 GETUPVAL                         R43 8
      271 GETTABLEKS                       R42 R43 K16 ["createElement"]
      273 GETUPVAL                         R44 18
      274 GETTABLEKS                       R43 R44 K65 ["Provider"]
      276 DUPTABLE                         R44 K67 [{"value"}]
      277 SETTABLEKS                       R25 R44 K66 ["value"]
      279 GETUPVAL                         R47 15
      280 GETTABLEKS                       R46 R47 K20 ["FoundationElevationSystem"]
      282 JUMPIFNOT                        R46 ; [+11]
      283 GETUPVAL                         R46 8
      284 GETTABLEKS                       R45 R46 K16 ["createElement"]
      286 GETUPVAL                         R46 19
      287 DUPTABLE                         R47 K69 [{"owner"}]
      288 SETTABLEKS                       R5 R47 K68 ["owner"]
      290 GETTABLEKS                       R48 R2 K70 ["children"]
      292 CALL                             R45 3 1
      293 JUMP                             ; [+2]
      294 GETTABLEKS                       R45 R2 K70 ["children"]
      296 CALL                             R42 3 -1
      297 CALL                             R39 -1 1
      298 SETTABLEKS                       R39 R38 K59 ["Content"]
      300 GETUPVAL                         R40 8
      301 GETTABLEKS                       R39 R40 K16 ["createElement"]
      303 GETUPVAL                         R40 20
      304 DUPTABLE                         R41 K74 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      305 SETTABLEKS                       R24 R41 K44 ["onActivated"]
      307 GETUPVAL                         R43 21
      308 GETTABLEKS                       R42 R43 K75 ["Utility"]
      310 SETTABLEKS                       R42 R41 K71 ["variant"]
      312 GETIMPORT                        R42 K77 [UDim2.new]
      314 LOADN                            R43 1
      315 GETTABLEKS                       R46 R4 K78 ["Margin"]
      317 GETTABLEKS                       R45 R46 K79 ["Small"]
      319 MINUS                            R44 R45
      320 LOADN                            R45 0
      321 GETTABLEKS                       R47 R4 K78 ["Margin"]
      323 GETTABLEKS                       R46 R47 K79 ["Small"]
      325 CALL                             R42 4 1
      326 SETTABLEKS                       R42 R41 K29 ["Position"]
      328 GETIMPORT                        R42 K36 [Vector2.new]
      330 LOADN                            R43 1
      331 LOADN                            R44 0
      332 CALL                             R42 2 1
      333 SETTABLEKS                       R42 R41 K72 ["AnchorPoint"]
      335 DUPCLOSURE                       R44 K80 [PROTO_9]
      336 NAMECALL                         R42 R18 K38 ["map"]
      338 CALL                             R42 2 1
      339 SETTABLEKS                       R42 R41 K73 ["Visible"]
      341 LOADK                            R43 K81 ["%*--close-affordance"]
      342 GETTABLEKS                       R45 R2 K14 ["testId"]
      344 NAMECALL                         R43 R43 K24 ["format"]
      346 CALL                             R43 2 1
      347 MOVE                             R42 R43
      348 SETTABLEKS                       R42 R41 K14 ["testId"]
      350 CALL                             R39 2 1
      351 SETTABLEKS                       R39 R38 K60 ["CloseAffordance"]
      353 CALL                             R35 3 1
      354 SETTABLEKS                       R35 R34 K0 ["Sheet"]
      356 GETUPVAL                         R36 8
      357 GETTABLEKS                       R35 R36 K16 ["createElement"]
      359 LOADK                            R36 K82 ["Folder"]
      360 LOADNIL                          R37
      361 GETUPVAL                         R39 8
      362 GETTABLEKS                       R38 R39 K16 ["createElement"]
      364 GETUPVAL                         R39 22
      365 DUPTABLE                         R40 K86 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      366 GETUPVAL                         R41 23
      367 SETTABLEKS                       R41 R40 K83 ["Image"]
      369 DUPCLOSURE                       R43 K87 [PROTO_10]
      370 CAPTURE                          UPVAL U24
      371 NAMECALL                         R41 R22 K38 ["map"]
      373 CALL                             R41 2 1
      374 SETTABLEKS                       R41 R40 K4 ["Size"]
      376 GETIMPORT                        R41 K77 [UDim2.new]
      378 LOADN                            R42 0
      379 GETUPVAL                         R44 24
      380 MINUS                            R43 R44
      381 LOADK                            R44 K88 [0.5]
      382 LOADN                            R45 0
      383 CALL                             R41 4 1
      384 SETTABLEKS                       R41 R40 K29 ["Position"]
      386 LOADN                            R41 1
      387 SETTABLEKS                       R41 R40 K17 ["ZIndex"]
      389 DUPTABLE                         R41 K91 [{"center", "scale"}]
      390 GETIMPORT                        R42 K93 [Rect.new]
      392 GETUPVAL                         R43 24
      393 GETUPVAL                         R44 24
      394 GETUPVAL                         R46 24
      395 ADDK                             R45 R46 K94 [1]
      396 GETUPVAL                         R47 24
      397 ADDK                             R46 R47 K94 [1]
      398 CALL                             R42 4 1
      399 SETTABLEKS                       R42 R41 K89 ["center"]
      401 LOADN                            R42 2
      402 SETTABLEKS                       R42 R41 K90 ["scale"]
      404 SETTABLEKS                       R41 R40 K84 ["slice"]
      406 GETTABLEKS                       R44 R4 K95 ["Color"]
      408 GETTABLEKS                       R43 R44 K96 ["Extended"]
      410 GETTABLEKS                       R42 R43 K97 ["Black"]
      412 GETTABLEKS                       R41 R42 K98 ["Black_10"]
      414 SETTABLEKS                       R41 R40 K85 ["imageStyle"]
      416 LOADK                            R41 K99 ["anchor-center-left"]
      417 SETTABLEKS                       R41 R40 K18 ["tag"]
      419 CALL                             R38 2 -1
      420 CALL                             R35 -1 1
      421 SETTABLEKS                       R35 R34 K40 ["Shadow"]
      423 CALL                             R31 3 1
      424 SETTABLEKS                       R31 R30 K25 ["SheetContainer"]
      426 GETUPVAL                         R32 8
      427 GETTABLEKS                       R31 R32 K16 ["createElement"]
      429 GETUPVAL                         R32 14
      430 DUPTABLE                         R33 K101 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      431 GETIMPORT                        R34 K103 [UDim2.fromScale]
      433 LOADN                            R35 2
      434 LOADN                            R36 2
      435 CALL                             R34 2 1
      436 SETTABLEKS                       R34 R33 K4 ["Size"]
      438 GETIMPORT                        R34 K103 [UDim2.fromScale]
      440 LOADK                            R35 K104 [-0.5]
      441 LOADK                            R36 K104 [-0.5]
      442 CALL                             R34 2 1
      443 SETTABLEKS                       R34 R33 K29 ["Position"]
      445 LOADN                            R34 1
      446 SETTABLEKS                       R34 R33 K17 ["ZIndex"]
      448 DUPTABLE                         R34 K51 [{"affordance"}]
      449 GETUPVAL                         R36 16
      450 GETTABLEKS                       R35 R36 K52 ["None"]
      452 SETTABLEKS                       R35 R34 K50 ["affordance"]
      454 SETTABLEKS                       R34 R33 K43 ["stateLayer"]
      456 NEWCLOSURE                       R36 P11
      457 CAPTURE                          VAL R4
      458 NAMECALL                         R34 R12 K38 ["map"]
      460 CALL                             R34 2 1
      461 SETTABLEKS                       R34 R33 K100 ["backgroundStyle"]
      463 SETTABLEKS                       R24 R33 K44 ["onActivated"]
      465 LOADK                            R35 K105 ["%*--backdrop"]
      466 GETTABLEKS                       R37 R2 K14 ["testId"]
      468 NAMECALL                         R35 R35 K24 ["format"]
      470 CALL                             R35 2 1
      471 MOVE                             R34 R35
      472 SETTABLEKS                       R34 R33 K14 ["testId"]
      474 CALL                             R31 2 1
      475 SETTABLEKS                       R31 R30 K26 ["Backdrop"]
      477 CALL                             R27 3 1
      478 MOVE                             R28 R3
      479 CALL                             R26 2 1
      480 RETURN                           R26 1

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
       82 GETIMPORT                        R15 K6 [require]
       84 GETTABLEKS                       R18 R0 K24 ["Components"]
       86 GETTABLEKS                       R17 R18 K25 ["Dialog"]
       88 GETTABLEKS                       R16 R17 K26 ["useDialogVariants"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R14 R15 K27 ["DIALOG_SIZES"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R17 R0 K21 ["Enums"]
       97 GETTABLEKS                       R16 R17 K28 ["DialogSize"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K29 ["Constants"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R19 R0 K21 ["Enums"]
      109 GETTABLEKS                       R18 R19 K30 ["ElevationLayer"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R21 R0 K13 ["Providers"]
      116 GETTABLEKS                       R20 R21 K31 ["Elevation"]
      118 GETTABLEKS                       R19 R20 K32 ["useElevation"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R20 K6 [require]
      123 GETTABLEKS                       R23 R0 K13 ["Providers"]
      125 GETTABLEKS                       R22 R23 K31 ["Elevation"]
      127 GETTABLEKS                       R21 R22 K33 ["ElevationProvider"]
      129 CALL                             R20 1 1
      130 GETTABLEKS                       R19 R20 K34 ["ElevationOwnerScope"]
      132 GETIMPORT                        R20 K6 [require]
      134 GETTABLEKS                       R22 R0 K18 ["Utility"]
      136 GETTABLEKS                       R21 R22 K35 ["Flags"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETIMPORT                        R24 K1 [script]
      143 GETTABLEKS                       R23 R24 K4 ["Parent"]
      145 GETTABLEKS                       R22 R23 K36 ["SheetContext"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETIMPORT                        R25 K1 [script]
      152 GETTABLEKS                       R24 R25 K4 ["Parent"]
      154 GETTABLEKS                       R23 R24 K37 ["Types"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETIMPORT                        R26 K1 [script]
      161 GETTABLEKS                       R25 R26 K4 ["Parent"]
      163 GETTABLEKS                       R24 R25 K38 ["SheetType"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R26 R0 K24 ["Components"]
      170 GETTABLEKS                       R25 R26 K39 ["View"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R27 R0 K24 ["Components"]
      177 GETTABLEKS                       R26 R27 K40 ["Image"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R28 R0 K24 ["Components"]
      184 GETTABLEKS                       R27 R28 K41 ["CloseAffordance"]
      186 CALL                             R26 1 1
      187 DUPTABLE                         R27 K44 [{"size", "testId"}]
      188 GETTABLEKS                       R28 R15 K45 ["Medium"]
      190 SETTABLEKS                       R28 R27 K42 ["size"]
      192 LOADK                            R28 K46 ["--foundation-sheet"]
      193 SETTABLEKS                       R28 R27 K43 ["testId"]
      195 GETTABLEKS                       R28 R16 K47 ["SHADOW_IMAGE"]
      197 GETTABLEKS                       R29 R16 K48 ["SHADOW_SIZE"]
      199 DUPCLOSURE                       R30 K49 [PROTO_12]
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R27
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R26
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R25
      223 CAPTURE                          VAL R28
      224 CAPTURE                          VAL R29
      225 GETTABLEKS                       R31 R2 K50 ["memo"]
      227 GETTABLEKS                       R32 R2 K51 ["forwardRef"]
      229 MOVE                             R33 R30
      230 CALL                             R32 1 -1
      231 CALL                             R31 -1 -1
      232 RETURN                           R31 -1
