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
       10 GETTABLEKS                       R8 R2 K0 ["size"]
       12 GETTABLE                         R6 R7 R8
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 4
       15 LOADN                            R7 88
       16 CALL                             R6 1 1
       17 GETTABLEKS                       R8 R4 K1 ["Size"]
       19 GETTABLEKS                       R7 R8 K2 ["Size_800"]
       21 GETUPVAL                         R9 6
       22 GETTABLEKS                       R8 R9 K3 ["useState"]
       24 LOADB                            R9 1
       25 CALL                             R8 1 2
       26 GETUPVAL                         R11 6
       27 GETTABLEKS                       R10 R11 K4 ["useRef"]
       29 LOADB                            R11 0
       30 CALL                             R10 1 1
       31 GETUPVAL                         R11 7
       32 LOADN                            R12 1
       33 NEWCLOSURE                       R13 P0
       34 CAPTURE                          VAL R10
       35 CAPTURE                          VAL R2
       36 CALL                             R11 2 2
       37 GETUPVAL                         R13 7
       38 MOVE                             R14 R7
       39 NEWCLOSURE                       R15 P1
       40 CAPTURE                          VAL R9
       41 CALL                             R13 2 2
       42 GETUPVAL                         R16 6
       43 GETTABLEKS                       R15 R16 K5 ["useBinding"]
       45 LOADB                            R16 0
       46 CALL                             R15 1 2
       47 GETUPVAL                         R18 6
       48 GETTABLEKS                       R17 R18 K5 ["useBinding"]
       50 LOADB                            R18 0
       51 CALL                             R17 1 2
       52 GETUPVAL                         R20 6
       53 GETTABLEKS                       R19 R20 K5 ["useBinding"]
       55 LOADN                            R20 0
       56 CALL                             R19 1 2
       57 GETUPVAL                         R22 6
       58 GETTABLEKS                       R21 R22 K5 ["useBinding"]
       60 LOADN                            R22 0
       61 CALL                             R21 1 2
       62 GETUPVAL                         R24 6
       63 GETTABLEKS                       R23 R24 K6 ["useEffect"]
       65 NEWCLOSURE                       R24 P2
       66 CAPTURE                          VAL R14
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R12
       70 NEWTABLE                         R25 0 0
       72 CALL                             R23 2 0
       73 GETUPVAL                         R24 6
       74 GETTABLEKS                       R23 R24 K7 ["useCallback"]
       76 NEWCLOSURE                       R24 P3
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R14
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R9
       84 NEWTABLE                         R25 0 1
       86 MOVE                             R26 R7
       87 SETLIST                          R25 R26 1 [1]
       89 CALL                             R23 2 1
       90 GETUPVAL                         R25 6
       91 GETTABLEKS                       R24 R25 K8 ["useImperativeHandle"]
       93 GETTABLEKS                       R25 R2 K9 ["sheetRef"]
       95 NEWCLOSURE                       R26 P4
       96 CAPTURE                          VAL R23
       97 NEWTABLE                         R27 0 0
       99 CALL                             R24 3 0
      100 GETUPVAL                         R25 6
      101 GETTABLEKS                       R24 R25 K10 ["useMemo"]
      103 NEWCLOSURE                       R25 P5
      104 CAPTURE                          UPVAL U9
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R19
      108 CAPTURE                          VAL R20
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R23
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          VAL R2
      114 NEWTABLE                         R26 0 2
      116 GETTABLEKS                       R27 R2 K11 ["testId"]
      118 MOVE                             R28 R23
      119 SETLIST                          R26 R27 2 [1]
      121 CALL                             R24 2 1
      122 MOVE                             R25 R3
      123 JUMPIFNOT                        R25 ; [+304]
      124 GETUPVAL                         R26 11
      125 GETTABLEKS                       R25 R26 K12 ["createPortal"]
      127 GETUPVAL                         R27 6
      128 GETTABLEKS                       R26 R27 K13 ["createElement"]
      130 GETUPVAL                         R27 12
      131 DUPTABLE                         R28 K16 [{"ZIndex", "tag"}]
      132 LOADN                            R29 5
      133 SETTABLEKS                       R29 R28 K14 ["ZIndex"]
      135 LOADK                            R29 K17 ["size-full"]
      136 SETTABLEKS                       R29 R28 K15 ["tag"]
      138 DUPTABLE                         R29 K20 [{"SheetContainer", "Backdrop"}]
      139 GETUPVAL                         R31 6
      140 GETTABLEKS                       R30 R31 K13 ["createElement"]
      142 GETUPVAL                         R31 12
      143 DUPTABLE                         R32 K24 [{"ZIndex", "sizeConstraint", "Position", "tag", "GroupTransparency"}]
      144 LOADN                            R33 2
      145 SETTABLEKS                       R33 R32 K14 ["ZIndex"]
      147 DUPTABLE                         R33 K26 [{"MaxSize"}]
      148 GETIMPORT                        R34 K29 [Vector2.new]
      150 MOVE                             R35 R5
      151 MOVE                             R36 R6
      152 CALL                             R34 2 1
      153 SETTABLEKS                       R34 R33 K25 ["MaxSize"]
      155 SETTABLEKS                       R33 R32 K21 ["sizeConstraint"]
      157 DUPCLOSURE                       R35 K30 [PROTO_6]
      158 NAMECALL                         R33 R13 K31 ["map"]
      160 CALL                             R33 2 1
      161 SETTABLEKS                       R33 R32 K22 ["Position"]
      163 LOADK                            R33 K32 ["size-full col align-y-center padding-medium anchor-center-center"]
      164 SETTABLEKS                       R33 R32 K15 ["tag"]
      166 JUMPIFNOT                        R8 ; [+6]
      167 NEWCLOSURE                       R35 P7
      168 CAPTURE                          VAL R7
      169 NAMECALL                         R33 R13 K31 ["map"]
      171 CALL                             R33 2 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R33
      174 SETTABLEKS                       R33 R32 K23 ["GroupTransparency"]
      176 DUPTABLE                         R33 K35 [{"Sheet", "Shadow"}]
      177 GETUPVAL                         R35 6
      178 GETTABLEKS                       R34 R35 K13 ["createElement"]
      180 GETUPVAL                         R35 12
      181 DUPTABLE                         R36 K43 [{"ClipsDescendants", "stateLayer", "ZIndex", "onActivated", "onAbsoluteSizeChanged", "ref", "selection", "selectionGroup", "tag", "testId"}]
      182 LOADB                            R37 1
      183 SETTABLEKS                       R37 R36 K36 ["ClipsDescendants"]
      185 DUPTABLE                         R37 K45 [{"affordance"}]
      186 GETUPVAL                         R39 13
      187 GETTABLEKS                       R38 R39 K46 ["None"]
      189 SETTABLEKS                       R38 R37 K44 ["affordance"]
      191 SETTABLEKS                       R37 R36 K37 ["stateLayer"]
      193 LOADN                            R37 2
      194 SETTABLEKS                       R37 R36 K14 ["ZIndex"]
      196 GETUPVAL                         R38 9
      197 GETTABLEKS                       R37 R38 K47 ["noop"]
      199 SETTABLEKS                       R37 R36 K38 ["onActivated"]
      201 NEWCLOSURE                       R37 P8
      202 CAPTURE                          VAL R22
      203 SETTABLEKS                       R37 R36 K39 ["onAbsoluteSizeChanged"]
      205 SETTABLEKS                       R1 R36 K40 ["ref"]
      207 GETUPVAL                         R38 14
      208 GETTABLEKS                       R37 R38 K48 ["nonSelectable"]
      210 SETTABLEKS                       R37 R36 K41 ["selection"]
      212 GETUPVAL                         R38 14
      213 GETTABLEKS                       R37 R38 K49 ["isolatedSelectionGroup"]
      215 SETTABLEKS                       R37 R36 K42 ["selectionGroup"]
      217 LOADK                            R37 K50 ["bg-surface-100 stroke-default stroke-standard radius-large size-full-0 shrink auto-y"]
      218 SETTABLEKS                       R37 R36 K15 ["tag"]
      220 GETTABLEKS                       R37 R2 K11 ["testId"]
      222 SETTABLEKS                       R37 R36 K11 ["testId"]
      224 DUPTABLE                         R37 K53 [{"Content", "CloseAffordance"}]
      225 GETUPVAL                         R39 6
      226 GETTABLEKS                       R38 R39 K13 ["createElement"]
      228 GETUPVAL                         R39 12
      229 DUPTABLE                         R40 K54 [{"tag"}]
      230 LOADK                            R41 K55 ["size-full-0 auto-y shrink col items-center clip"]
      231 SETTABLEKS                       R41 R40 K15 ["tag"]
      233 GETUPVAL                         R42 6
      234 GETTABLEKS                       R41 R42 K13 ["createElement"]
      236 GETUPVAL                         R43 15
      237 GETTABLEKS                       R42 R43 K56 ["Provider"]
      239 DUPTABLE                         R43 K58 [{"value"}]
      240 SETTABLEKS                       R24 R43 K57 ["value"]
      242 GETTABLEKS                       R44 R2 K59 ["children"]
      244 CALL                             R41 3 -1
      245 CALL                             R38 -1 1
      246 SETTABLEKS                       R38 R37 K51 ["Content"]
      248 GETUPVAL                         R39 6
      249 GETTABLEKS                       R38 R39 K13 ["createElement"]
      251 GETUPVAL                         R39 16
      252 DUPTABLE                         R40 K63 [{"onActivated", "variant", "Position", "AnchorPoint", "Visible", "testId"}]
      253 SETTABLEKS                       R23 R40 K38 ["onActivated"]
      255 GETUPVAL                         R42 17
      256 GETTABLEKS                       R41 R42 K64 ["Utility"]
      258 SETTABLEKS                       R41 R40 K60 ["variant"]
      260 GETIMPORT                        R41 K66 [UDim2.new]
      262 LOADN                            R42 1
      263 GETTABLEKS                       R45 R4 K67 ["Margin"]
      265 GETTABLEKS                       R44 R45 K68 ["Small"]
      267 MINUS                            R43 R44
      268 LOADN                            R44 0
      269 GETTABLEKS                       R46 R4 K67 ["Margin"]
      271 GETTABLEKS                       R45 R46 K68 ["Small"]
      273 CALL                             R41 4 1
      274 SETTABLEKS                       R41 R40 K22 ["Position"]
      276 GETIMPORT                        R41 K29 [Vector2.new]
      278 LOADN                            R42 1
      279 LOADN                            R43 0
      280 CALL                             R41 2 1
      281 SETTABLEKS                       R41 R40 K61 ["AnchorPoint"]
      283 DUPCLOSURE                       R43 K69 [PROTO_9]
      284 NAMECALL                         R41 R17 K31 ["map"]
      286 CALL                             R41 2 1
      287 SETTABLEKS                       R41 R40 K62 ["Visible"]
      289 LOADK                            R42 K70 ["%*--close-affordance"]
      290 GETTABLEKS                       R44 R2 K11 ["testId"]
      292 NAMECALL                         R42 R42 K71 ["format"]
      294 CALL                             R42 2 1
      295 MOVE                             R41 R42
      296 SETTABLEKS                       R41 R40 K11 ["testId"]
      298 CALL                             R38 2 1
      299 SETTABLEKS                       R38 R37 K52 ["CloseAffordance"]
      301 CALL                             R34 3 1
      302 SETTABLEKS                       R34 R33 K33 ["Sheet"]
      304 GETUPVAL                         R35 6
      305 GETTABLEKS                       R34 R35 K13 ["createElement"]
      307 LOADK                            R35 K72 ["Folder"]
      308 LOADNIL                          R36
      309 GETUPVAL                         R38 6
      310 GETTABLEKS                       R37 R38 K13 ["createElement"]
      312 GETUPVAL                         R38 18
      313 DUPTABLE                         R39 K76 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "tag"}]
      314 GETUPVAL                         R40 19
      315 SETTABLEKS                       R40 R39 K73 ["Image"]
      317 DUPCLOSURE                       R42 K77 [PROTO_10]
      318 CAPTURE                          UPVAL U20
      319 NAMECALL                         R40 R21 K31 ["map"]
      321 CALL                             R40 2 1
      322 SETTABLEKS                       R40 R39 K1 ["Size"]
      324 GETIMPORT                        R40 K66 [UDim2.new]
      326 LOADN                            R41 0
      327 GETUPVAL                         R43 20
      328 MINUS                            R42 R43
      329 LOADK                            R43 K78 [0.5]
      330 LOADN                            R44 0
      331 CALL                             R40 4 1
      332 SETTABLEKS                       R40 R39 K22 ["Position"]
      334 LOADN                            R40 1
      335 SETTABLEKS                       R40 R39 K14 ["ZIndex"]
      337 DUPTABLE                         R40 K81 [{"center", "scale"}]
      338 GETIMPORT                        R41 K83 [Rect.new]
      340 GETUPVAL                         R42 20
      341 GETUPVAL                         R43 20
      342 GETUPVAL                         R45 20
      343 ADDK                             R44 R45 K84 [1]
      344 GETUPVAL                         R46 20
      345 ADDK                             R45 R46 K84 [1]
      346 CALL                             R41 4 1
      347 SETTABLEKS                       R41 R40 K79 ["center"]
      349 LOADN                            R41 2
      350 SETTABLEKS                       R41 R40 K80 ["scale"]
      352 SETTABLEKS                       R40 R39 K74 ["slice"]
      354 GETTABLEKS                       R43 R4 K85 ["Color"]
      356 GETTABLEKS                       R42 R43 K86 ["Extended"]
      358 GETTABLEKS                       R41 R42 K87 ["Black"]
      360 GETTABLEKS                       R40 R41 K88 ["Black_10"]
      362 SETTABLEKS                       R40 R39 K75 ["imageStyle"]
      364 LOADK                            R40 K89 ["anchor-center-left"]
      365 SETTABLEKS                       R40 R39 K15 ["tag"]
      367 CALL                             R37 2 -1
      368 CALL                             R34 -1 1
      369 SETTABLEKS                       R34 R33 K34 ["Shadow"]
      371 CALL                             R30 3 1
      372 SETTABLEKS                       R30 R29 K18 ["SheetContainer"]
      374 GETUPVAL                         R31 6
      375 GETTABLEKS                       R30 R31 K13 ["createElement"]
      377 GETUPVAL                         R31 12
      378 DUPTABLE                         R32 K91 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      379 GETIMPORT                        R33 K93 [UDim2.fromScale]
      381 LOADN                            R34 2
      382 LOADN                            R35 2
      383 CALL                             R33 2 1
      384 SETTABLEKS                       R33 R32 K1 ["Size"]
      386 GETIMPORT                        R33 K93 [UDim2.fromScale]
      388 LOADK                            R34 K94 [-0.5]
      389 LOADK                            R35 K94 [-0.5]
      390 CALL                             R33 2 1
      391 SETTABLEKS                       R33 R32 K22 ["Position"]
      393 LOADN                            R33 1
      394 SETTABLEKS                       R33 R32 K14 ["ZIndex"]
      396 DUPTABLE                         R33 K45 [{"affordance"}]
      397 GETUPVAL                         R35 13
      398 GETTABLEKS                       R34 R35 K46 ["None"]
      400 SETTABLEKS                       R34 R33 K44 ["affordance"]
      402 SETTABLEKS                       R33 R32 K37 ["stateLayer"]
      404 NEWCLOSURE                       R35 P11
      405 CAPTURE                          VAL R4
      406 NAMECALL                         R33 R11 K31 ["map"]
      408 CALL                             R33 2 1
      409 SETTABLEKS                       R33 R32 K90 ["backgroundStyle"]
      411 SETTABLEKS                       R23 R32 K38 ["onActivated"]
      413 LOADK                            R34 K95 ["%*--backdrop"]
      414 GETTABLEKS                       R36 R2 K11 ["testId"]
      416 NAMECALL                         R34 R34 K71 ["format"]
      418 CALL                             R34 2 1
      419 MOVE                             R33 R34
      420 SETTABLEKS                       R33 R32 K11 ["testId"]
      422 CALL                             R30 2 1
      423 SETTABLEKS                       R30 R29 K19 ["Backdrop"]
      425 CALL                             R26 3 1
      426 MOVE                             R27 R3
      427 CALL                             R25 2 1
      428 RETURN                           R25 1

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
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R19 R20 K4 ["Parent"]
      111 GETTABLEKS                       R18 R19 K30 ["SheetContext"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R21 K1 [script]
      118 GETTABLEKS                       R20 R21 K4 ["Parent"]
      120 GETTABLEKS                       R19 R20 K31 ["Types"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETIMPORT                        R22 K1 [script]
      127 GETTABLEKS                       R21 R22 K4 ["Parent"]
      129 GETTABLEKS                       R20 R21 K32 ["SheetType"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K6 [require]
      134 GETTABLEKS                       R22 R0 K24 ["Components"]
      136 GETTABLEKS                       R21 R22 K33 ["View"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETTABLEKS                       R23 R0 K24 ["Components"]
      143 GETTABLEKS                       R22 R23 K34 ["Image"]
      145 CALL                             R21 1 1
      146 GETIMPORT                        R22 K6 [require]
      148 GETTABLEKS                       R24 R0 K24 ["Components"]
      150 GETTABLEKS                       R23 R24 K35 ["CloseAffordance"]
      152 CALL                             R22 1 1
      153 DUPTABLE                         R23 K38 [{"size", "testId"}]
      154 GETTABLEKS                       R24 R15 K39 ["Medium"]
      156 SETTABLEKS                       R24 R23 K36 ["size"]
      158 LOADK                            R24 K40 ["--foundation-sheet"]
      159 SETTABLEKS                       R24 R23 K37 ["testId"]
      161 GETTABLEKS                       R24 R16 K41 ["SHADOW_IMAGE"]
      163 GETTABLEKS                       R25 R16 K42 ["SHADOW_SIZE"]
      165 DUPCLOSURE                       R26 K43 [PROTO_12]
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R25
      187 GETTABLEKS                       R27 R2 K44 ["memo"]
      189 GETTABLEKS                       R28 R2 K45 ["forwardRef"]
      191 MOVE                             R29 R26
      192 CALL                             R28 1 -1
      193 CALL                             R27 -1 -1
      194 RETURN                           R27 -1
