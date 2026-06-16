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
       48 GETTABLEKS                       R1 R1 K18 ["Center"]
       50 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       52 GETUPVAL                         R1 9
       53 GETTABLEKS                       R1 R1 K15 ["testId"]
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
       26 GETTABLEKS                       R8 R4 K4 ["Size"]
       28 GETTABLEKS                       R8 R8 K5 ["Size_800"]
       30 GETUPVAL                         R9 8
       31 GETTABLEKS                       R9 R9 K6 ["useState"]
       33 LOADB                            R10 1
       34 CALL                             R9 1 2
       35 GETUPVAL                         R11 8
       36 GETTABLEKS                       R11 R11 K7 ["useRef"]
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
       51 GETUPVAL                         R16 8
       52 GETTABLEKS                       R16 R16 K8 ["useBinding"]
       54 LOADB                            R17 0
       55 CALL                             R16 1 2
       56 GETUPVAL                         R18 8
       57 GETTABLEKS                       R18 R18 K8 ["useBinding"]
       59 LOADB                            R19 0
       60 CALL                             R18 1 2
       61 GETUPVAL                         R20 8
       62 GETTABLEKS                       R20 R20 K8 ["useBinding"]
       64 LOADN                            R21 0
       65 CALL                             R20 1 2
       66 GETUPVAL                         R22 8
       67 GETTABLEKS                       R22 R22 K8 ["useBinding"]
       69 LOADN                            R23 0
       70 CALL                             R22 1 2
       71 GETUPVAL                         R24 8
       72 GETTABLEKS                       R24 R24 K9 ["useEffect"]
       74 NEWCLOSURE                       R25 P2
       75 CAPTURE                          VAL R15
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R13
       79 NEWTABLE                         R26 0 0
       81 CALL                             R24 2 0
       82 GETUPVAL                         R24 8
       83 GETTABLEKS                       R24 R24 K10 ["useCallback"]
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
       99 GETUPVAL                         R25 8
      100 GETTABLEKS                       R25 R25 K11 ["useImperativeHandle"]
      102 GETTABLEKS                       R26 R2 K12 ["sheetRef"]
      104 NEWCLOSURE                       R27 P4
      105 CAPTURE                          VAL R24
      106 NEWTABLE                         R28 0 0
      108 CALL                             R25 3 0
      109 GETUPVAL                         R25 8
      110 GETTABLEKS                       R25 R25 K13 ["useMemo"]
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
      132 JUMPIFNOT                        R26 ; [+334]
      133 GETUPVAL                         R26 13
      134 GETTABLEKS                       R26 R26 K15 ["createPortal"]
      136 GETUPVAL                         R27 8
      137 GETTABLEKS                       R27 R27 K16 ["createElement"]
      139 GETUPVAL                         R28 14
      140 DUPTABLE                         R29 K19 [{"ZIndex", "tag", "testId"}]
      141 GETTABLEKS                       R30 R5 K20 ["zIndex"]
      143 SETTABLEKS                       R30 R29 K17 ["ZIndex"]
      145 LOADK                            R30 K21 ["size-full"]
      146 SETTABLEKS                       R30 R29 K18 ["tag"]
      148 LOADK                            R31 K22 ["%*--surface"]
      149 GETTABLEKS                       R33 R2 K14 ["testId"]
      151 NAMECALL                         R31 R31 K23 ["format"]
      153 CALL                             R31 2 1
      154 MOVE                             R30 R31
      155 SETTABLEKS                       R30 R29 K14 ["testId"]
      157 DUPTABLE                         R30 K26 [{"SheetContainer", "Backdrop"}]
      158 GETUPVAL                         R31 8
      159 GETTABLEKS                       R31 R31 K16 ["createElement"]
      161 GETUPVAL                         R32 14
      162 DUPTABLE                         R33 K30 [{"ZIndex", "sizeConstraint", "Position", "tag", "GroupTransparency"}]
      163 LOADN                            R34 2
      164 SETTABLEKS                       R34 R33 K17 ["ZIndex"]
      166 DUPTABLE                         R34 K32 [{"MaxSize"}]
      167 GETIMPORT                        R35 K35 [Vector2.new]
      169 MOVE                             R36 R6
      170 MOVE                             R37 R7
      171 CALL                             R35 2 1
      172 SETTABLEKS                       R35 R34 K31 ["MaxSize"]
      174 SETTABLEKS                       R34 R33 K27 ["sizeConstraint"]
      176 DUPCLOSURE                       R36 K36 [PROTO_6]
      177 NAMECALL                         R34 R14 K37 ["map"]
      179 CALL                             R34 2 1
      180 SETTABLEKS                       R34 R33 K28 ["Position"]
      182 LOADK                            R34 K38 ["size-full col align-y-center padding-medium anchor-center-center"]
      183 SETTABLEKS                       R34 R33 K18 ["tag"]
      185 JUMPIFNOT                        R9 ; [+6]
      186 NEWCLOSURE                       R36 P7
      187 CAPTURE                          VAL R8
      188 NAMECALL                         R34 R14 K37 ["map"]
      190 CALL                             R34 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R34
      193 SETTABLEKS                       R34 R33 K29 ["GroupTransparency"]
      195 DUPTABLE                         R34 K40 [{"Sheet", "Shadow"}]
      196 GETUPVAL                         R35 8
      197 GETTABLEKS                       R35 R35 K16 ["createElement"]
      199 GETUPVAL                         R36 14
      200 DUPTABLE                         R37 K48 [{"ClipsDescendants", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      201 LOADB                            R38 1
      202 SETTABLEKS                       R38 R37 K41 ["ClipsDescendants"]
      204 DUPTABLE                         R38 K50 [{"affordance"}]
      205 GETUPVAL                         R39 15
      206 GETTABLEKS                       R39 R39 K51 ["None"]
      208 SETTABLEKS                       R39 R38 K49 ["affordance"]
      210 SETTABLEKS                       R38 R37 K42 ["stateLayer"]
      212 LOADN                            R38 2
      213 SETTABLEKS                       R38 R37 K17 ["ZIndex"]
      215 GETUPVAL                         R38 11
      216 GETTABLEKS                       R38 R38 K52 ["noop"]
      218 SETTABLEKS                       R38 R37 K43 ["onActivated"]
      220 NEWCLOSURE                       R38 P8
      221 CAPTURE                          VAL R23
      222 SETTABLEKS                       R38 R37 K44 ["onAbsoluteSizeChanged"]
      224 SETTABLEKS                       R1 R37 K45 ["ref"]
      226 GETUPVAL                         R38 16
      227 GETTABLEKS                       R38 R38 K53 ["nonSelectable"]
      229 SETTABLEKS                       R38 R37 K46 ["selection"]
      231 GETUPVAL                         R38 16
      232 GETTABLEKS                       R38 R38 K54 ["isolatedSelectionGroup"]
      234 SETTABLEKS                       R38 R37 K47 ["selectionGroup"]
      236 GETUPVAL                         R39 17
      237 GETTABLEKS                       R39 R39 K55 ["FoundationSheetCenterSheetNoShrink"]
      239 JUMPIFNOT                        R39 ; [+2]
      240 LOADK                            R38 K56 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"]
      241 JUMP                             ; [+1]
      242 LOADK                            R38 K57 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 shrink auto-y"]
      243 SETTABLEKS                       R38 R37 K18 ["tag"]
      245 GETTABLEKS                       R38 R2 K14 ["testId"]
      247 SETTABLEKS                       R38 R37 K14 ["testId"]
      249 DUPTABLE                         R38 K60 [{"Content", "CloseAffordance"}]
      250 GETUPVAL                         R39 8
      251 GETTABLEKS                       R39 R39 K16 ["createElement"]
      253 GETUPVAL                         R40 14
      254 DUPTABLE                         R41 K61 [{"tag"}]
      255 GETUPVAL                         R43 17
      256 GETTABLEKS                       R43 R43 K55 ["FoundationSheetCenterSheetNoShrink"]
      258 JUMPIFNOT                        R43 ; [+2]
      259 LOADK                            R42 K62 ["size-full-0 auto-y col items-center clip"]
      260 JUMP                             ; [+1]
      261 LOADK                            R42 K63 ["size-full-0 auto-y shrink col items-center clip"]
      262 SETTABLEKS                       R42 R41 K18 ["tag"]
      264 GETUPVAL                         R42 8
      265 GETTABLEKS                       R42 R42 K16 ["createElement"]
      267 GETUPVAL                         R43 18
      268 GETTABLEKS                       R43 R43 K64 ["Provider"]
      270 DUPTABLE                         R44 K66 [{"value"}]
      271 SETTABLEKS                       R25 R44 K65 ["value"]
      273 GETUPVAL                         R45 8
      274 GETTABLEKS                       R45 R45 K16 ["createElement"]
      276 GETUPVAL                         R46 19
      277 DUPTABLE                         R47 K68 [{"owner"}]
      278 SETTABLEKS                       R5 R47 K67 ["owner"]
      280 GETTABLEKS                       R48 R2 K69 ["children"]
      282 CALL                             R45 3 -1
      283 CALL                             R42 -1 -1
      284 CALL                             R39 -1 1
      285 SETTABLEKS                       R39 R38 K58 ["Content"]
      287 GETUPVAL                         R39 8
      288 GETTABLEKS                       R39 R39 K16 ["createElement"]
      290 GETUPVAL                         R40 20
      291 DUPTABLE                         R41 K73 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      292 SETTABLEKS                       R24 R41 K43 ["onActivated"]
      294 GETUPVAL                         R42 21
      295 GETTABLEKS                       R42 R42 K74 ["Utility"]
      297 SETTABLEKS                       R42 R41 K70 ["variant"]
      299 GETIMPORT                        R42 K76 [UDim2.new]
      301 LOADN                            R43 1
      302 GETTABLEKS                       R45 R4 K77 ["Margin"]
      304 GETTABLEKS                       R45 R45 K78 ["Small"]
      306 MINUS                            R44 R45
      307 LOADN                            R45 0
      308 GETTABLEKS                       R46 R4 K77 ["Margin"]
      310 GETTABLEKS                       R46 R46 K78 ["Small"]
      312 CALL                             R42 4 1
      313 SETTABLEKS                       R42 R41 K28 ["Position"]
      315 GETIMPORT                        R42 K35 [Vector2.new]
      317 LOADN                            R43 1
      318 LOADN                            R44 0
      319 CALL                             R42 2 1
      320 SETTABLEKS                       R42 R41 K71 ["AnchorPoint"]
      322 DUPCLOSURE                       R44 K79 [PROTO_9]
      323 NAMECALL                         R42 R18 K37 ["map"]
      325 CALL                             R42 2 1
      326 SETTABLEKS                       R42 R41 K72 ["Visible"]
      328 LOADK                            R43 K80 ["%*--close-affordance"]
      329 GETTABLEKS                       R45 R2 K14 ["testId"]
      331 NAMECALL                         R43 R43 K23 ["format"]
      333 CALL                             R43 2 1
      334 MOVE                             R42 R43
      335 SETTABLEKS                       R42 R41 K14 ["testId"]
      337 CALL                             R39 2 1
      338 SETTABLEKS                       R39 R38 K59 ["CloseAffordance"]
      340 CALL                             R35 3 1
      341 SETTABLEKS                       R35 R34 K0 ["Sheet"]
      343 GETUPVAL                         R35 8
      344 GETTABLEKS                       R35 R35 K16 ["createElement"]
      346 LOADK                            R36 K81 ["Folder"]
      347 LOADNIL                          R37
      348 GETUPVAL                         R38 8
      349 GETTABLEKS                       R38 R38 K16 ["createElement"]
      351 GETUPVAL                         R39 22
      352 DUPTABLE                         R40 K85 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      353 GETUPVAL                         R41 23
      354 SETTABLEKS                       R41 R40 K82 ["Image"]
      356 DUPCLOSURE                       R43 K86 [PROTO_10]
      357 CAPTURE                          UPVAL U24
      358 NAMECALL                         R41 R22 K37 ["map"]
      360 CALL                             R41 2 1
      361 SETTABLEKS                       R41 R40 K4 ["Size"]
      363 GETIMPORT                        R41 K76 [UDim2.new]
      365 LOADN                            R42 0
      366 GETUPVAL                         R44 24
      367 MINUS                            R43 R44
      368 LOADK                            R44 K87 [0.5]
      369 LOADN                            R45 0
      370 CALL                             R41 4 1
      371 SETTABLEKS                       R41 R40 K28 ["Position"]
      373 LOADN                            R41 1
      374 SETTABLEKS                       R41 R40 K17 ["ZIndex"]
      376 DUPTABLE                         R41 K90 [{"center", "scale"}]
      377 GETIMPORT                        R42 K92 [Rect.new]
      379 GETUPVAL                         R43 24
      380 GETUPVAL                         R44 24
      381 GETUPVAL                         R46 24
      382 ADDK                             R45 R46 K93 [1]
      383 GETUPVAL                         R47 24
      384 ADDK                             R46 R47 K93 [1]
      385 CALL                             R42 4 1
      386 SETTABLEKS                       R42 R41 K88 ["center"]
      388 LOADN                            R42 2
      389 SETTABLEKS                       R42 R41 K89 ["scale"]
      391 SETTABLEKS                       R41 R40 K83 ["slice"]
      393 GETTABLEKS                       R41 R4 K94 ["Color"]
      395 GETTABLEKS                       R41 R41 K95 ["Extended"]
      397 GETTABLEKS                       R41 R41 K96 ["Black"]
      399 GETTABLEKS                       R41 R41 K97 ["Black_10"]
      401 SETTABLEKS                       R41 R40 K84 ["imageStyle"]
      403 LOADK                            R41 K98 ["anchor-center-left"]
      404 SETTABLEKS                       R41 R40 K18 ["tag"]
      406 CALL                             R38 2 -1
      407 CALL                             R35 -1 1
      408 SETTABLEKS                       R35 R34 K39 ["Shadow"]
      410 CALL                             R31 3 1
      411 SETTABLEKS                       R31 R30 K24 ["SheetContainer"]
      413 GETUPVAL                         R31 8
      414 GETTABLEKS                       R31 R31 K16 ["createElement"]
      416 GETUPVAL                         R32 14
      417 DUPTABLE                         R33 K100 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      418 GETIMPORT                        R34 K102 [UDim2.fromScale]
      420 LOADN                            R35 2
      421 LOADN                            R36 2
      422 CALL                             R34 2 1
      423 SETTABLEKS                       R34 R33 K4 ["Size"]
      425 GETIMPORT                        R34 K102 [UDim2.fromScale]
      427 LOADK                            R35 K103 [-0.5]
      428 LOADK                            R36 K103 [-0.5]
      429 CALL                             R34 2 1
      430 SETTABLEKS                       R34 R33 K28 ["Position"]
      432 LOADN                            R34 1
      433 SETTABLEKS                       R34 R33 K17 ["ZIndex"]
      435 DUPTABLE                         R34 K50 [{"affordance"}]
      436 GETUPVAL                         R35 15
      437 GETTABLEKS                       R35 R35 K51 ["None"]
      439 SETTABLEKS                       R35 R34 K49 ["affordance"]
      441 SETTABLEKS                       R34 R33 K42 ["stateLayer"]
      443 NEWCLOSURE                       R36 P11
      444 CAPTURE                          VAL R4
      445 NAMECALL                         R34 R12 K37 ["map"]
      447 CALL                             R34 2 1
      448 SETTABLEKS                       R34 R33 K99 ["backgroundStyle"]
      450 SETTABLEKS                       R24 R33 K43 ["onActivated"]
      452 LOADK                            R35 K104 ["%*--backdrop"]
      453 GETTABLEKS                       R37 R2 K14 ["testId"]
      455 NAMECALL                         R35 R35 K23 ["format"]
      457 CALL                             R35 2 1
      458 MOVE                             R34 R35
      459 SETTABLEKS                       R34 R33 K14 ["testId"]
      461 CALL                             R31 2 1
      462 SETTABLEKS                       R31 R30 K25 ["Backdrop"]
      464 CALL                             R27 3 1
      465 MOVE                             R28 R3
      466 CALL                             R26 2 1
      467 RETURN                           R26 1

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
      187 DUPTABLE                         R27 K44 [{"size", "testId"}]
      188 GETTABLEKS                       R28 R16 K45 ["Medium"]
      190 SETTABLEKS                       R28 R27 K42 ["size"]
      192 LOADK                            R28 K46 ["--foundation-sheet"]
      193 SETTABLEKS                       R28 R27 K43 ["testId"]
      195 GETTABLEKS                       R28 R15 K47 ["SHADOW_IMAGE"]
      197 GETTABLEKS                       R29 R15 K48 ["SHADOW_SIZE"]
      199 DUPCLOSURE                       R30 K49 [PROTO_12]
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R27
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R26
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R25
      223 CAPTURE                          VAL R28
      224 CAPTURE                          VAL R29
      225 GETTABLEKS                       R31 R4 K50 ["memo"]
      227 GETTABLEKS                       R32 R4 K51 ["forwardRef"]
      229 MOVE                             R33 R30
      230 CALL                             R32 1 -1
      231 CALL                             R31 -1 -1
      232 RETURN                           R31 -1
