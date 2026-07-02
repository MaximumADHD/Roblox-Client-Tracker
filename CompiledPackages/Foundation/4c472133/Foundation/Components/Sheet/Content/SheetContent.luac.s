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
       11 GETTABLEKS                       R6 R3 K3 ["actionsHeight"]
       13 GETTABLEKS                       R7 R3 K4 ["sheetContentHeight"]
       15 GETTABLEKS                       R8 R3 K5 ["setHasActionsDivider"]
       17 GETTABLEKS                       R9 R3 K6 ["bottomPadding"]
       19 GETTABLEKS                       R10 R3 K7 ["hasHeader"]
       21 GETUPVAL                         R12 3
       22 GETTABLEKS                       R12 R12 K8 ["FoundationSheetFullBleed"]
       24 JUMPIFNOT                        R12 ; [+3]
       25 GETTABLEKS                       R11 R3 K9 ["hasFullBleed"]
       27 JUMP                             ; [+1]
       28 LOADB                            R11 0
       29 GETUPVAL                         R13 3
       30 GETTABLEKS                       R13 R13 K8 ["FoundationSheetFullBleed"]
       32 JUMPIFNOT                        R13 ; [+3]
       33 GETTABLEKS                       R12 R3 K10 ["fullBleedHeight"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R12
       37 GETTABLEKS                       R13 R3 K11 ["sheetType"]
       39 GETTABLEKS                       R14 R3 K12 ["testId"]
       41 MOVE                             R16 R4
       42 JUMPIFNOT                        R16 ; [+11]
       43 MOVE                             R16 R5
       44 JUMPIFNOT                        R16 ; [+9]
       45 MOVE                             R16 R6
       46 JUMPIFNOT                        R16 ; [+7]
       47 MOVE                             R16 R8
       48 JUMPIFNOT                        R16 ; [+5]
       49 MOVE                             R16 R9
       50 JUMPIFNOT                        R16 ; [+3]
       51 MOVE                             R16 R10
       52 JUMPIFNOT                        R16 ; [+1]
       53 MOVE                             R16 R14
       54 FASTCALL2K                       ASSERT R16 K13 ; [+4]
       56 LOADK                            R17 K13 ["SheetContent must be used within a Sheet"]
       57 GETIMPORT                        R15 K15 [assert]
       59 CALL                             R15 2 0
       60 GETUPVAL                         R15 1
       61 GETTABLEKS                       R15 R15 K16 ["useBinding"]
       63 LOADB                            R16 0
       64 CALL                             R15 1 2
       65 GETUPVAL                         R17 1
       66 GETTABLEKS                       R17 R17 K17 ["useCallback"]
       68 NEWCLOSURE                       R18 P0
       69 CAPTURE                          VAL R5
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R16
       73 NEWTABLE                         R19 0 2
       75 MOVE                             R20 R8
       76 MOVE                             R21 R5
       77 SETLIST                          R19 R20 2 [1]
       79 CALL                             R17 2 1
       80 GETUPVAL                         R18 1
       81 GETTABLEKS                       R18 R18 K16 ["useBinding"]
       83 LOADN                            R19 0
       84 CALL                             R18 1 2
       85 GETUPVAL                         R20 1
       86 GETTABLEKS                       R20 R20 K17 ["useCallback"]
       88 NEWCLOSURE                       R21 P1
       89 CAPTURE                          VAL R19
       90 NEWTABLE                         R22 0 0
       92 CALL                             R20 2 1
       93 GETUPVAL                         R22 5
       94 GETTABLEKS                       R22 R22 K18 ["Bottom"]
       96 JUMPIFEQ                         R13 R22 ; [+2]
       98 LOADB                            R21 0 +1
       99 LOADB                            R21 1
      100 GETUPVAL                         R23 3
      101 GETTABLEKS                       R23 R23 K19 ["FoundationFullBleedSheetContent"]
      103 JUMPIFNOT                        R23 ; [+5]
      104 GETTABLEKS                       R23 R0 K20 ["isContentFullBleed"]
      106 JUMPIFNOT                        R23 ; [+2]
      107 LOADNIL                          R22
      108 JUMP                             ; [+8]
      109 GETIMPORT                        R22 K23 [UDim.new]
      111 LOADN                            R23 0
      112 GETTABLEKS                       R24 R2 K24 ["Padding"]
      114 GETTABLEKS                       R24 R24 K25 ["Small"]
      116 CALL                             R22 2 1
      117 GETTABLEKS                       R24 R0 K26 ["Selectable"]
      119 JUMPIFNOTEQKNIL                  R24 ; [+3]
      121 LOADB                            R23 1
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R23 R0 K26 ["Selectable"]
      125 JUMPIFNOT                        R15 ; [+6]
      126 NEWCLOSURE                       R26 P2
      127 CAPTURE                          VAL R23
      128 NAMECALL                         R24 R15 K27 ["map"]
      130 CALL                             R24 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R24
      133 GETUPVAL                         R25 1
      134 GETTABLEKS                       R25 R25 K28 ["createElement"]
      136 GETUPVAL                         R26 6
      137 DUPTABLE                         R27 K43 [{["scrollingFrameRef"], ["ZIndex"] = 1, ["selection"], ["scroll"], ["Size"], ["padding"], ["ClipsDescendants"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["onAbsoluteWindowSizeChanged"], ["testId"], ["tag"] = "fill size-full-0 auto-y", ["ref"]}]
      138 GETTABLEKS                       R28 R0 K29 ["scrollingFrameRef"]
      140 SETTABLEKS                       R28 R27 K29 ["scrollingFrameRef"]
      142 DUPTABLE                         R28 K48 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      143 SETTABLEKS                       R24 R28 K26 ["Selectable"]
      145 GETTABLEKS                       R29 R0 K44 ["NextSelectionUp"]
      147 SETTABLEKS                       R29 R28 K44 ["NextSelectionUp"]
      149 GETTABLEKS                       R29 R0 K45 ["NextSelectionDown"]
      151 SETTABLEKS                       R29 R28 K45 ["NextSelectionDown"]
      153 GETTABLEKS                       R29 R0 K46 ["NextSelectionLeft"]
      155 SETTABLEKS                       R29 R28 K46 ["NextSelectionLeft"]
      157 GETTABLEKS                       R29 R0 K47 ["NextSelectionRight"]
      159 SETTABLEKS                       R29 R28 K47 ["NextSelectionRight"]
      161 SETTABLEKS                       R28 R27 K32 ["selection"]
      163 DUPTABLE                         R28 K53 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      164 SETTABLEKS                       R4 R28 K49 ["ScrollingEnabled"]
      166 GETIMPORT                        R29 K57 [Enum.AutomaticSize.Y]
      168 SETTABLEKS                       R29 R28 K50 ["AutomaticCanvasSize"]
      170 JUMPIFNOT                        R7 ; [+5]
      171 DUPCLOSURE                       R31 K58 [PROTO_3]
      172 NAMECALL                         R29 R18 K27 ["map"]
      174 CALL                             R29 2 1
      175 JUMP                             ; [+5]
      176 GETIMPORT                        R29 K61 [UDim2.fromScale]
      178 LOADN                            R30 1
      179 LOADN                            R31 0
      180 CALL                             R29 2 1
      181 SETTABLEKS                       R29 R28 K51 ["CanvasSize"]
      183 GETIMPORT                        R29 K62 [Enum.ScrollingDirection.Y]
      185 SETTABLEKS                       R29 R28 K52 ["ScrollingDirection"]
      187 SETTABLEKS                       R28 R27 K33 ["scroll"]
      189 JUMPIFNOT                        R7 ; [+6]
      190 GETIMPORT                        R28 K61 [UDim2.fromScale]
      192 LOADN                            R29 1
      193 LOADN                            R30 1
      194 CALL                             R28 2 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R28
      197 SETTABLEKS                       R28 R27 K34 ["Size"]
      199 DUPTABLE                         R28 K67 [{"top", "bottom", "left", "right"}]
      200 NEWCLOSURE                       R31 P4
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R2
      204 NAMECALL                         R29 R10 K27 ["map"]
      206 CALL                             R29 2 1
      207 SETTABLEKS                       R29 R28 K63 ["top"]
      209 JUMPIFNOT                        R21 ; [+7]
      210 NEWCLOSURE                       R31 P5
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R2
      213 NAMECALL                         R29 R6 K27 ["map"]
      215 CALL                             R29 2 1
      216 JUMP                             ; [+8]
      217 GETIMPORT                        R29 K23 [UDim.new]
      219 LOADN                            R30 0
      220 GETTABLEKS                       R31 R2 K24 ["Padding"]
      222 GETTABLEKS                       R31 R31 K25 ["Small"]
      224 CALL                             R29 2 1
      225 SETTABLEKS                       R29 R28 K64 ["bottom"]
      227 SETTABLEKS                       R22 R28 K65 ["left"]
      229 SETTABLEKS                       R22 R28 K66 ["right"]
      231 SETTABLEKS                       R28 R27 K35 ["padding"]
      233 JUMPIFNOT                        R21 ; [+2]
      234 MOVE                             R28 R10
      235 JUMP                             ; [+1]
      236 LOADB                            R28 1
      237 SETTABLEKS                       R28 R27 K36 ["ClipsDescendants"]
      239 NEWCLOSURE                       R28 P6
      240 CAPTURE                          VAL R5
      241 SETTABLEKS                       R28 R27 K37 ["onCanvasPositionChanged"]
      243 SETTABLEKS                       R17 R27 K38 ["onAbsoluteCanvasSizeChanged"]
      245 SETTABLEKS                       R17 R27 K39 ["onAbsoluteWindowSizeChanged"]
      247 LOADK                            R29 K68 ["%*--content"]
      248 MOVE                             R31 R14
      249 NAMECALL                         R29 R29 K69 ["format"]
      251 CALL                             R29 2 1
      252 MOVE                             R28 R29
      253 SETTABLEKS                       R28 R27 K12 ["testId"]
      255 SETTABLEKS                       R1 R27 K42 ["ref"]
      257 GETUPVAL                         R28 1
      258 GETTABLEKS                       R28 R28 K28 ["createElement"]
      260 GETUPVAL                         R29 7
      261 DUPTABLE                         R30 K71 [{"onAbsoluteSizeChanged", "tag"}]
      262 SETTABLEKS                       R20 R30 K70 ["onAbsoluteSizeChanged"]
      264 GETUPVAL                         R32 3
      265 GETTABLEKS                       R32 R32 K19 ["FoundationFullBleedSheetContent"]
      267 JUMPIFNOT                        R32 ; [+11]
      268 NEWTABLE                         R31 2 0
      270 LOADB                            R32 1
      271 SETTABLEKS                       R32 R31 K72 ["col align-x-center gap-medium size-full-0 auto-y"]
      273 GETTABLEKS                       R33 R0 K20 ["isContentFullBleed"]
      275 NOT                              R32 R33
      276 SETTABLEKS                       R32 R31 K73 ["padding-x-medium"]
      278 JUMP                             ; [+1]
      279 LOADK                            R31 K74 ["col align-x-center gap-medium size-full-0 auto-y padding-x-medium"]
      280 SETTABLEKS                       R31 R30 K40 ["tag"]
      282 GETUPVAL                         R32 3
      283 GETTABLEKS                       R32 R32 K8 ["FoundationSheetFullBleed"]
      285 JUMPIFNOT                        R32 ; [+45]
      286 DUPTABLE                         R31 K77 [{"FullBleedSpacer", "Children"}]
      287 JUMPIFNOT                        R11 ; [+27]
      288 JUMPIFNOT                        R12 ; [+26]
      289 GETUPVAL                         R32 1
      290 GETTABLEKS                       R32 R32 K28 ["createElement"]
      292 GETUPVAL                         R33 7
      293 DUPTABLE                         R34 K79 [{"Size", "LayoutOrder", "testId"}]
      294 DUPCLOSURE                       R37 K80 [PROTO_7]
      295 NAMECALL                         R35 R12 K27 ["map"]
      297 CALL                             R35 2 1
      298 SETTABLEKS                       R35 R34 K34 ["Size"]
      300 GETUPVAL                         R35 8
      301 GETTABLEKS                       R35 R35 K81 ["MIN_LAYOUT_ORDER"]
      303 SETTABLEKS                       R35 R34 K78 ["LayoutOrder"]
      305 LOADK                            R36 K82 ["%*--content--full-bleed-spacer"]
      306 MOVE                             R38 R14
      307 NAMECALL                         R36 R36 K69 ["format"]
      309 CALL                             R36 2 1
      310 MOVE                             R35 R36
      311 SETTABLEKS                       R35 R34 K12 ["testId"]
      313 CALL                             R32 2 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R32
      316 SETTABLEKS                       R32 R31 K75 ["FullBleedSpacer"]
      318 GETUPVAL                         R32 1
      319 GETTABLEKS                       R32 R32 K28 ["createElement"]
      321 GETUPVAL                         R33 1
      322 GETTABLEKS                       R33 R33 K83 ["Fragment"]
      324 LOADNIL                          R34
      325 GETTABLEKS                       R35 R0 K84 ["children"]
      327 CALL                             R32 3 1
      328 SETTABLEKS                       R32 R31 K76 ["Children"]
      330 JUMP                             ; [+2]
      331 GETTABLEKS                       R31 R0 K84 ["children"]
      333 CALL                             R28 3 -1
      334 CALL                             R25 -1 -1
      335 RETURN                           R25 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R4 K9 ["Style"]
       20 GETTABLEKS                       R4 R4 K10 ["useTokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Constants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Utility"]
       32 GETTABLEKS                       R6 R6 K13 ["Flags"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K1 [script]
       37 LOADK                            R8 K14 ["Sheet"]
       38 NAMECALL                         R6 R6 K3 ["FindFirstAncestor"]
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R6 K15 ["SheetContext"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R6 K16 ["SheetType"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Components"]
       55 GETTABLEKS                       R10 R10 K18 ["ScrollView"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R0 K17 ["Components"]
       62 GETTABLEKS                       R11 R11 K19 ["Types"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K6 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Components"]
       69 GETTABLEKS                       R12 R12 K20 ["View"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K6 [require]
       74 GETTABLEKS                       R13 R0 K12 ["Utility"]
       76 GETTABLEKS                       R13 R13 K21 ["isScrollingFrameOverflowingY"]
       78 CALL                             R12 1 1
       79 DUPCLOSURE                       R13 K22 [PROTO_8]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R4
       89 GETTABLEKS                       R14 R2 K23 ["memo"]
       91 GETTABLEKS                       R15 R2 K24 ["forwardRef"]
       93 MOVE                             R16 R13
       94 CALL                             R15 1 -1
       95 CALL                             R14 -1 -1
       96 RETURN                           R14 -1
