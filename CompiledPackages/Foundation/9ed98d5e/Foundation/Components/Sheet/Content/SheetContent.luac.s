PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K3 ["Padding"]
       17 GETTABLEKS                       R3 R4 K4 ["Small"]
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K5 ["Margin"]
       23 GETTABLEKS                       R3 R4 K4 ["Small"]
       25 CALL                             R1 2 1
       26 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R5 0
        4 ADD                              R4 R0 R5
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R6 R7 K3 ["Margin"]
        8 GETTABLEKS                       R5 R6 K4 ["Small"]
       10 ADD                              R3 R4 R5
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K1 ["innerScrollingEnabled"]
        9 GETTABLEKS                       R5 R3 K2 ["setInnerScrollY"]
       11 GETTABLEKS                       R6 R3 K3 ["actionsHeight"]
       13 GETTABLEKS                       R7 R3 K4 ["sheetContentHeight"]
       15 GETTABLEKS                       R8 R3 K5 ["setHasActionsDivider"]
       17 GETTABLEKS                       R9 R3 K6 ["bottomPadding"]
       19 GETTABLEKS                       R10 R3 K7 ["hasHeader"]
       21 GETUPVAL                         R13 3
       22 GETTABLEKS                       R12 R13 K8 ["FoundationSheetFullBleed"]
       24 JUMPIFNOT                        R12 ; [+3]
       25 GETTABLEKS                       R11 R3 K9 ["hasFullBleed"]
       27 JUMP                             ; [+1]
       28 LOADB                            R11 0
       29 GETUPVAL                         R14 3
       30 GETTABLEKS                       R13 R14 K8 ["FoundationSheetFullBleed"]
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
       60 GETUPVAL                         R16 1
       61 GETTABLEKS                       R15 R16 K16 ["useBinding"]
       63 LOADB                            R16 0
       64 CALL                             R15 1 2
       65 GETUPVAL                         R18 1
       66 GETTABLEKS                       R17 R18 K17 ["useCallback"]
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
       80 GETUPVAL                         R19 1
       81 GETTABLEKS                       R18 R19 K16 ["useBinding"]
       83 LOADN                            R19 0
       84 CALL                             R18 1 2
       85 GETUPVAL                         R21 1
       86 GETTABLEKS                       R20 R21 K17 ["useCallback"]
       88 NEWCLOSURE                       R21 P1
       89 CAPTURE                          VAL R19
       90 NEWTABLE                         R22 0 0
       92 CALL                             R20 2 1
       93 GETUPVAL                         R23 5
       94 GETTABLEKS                       R22 R23 K18 ["Bottom"]
       96 JUMPIFEQ                         R13 R22 ; [+2]
       98 LOADB                            R21 0 +1
       99 LOADB                            R21 1
      100 GETTABLEKS                       R23 R0 K19 ["Selectable"]
      102 JUMPIFNOTEQKNIL                  R23 ; [+3]
      104 LOADB                            R22 1
      105 JUMP                             ; [+2]
      106 GETTABLEKS                       R22 R0 K19 ["Selectable"]
      108 JUMPIFNOT                        R15 ; [+6]
      109 NEWCLOSURE                       R25 P2
      110 CAPTURE                          VAL R22
      111 NAMECALL                         R23 R15 K20 ["map"]
      113 CALL                             R23 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R23
      116 GETUPVAL                         R25 1
      117 GETTABLEKS                       R24 R25 K21 ["createElement"]
      119 GETUPVAL                         R25 6
      120 DUPTABLE                         R26 K34 [{"scrollingFrameRef", "ZIndex", "selection", "scroll", "Size", "padding", "ClipsDescendants", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "testId", "tag", "ref"}]
      121 GETTABLEKS                       R27 R0 K22 ["scrollingFrameRef"]
      123 SETTABLEKS                       R27 R26 K22 ["scrollingFrameRef"]
      125 LOADN                            R27 1
      126 SETTABLEKS                       R27 R26 K23 ["ZIndex"]
      128 DUPTABLE                         R27 K39 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      129 SETTABLEKS                       R23 R27 K19 ["Selectable"]
      131 GETTABLEKS                       R28 R0 K35 ["NextSelectionUp"]
      133 SETTABLEKS                       R28 R27 K35 ["NextSelectionUp"]
      135 GETTABLEKS                       R28 R0 K36 ["NextSelectionDown"]
      137 SETTABLEKS                       R28 R27 K36 ["NextSelectionDown"]
      139 GETTABLEKS                       R28 R0 K37 ["NextSelectionLeft"]
      141 SETTABLEKS                       R28 R27 K37 ["NextSelectionLeft"]
      143 GETTABLEKS                       R28 R0 K38 ["NextSelectionRight"]
      145 SETTABLEKS                       R28 R27 K38 ["NextSelectionRight"]
      147 SETTABLEKS                       R27 R26 K24 ["selection"]
      149 DUPTABLE                         R27 K44 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      150 SETTABLEKS                       R4 R27 K40 ["ScrollingEnabled"]
      152 GETIMPORT                        R28 K48 [Enum.AutomaticSize.Y]
      154 SETTABLEKS                       R28 R27 K41 ["AutomaticCanvasSize"]
      156 JUMPIFNOT                        R7 ; [+5]
      157 DUPCLOSURE                       R30 K49 [PROTO_3]
      158 NAMECALL                         R28 R18 K20 ["map"]
      160 CALL                             R28 2 1
      161 JUMP                             ; [+5]
      162 GETIMPORT                        R28 K52 [UDim2.fromScale]
      164 LOADN                            R29 1
      165 LOADN                            R30 0
      166 CALL                             R28 2 1
      167 SETTABLEKS                       R28 R27 K42 ["CanvasSize"]
      169 GETIMPORT                        R28 K53 [Enum.ScrollingDirection.Y]
      171 SETTABLEKS                       R28 R27 K43 ["ScrollingDirection"]
      173 SETTABLEKS                       R27 R26 K25 ["scroll"]
      175 JUMPIFNOT                        R7 ; [+6]
      176 GETIMPORT                        R27 K52 [UDim2.fromScale]
      178 LOADN                            R28 1
      179 LOADN                            R29 1
      180 CALL                             R27 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R27
      183 SETTABLEKS                       R27 R26 K26 ["Size"]
      185 DUPTABLE                         R27 K58 [{"top", "bottom", "left", "right"}]
      186 NEWCLOSURE                       R30 P4
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R2
      190 NAMECALL                         R28 R10 K20 ["map"]
      192 CALL                             R28 2 1
      193 SETTABLEKS                       R28 R27 K54 ["top"]
      195 JUMPIFNOT                        R21 ; [+7]
      196 NEWCLOSURE                       R30 P5
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R2
      199 NAMECALL                         R28 R6 K20 ["map"]
      201 CALL                             R28 2 1
      202 JUMP                             ; [+8]
      203 GETIMPORT                        R28 K61 [UDim.new]
      205 LOADN                            R29 0
      206 GETTABLEKS                       R31 R2 K62 ["Padding"]
      208 GETTABLEKS                       R30 R31 K63 ["Small"]
      210 CALL                             R28 2 1
      211 SETTABLEKS                       R28 R27 K55 ["bottom"]
      213 GETIMPORT                        R28 K61 [UDim.new]
      215 LOADN                            R29 0
      216 GETTABLEKS                       R31 R2 K62 ["Padding"]
      218 GETTABLEKS                       R30 R31 K63 ["Small"]
      220 CALL                             R28 2 1
      221 SETTABLEKS                       R28 R27 K56 ["left"]
      223 GETIMPORT                        R28 K61 [UDim.new]
      225 LOADN                            R29 0
      226 GETTABLEKS                       R31 R2 K62 ["Padding"]
      228 GETTABLEKS                       R30 R31 K63 ["Small"]
      230 CALL                             R28 2 1
      231 SETTABLEKS                       R28 R27 K57 ["right"]
      233 SETTABLEKS                       R27 R26 K27 ["padding"]
      235 JUMPIFNOT                        R21 ; [+2]
      236 MOVE                             R27 R10
      237 JUMP                             ; [+1]
      238 LOADB                            R27 1
      239 SETTABLEKS                       R27 R26 K28 ["ClipsDescendants"]
      241 NEWCLOSURE                       R27 P6
      242 CAPTURE                          VAL R5
      243 SETTABLEKS                       R27 R26 K29 ["onCanvasPositionChanged"]
      245 SETTABLEKS                       R17 R26 K30 ["onAbsoluteCanvasSizeChanged"]
      247 SETTABLEKS                       R17 R26 K31 ["onAbsoluteWindowSizeChanged"]
      249 LOADK                            R28 K64 ["%*--content"]
      250 MOVE                             R30 R14
      251 NAMECALL                         R28 R28 K65 ["format"]
      253 CALL                             R28 2 1
      254 MOVE                             R27 R28
      255 SETTABLEKS                       R27 R26 K12 ["testId"]
      257 LOADK                            R27 K66 ["fill size-full-0 auto-y"]
      258 SETTABLEKS                       R27 R26 K32 ["tag"]
      260 SETTABLEKS                       R1 R26 K33 ["ref"]
      262 GETUPVAL                         R28 1
      263 GETTABLEKS                       R27 R28 K21 ["createElement"]
      265 GETUPVAL                         R28 7
      266 DUPTABLE                         R29 K68 [{"onAbsoluteSizeChanged", "tag"}]
      267 SETTABLEKS                       R20 R29 K67 ["onAbsoluteSizeChanged"]
      269 LOADK                            R30 K69 ["col align-x-center gap-medium size-full-0 auto-y padding-x-medium"]
      270 SETTABLEKS                       R30 R29 K32 ["tag"]
      272 GETUPVAL                         R32 3
      273 GETTABLEKS                       R31 R32 K8 ["FoundationSheetFullBleed"]
      275 JUMPIFNOT                        R31 ; [+45]
      276 DUPTABLE                         R30 K72 [{"FullBleedSpacer", "Children"}]
      277 JUMPIFNOT                        R11 ; [+27]
      278 JUMPIFNOT                        R12 ; [+26]
      279 GETUPVAL                         R32 1
      280 GETTABLEKS                       R31 R32 K21 ["createElement"]
      282 GETUPVAL                         R32 7
      283 DUPTABLE                         R33 K74 [{"Size", "LayoutOrder", "testId"}]
      284 DUPCLOSURE                       R36 K75 [PROTO_7]
      285 NAMECALL                         R34 R12 K20 ["map"]
      287 CALL                             R34 2 1
      288 SETTABLEKS                       R34 R33 K26 ["Size"]
      290 GETUPVAL                         R35 8
      291 GETTABLEKS                       R34 R35 K76 ["MIN_LAYOUT_ORDER"]
      293 SETTABLEKS                       R34 R33 K73 ["LayoutOrder"]
      295 LOADK                            R35 K77 ["%*--content--full-bleed-spacer"]
      296 MOVE                             R37 R14
      297 NAMECALL                         R35 R35 K65 ["format"]
      299 CALL                             R35 2 1
      300 MOVE                             R34 R35
      301 SETTABLEKS                       R34 R33 K12 ["testId"]
      303 CALL                             R31 2 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R31
      306 SETTABLEKS                       R31 R30 K70 ["FullBleedSpacer"]
      308 GETUPVAL                         R32 1
      309 GETTABLEKS                       R31 R32 K21 ["createElement"]
      311 GETUPVAL                         R33 1
      312 GETTABLEKS                       R32 R33 K78 ["Fragment"]
      314 LOADNIL                          R33
      315 GETTABLEKS                       R34 R0 K79 ["children"]
      317 CALL                             R31 3 1
      318 SETTABLEKS                       R31 R30 K71 ["Children"]
      320 JUMP                             ; [+2]
      321 GETTABLEKS                       R30 R0 K79 ["children"]
      323 CALL                             R27 3 -1
      324 CALL                             R24 -1 -1
      325 RETURN                           R24 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["Style"]
       20 GETTABLEKS                       R4 R5 K10 ["useTokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Constants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K12 ["Utility"]
       32 GETTABLEKS                       R6 R7 K13 ["Flags"]
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
       53 GETTABLEKS                       R11 R0 K17 ["Components"]
       55 GETTABLEKS                       R10 R11 K18 ["ScrollView"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R12 R0 K17 ["Components"]
       62 GETTABLEKS                       R11 R12 K19 ["Types"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K6 [require]
       67 GETTABLEKS                       R13 R0 K17 ["Components"]
       69 GETTABLEKS                       R12 R13 K20 ["View"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K6 [require]
       74 GETTABLEKS                       R14 R0 K12 ["Utility"]
       76 GETTABLEKS                       R13 R14 K21 ["isScrollingFrameOverflowingY"]
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
