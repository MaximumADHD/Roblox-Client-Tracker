PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 LOADN                            R3 1
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 AND                              R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_4:
        0 JUMPIF                           R0 ; [+2]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETIMPORT                        R1 K2 [UDim.new]
        5 LOADN                            R2 0
        6 LOADN                            R3 0
        7 CALL                             R1 2 1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K2 [UDim.new]
       11 LOADN                            R2 0
       12 GETUPVAL                         R4 1
       13 JUMPIFNOT                        R4 ; [+6]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["Padding"]
       17 GETTABLEKS                       R3 R3 K4 ["Small"]
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K5 ["Margin"]
       23 GETTABLEKS                       R3 R3 K4 ["Small"]
       25 CALL                             R1 2 1
       26 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R5 0
        4 ADD                              R4 R0 R5
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K3 ["Margin"]
        8 GETTABLEKS                       R5 R5 K4 ["Small"]
       10 ADD                              R3 R4 R5
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 LOADN                            R6 0
        6 FASTCALL2                        MATH_MAX R6 R0 ; [+4]
        8 MOVE                             R7 R0
        9 GETIMPORT                        R5 K5 [math.max]
       11 CALL                             R5 2 1
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K1 ["innerScrollingEnabled"]
        9 GETTABLEKS                       R5 R3 K2 ["setInnerScrollY"]
       11 GETTABLEKS                       R6 R3 K3 ["innerScrollingRef"]
       13 GETTABLEKS                       R7 R3 K4 ["actionsHeight"]
       15 GETTABLEKS                       R8 R3 K5 ["sheetContentHeight"]
       17 GETTABLEKS                       R9 R3 K6 ["setHasActionsDivider"]
       19 GETTABLEKS                       R10 R3 K7 ["bottomPadding"]
       21 GETTABLEKS                       R11 R3 K8 ["hasHeader"]
       23 GETUPVAL                         R13 3
       24 GETTABLEKS                       R13 R13 K9 ["FoundationSheetFullBleed"]
       26 JUMPIFNOT                        R13 ; [+3]
       27 GETTABLEKS                       R12 R3 K10 ["hasFullBleed"]
       29 JUMP                             ; [+1]
       30 LOADB                            R12 0
       31 GETUPVAL                         R14 3
       32 GETTABLEKS                       R14 R14 K9 ["FoundationSheetFullBleed"]
       34 JUMPIFNOT                        R14 ; [+3]
       35 GETTABLEKS                       R13 R3 K11 ["fullBleedHeight"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R13
       39 GETTABLEKS                       R14 R3 K12 ["sheetType"]
       41 GETTABLEKS                       R15 R3 K13 ["testId"]
       43 MOVE                             R17 R4
       44 JUMPIFNOT                        R17 ; [+11]
       45 MOVE                             R17 R5
       46 JUMPIFNOT                        R17 ; [+9]
       47 MOVE                             R17 R7
       48 JUMPIFNOT                        R17 ; [+7]
       49 MOVE                             R17 R9
       50 JUMPIFNOT                        R17 ; [+5]
       51 MOVE                             R17 R10
       52 JUMPIFNOT                        R17 ; [+3]
       53 MOVE                             R17 R11
       54 JUMPIFNOT                        R17 ; [+1]
       55 MOVE                             R17 R15
       56 FASTCALL2K                       ASSERT R17 K14 ; [+4]
       58 LOADK                            R18 K14 ["SheetContent must be used within a Sheet"]
       59 GETIMPORT                        R16 K16 [assert]
       61 CALL                             R16 2 0
       62 GETUPVAL                         R16 1
       63 GETTABLEKS                       R16 R16 K17 ["useBinding"]
       65 LOADB                            R17 0
       66 CALL                             R16 1 2
       67 GETUPVAL                         R18 1
       68 GETTABLEKS                       R18 R18 K18 ["useCallback"]
       70 NEWCLOSURE                       R19 P0
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R17
       75 NEWTABLE                         R20 0 2
       77 MOVE                             R21 R9
       78 MOVE                             R22 R5
       79 SETLIST                          R20 R21 2 [1]
       81 CALL                             R18 2 1
       82 GETUPVAL                         R19 1
       83 GETTABLEKS                       R19 R19 K17 ["useBinding"]
       85 LOADN                            R20 0
       86 CALL                             R19 1 2
       87 GETUPVAL                         R21 1
       88 GETTABLEKS                       R21 R21 K18 ["useCallback"]
       90 NEWCLOSURE                       R22 P1
       91 CAPTURE                          VAL R20
       92 NEWTABLE                         R23 0 0
       94 CALL                             R21 2 1
       95 GETUPVAL                         R23 5
       96 GETTABLEKS                       R23 R23 K19 ["Bottom"]
       98 JUMPIFEQ                         R14 R23 ; [+2]
      100 LOADB                            R22 0 +1
      101 LOADB                            R22 1
      102 GETUPVAL                         R24 3
      103 GETTABLEKS                       R24 R24 K20 ["FoundationFullBleedSheetContent"]
      105 JUMPIFNOT                        R24 ; [+5]
      106 GETTABLEKS                       R24 R0 K21 ["isContentFullBleed"]
      108 JUMPIFNOT                        R24 ; [+2]
      109 LOADNIL                          R23
      110 JUMP                             ; [+8]
      111 GETIMPORT                        R23 K24 [UDim.new]
      113 LOADN                            R24 0
      114 GETTABLEKS                       R25 R2 K25 ["Padding"]
      116 GETTABLEKS                       R25 R25 K26 ["Small"]
      118 CALL                             R23 2 1
      119 GETTABLEKS                       R25 R0 K27 ["Selectable"]
      121 JUMPIFNOTEQKNIL                  R25 ; [+3]
      123 LOADB                            R24 1
      124 JUMP                             ; [+2]
      125 GETTABLEKS                       R24 R0 K27 ["Selectable"]
      127 JUMPIFNOT                        R16 ; [+6]
      128 NEWCLOSURE                       R27 P2
      129 CAPTURE                          VAL R24
      130 NAMECALL                         R25 R16 K28 ["map"]
      132 CALL                             R25 2 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R25
      135 GETUPVAL                         R27 3
      136 GETTABLEKS                       R27 R27 K29 ["FoundationBottomSheetInnerScrollingSync"]
      138 JUMPIFNOT                        R27 ; [+6]
      139 GETUPVAL                         R26 6
      140 MOVE                             R27 R6
      141 GETTABLEKS                       R28 R0 K30 ["scrollingFrameRef"]
      143 CALL                             R26 2 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R26
      146 GETUPVAL                         R27 1
      147 GETTABLEKS                       R27 R27 K31 ["createElement"]
      149 GETUPVAL                         R28 7
      150 DUPTABLE                         R29 K45 [{["scrollingFrameRef"], ["ZIndex"] = 1, ["selection"], ["scroll"], ["Size"], ["padding"], ["ClipsDescendants"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["onAbsoluteWindowSizeChanged"], ["testId"], ["tag"] = "fill size-full-0 auto-y", ["ref"]}]
      151 GETUPVAL                         R31 3
      152 GETTABLEKS                       R31 R31 K29 ["FoundationBottomSheetInnerScrollingSync"]
      154 JUMPIFNOT                        R31 ; [+2]
      155 MOVE                             R30 R26
      156 JUMP                             ; [+2]
      157 GETTABLEKS                       R30 R0 K30 ["scrollingFrameRef"]
      159 SETTABLEKS                       R30 R29 K30 ["scrollingFrameRef"]
      161 DUPTABLE                         R30 K50 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      162 SETTABLEKS                       R25 R30 K27 ["Selectable"]
      164 GETTABLEKS                       R31 R0 K46 ["NextSelectionUp"]
      166 SETTABLEKS                       R31 R30 K46 ["NextSelectionUp"]
      168 GETTABLEKS                       R31 R0 K47 ["NextSelectionDown"]
      170 SETTABLEKS                       R31 R30 K47 ["NextSelectionDown"]
      172 GETTABLEKS                       R31 R0 K48 ["NextSelectionLeft"]
      174 SETTABLEKS                       R31 R30 K48 ["NextSelectionLeft"]
      176 GETTABLEKS                       R31 R0 K49 ["NextSelectionRight"]
      178 SETTABLEKS                       R31 R30 K49 ["NextSelectionRight"]
      180 SETTABLEKS                       R30 R29 K34 ["selection"]
      182 DUPTABLE                         R30 K55 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      183 SETTABLEKS                       R4 R30 K51 ["ScrollingEnabled"]
      185 GETIMPORT                        R31 K59 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R31 R30 K52 ["AutomaticCanvasSize"]
      189 JUMPIFNOT                        R8 ; [+5]
      190 DUPCLOSURE                       R33 K60 [PROTO_3]
      191 NAMECALL                         R31 R19 K28 ["map"]
      193 CALL                             R31 2 1
      194 JUMP                             ; [+5]
      195 GETIMPORT                        R31 K63 [UDim2.fromScale]
      197 LOADN                            R32 1
      198 LOADN                            R33 0
      199 CALL                             R31 2 1
      200 SETTABLEKS                       R31 R30 K53 ["CanvasSize"]
      202 GETIMPORT                        R31 K64 [Enum.ScrollingDirection.Y]
      204 SETTABLEKS                       R31 R30 K54 ["ScrollingDirection"]
      206 SETTABLEKS                       R30 R29 K35 ["scroll"]
      208 JUMPIFNOT                        R8 ; [+6]
      209 GETIMPORT                        R30 K63 [UDim2.fromScale]
      211 LOADN                            R31 1
      212 LOADN                            R32 1
      213 CALL                             R30 2 1
      214 JUMP                             ; [+1]
      215 LOADNIL                          R30
      216 SETTABLEKS                       R30 R29 K36 ["Size"]
      218 DUPTABLE                         R30 K69 [{"top", "bottom", "left", "right"}]
      219 NEWCLOSURE                       R33 P4
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R2
      223 NAMECALL                         R31 R11 K28 ["map"]
      225 CALL                             R31 2 1
      226 SETTABLEKS                       R31 R30 K65 ["top"]
      228 JUMPIFNOT                        R22 ; [+7]
      229 NEWCLOSURE                       R33 P5
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R2
      232 NAMECALL                         R31 R7 K28 ["map"]
      234 CALL                             R31 2 1
      235 JUMP                             ; [+8]
      236 GETIMPORT                        R31 K24 [UDim.new]
      238 LOADN                            R32 0
      239 GETTABLEKS                       R33 R2 K25 ["Padding"]
      241 GETTABLEKS                       R33 R33 K26 ["Small"]
      243 CALL                             R31 2 1
      244 SETTABLEKS                       R31 R30 K66 ["bottom"]
      246 SETTABLEKS                       R23 R30 K67 ["left"]
      248 SETTABLEKS                       R23 R30 K68 ["right"]
      250 SETTABLEKS                       R30 R29 K37 ["padding"]
      252 JUMPIFNOT                        R22 ; [+2]
      253 MOVE                             R30 R11
      254 JUMP                             ; [+1]
      255 LOADB                            R30 1
      256 SETTABLEKS                       R30 R29 K38 ["ClipsDescendants"]
      258 NEWCLOSURE                       R30 P6
      259 CAPTURE                          VAL R5
      260 SETTABLEKS                       R30 R29 K39 ["onCanvasPositionChanged"]
      262 SETTABLEKS                       R18 R29 K40 ["onAbsoluteCanvasSizeChanged"]
      264 SETTABLEKS                       R18 R29 K41 ["onAbsoluteWindowSizeChanged"]
      266 LOADK                            R31 K70 ["%*--content"]
      267 MOVE                             R33 R15
      268 NAMECALL                         R31 R31 K71 ["format"]
      270 CALL                             R31 2 1
      271 MOVE                             R30 R31
      272 SETTABLEKS                       R30 R29 K13 ["testId"]
      274 SETTABLEKS                       R1 R29 K44 ["ref"]
      276 GETUPVAL                         R30 1
      277 GETTABLEKS                       R30 R30 K31 ["createElement"]
      279 GETUPVAL                         R31 8
      280 DUPTABLE                         R32 K73 [{"onAbsoluteSizeChanged", "tag"}]
      281 SETTABLEKS                       R21 R32 K72 ["onAbsoluteSizeChanged"]
      283 GETUPVAL                         R34 3
      284 GETTABLEKS                       R34 R34 K20 ["FoundationFullBleedSheetContent"]
      286 JUMPIFNOT                        R34 ; [+11]
      287 NEWTABLE                         R33 2 0
      289 LOADB                            R34 1
      290 SETTABLEKS                       R34 R33 K74 ["col align-x-center gap-medium size-full-0 auto-y"]
      292 GETTABLEKS                       R35 R0 K21 ["isContentFullBleed"]
      294 NOT                              R34 R35
      295 SETTABLEKS                       R34 R33 K75 ["padding-x-medium"]
      297 JUMP                             ; [+1]
      298 LOADK                            R33 K76 ["col align-x-center gap-medium size-full-0 auto-y padding-x-medium"]
      299 SETTABLEKS                       R33 R32 K42 ["tag"]
      301 GETUPVAL                         R34 3
      302 GETTABLEKS                       R34 R34 K9 ["FoundationSheetFullBleed"]
      304 JUMPIFNOT                        R34 ; [+45]
      305 DUPTABLE                         R33 K79 [{"FullBleedSpacer", "Children"}]
      306 JUMPIFNOT                        R12 ; [+27]
      307 JUMPIFNOT                        R13 ; [+26]
      308 GETUPVAL                         R34 1
      309 GETTABLEKS                       R34 R34 K31 ["createElement"]
      311 GETUPVAL                         R35 8
      312 DUPTABLE                         R36 K81 [{"Size", "LayoutOrder", "testId"}]
      313 DUPCLOSURE                       R39 K82 [PROTO_7]
      314 NAMECALL                         R37 R13 K28 ["map"]
      316 CALL                             R37 2 1
      317 SETTABLEKS                       R37 R36 K36 ["Size"]
      319 GETUPVAL                         R37 9
      320 GETTABLEKS                       R37 R37 K83 ["MIN_LAYOUT_ORDER"]
      322 SETTABLEKS                       R37 R36 K80 ["LayoutOrder"]
      324 LOADK                            R38 K84 ["%*--content--full-bleed-spacer"]
      325 MOVE                             R40 R15
      326 NAMECALL                         R38 R38 K71 ["format"]
      328 CALL                             R38 2 1
      329 MOVE                             R37 R38
      330 SETTABLEKS                       R37 R36 K13 ["testId"]
      332 CALL                             R34 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R34
      335 SETTABLEKS                       R34 R33 K77 ["FullBleedSpacer"]
      337 GETUPVAL                         R34 1
      338 GETTABLEKS                       R34 R34 K31 ["createElement"]
      340 GETUPVAL                         R35 1
      341 GETTABLEKS                       R35 R35 K85 ["Fragment"]
      343 LOADNIL                          R36
      344 GETTABLEKS                       R37 R0 K86 ["children"]
      346 CALL                             R34 3 1
      347 SETTABLEKS                       R34 R33 K78 ["Children"]
      349 JUMP                             ; [+2]
      350 GETTABLEKS                       R33 R0 K86 ["children"]
      352 CALL                             R30 3 -1
      353 CALL                             R27 -1 -1
      354 RETURN                           R27 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Style"]
       25 GETTABLEKS                       R5 R5 K11 ["useTokens"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Constants"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R7 K14 ["Flags"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K1 [script]
       42 LOADK                            R9 K15 ["Sheet"]
       43 NAMECALL                         R7 R7 K3 ["FindFirstAncestor"]
       45 CALL                             R7 2 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R7 K16 ["SheetContext"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R7 K17 ["SheetType"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R0 K18 ["Components"]
       60 GETTABLEKS                       R11 R11 K19 ["ScrollView"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R0 K18 ["Components"]
       67 GETTABLEKS                       R12 R12 K20 ["Types"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R13 R0 K18 ["Components"]
       74 GETTABLEKS                       R13 R13 K21 ["View"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R14 R0 K13 ["Utility"]
       81 GETTABLEKS                       R14 R14 K22 ["isScrollingFrameOverflowingY"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R3 K23 ["useComposedRef"]
       86 DUPCLOSURE                       R15 K24 [PROTO_8]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R5
       97 GETTABLEKS                       R16 R2 K25 ["memo"]
       99 GETTABLEKS                       R17 R2 K26 ["forwardRef"]
      101 MOVE                             R18 R15
      102 CALL                             R17 1 -1
      103 CALL                             R16 -1 -1
      104 RETURN                           R16 -1
