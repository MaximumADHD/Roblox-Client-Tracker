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
       14 GETTABLEKS                       R2 R2 K2 ["FoundationSheetContentSelectable"]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETUPVAL                         R2 4
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

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
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [UDim.new]
        9 LOADN                            R2 0
       10 GETUPVAL                         R4 0
       11 JUMPIFNOT                        R4 ; [+6]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["Padding"]
       15 GETTABLEKS                       R3 R3 K4 ["Small"]
       17 JUMP                             ; [+5]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["Margin"]
       21 GETTABLEKS                       R3 R3 K4 ["Small"]
       23 CALL                             R1 2 1
       24 RETURN                           R1 1

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
       21 GETTABLEKS                       R11 R3 K8 ["sheetType"]
       23 GETTABLEKS                       R12 R3 K9 ["testId"]
       25 MOVE                             R14 R4
       26 JUMPIFNOT                        R14 ; [+11]
       27 MOVE                             R14 R5
       28 JUMPIFNOT                        R14 ; [+9]
       29 MOVE                             R14 R6
       30 JUMPIFNOT                        R14 ; [+7]
       31 MOVE                             R14 R8
       32 JUMPIFNOT                        R14 ; [+5]
       33 MOVE                             R14 R9
       34 JUMPIFNOT                        R14 ; [+3]
       35 MOVE                             R14 R10
       36 JUMPIFNOT                        R14 ; [+1]
       37 MOVE                             R14 R12
       38 FASTCALL2K                       ASSERT R14 K10 ; [+4]
       40 LOADK                            R15 K10 ["SheetContent must be used within a Sheet"]
       41 GETIMPORT                        R13 K12 [assert]
       43 CALL                             R13 2 0
       44 LOADNIL                          R13
       45 LOADNIL                          R14
       46 GETUPVAL                         R15 3
       47 GETTABLEKS                       R15 R15 K13 ["FoundationSheetContentSelectable"]
       49 JUMPIFNOT                        R15 ; [+7]
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R15 R15 K14 ["useBinding"]
       53 LOADB                            R16 0
       54 CALL                             R15 1 2
       55 MOVE                             R13 R15
       56 MOVE                             R14 R16
       57 GETUPVAL                         R15 1
       58 GETTABLEKS                       R15 R15 K15 ["useCallback"]
       60 NEWCLOSURE                       R16 P0
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          REF R14
       66 NEWTABLE                         R17 0 2
       68 MOVE                             R18 R8
       69 MOVE                             R19 R5
       70 SETLIST                          R17 R18 2 [1]
       72 CALL                             R15 2 1
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R16 R16 K14 ["useBinding"]
       76 LOADN                            R17 0
       77 CALL                             R16 1 2
       78 GETUPVAL                         R18 1
       79 GETTABLEKS                       R18 R18 K15 ["useCallback"]
       81 NEWCLOSURE                       R19 P1
       82 CAPTURE                          VAL R17
       83 NEWTABLE                         R20 0 0
       85 CALL                             R18 2 1
       86 GETUPVAL                         R20 5
       87 GETTABLEKS                       R20 R20 K16 ["Bottom"]
       89 JUMPIFEQ                         R11 R20 ; [+2]
       91 LOADB                            R19 0 +1
       92 LOADB                            R19 1
       93 GETTABLEKS                       R21 R0 K17 ["Selectable"]
       95 JUMPIFNOTEQKNIL                  R21 ; [+3]
       97 LOADB                            R20 1
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R20 R0 K17 ["Selectable"]
      101 GETUPVAL                         R22 3
      102 GETTABLEKS                       R22 R22 K13 ["FoundationSheetContentSelectable"]
      104 JUMPIFNOT                        R22 ; [+7]
      105 JUMPIFNOT                        R13 ; [+6]
      106 NEWCLOSURE                       R23 P2
      107 CAPTURE                          VAL R20
      108 NAMECALL                         R21 R13 K18 ["map"]
      110 CALL                             R21 2 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R21
      113 GETUPVAL                         R22 1
      114 GETTABLEKS                       R22 R22 K19 ["createElement"]
      116 GETUPVAL                         R23 6
      117 DUPTABLE                         R24 K32 [{"scrollingFrameRef", "ZIndex", "selection", "scroll", "Size", "padding", "ClipsDescendants", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "testId", "tag", "ref"}]
      118 GETTABLEKS                       R25 R0 K20 ["scrollingFrameRef"]
      120 SETTABLEKS                       R25 R24 K20 ["scrollingFrameRef"]
      122 LOADN                            R25 1
      123 SETTABLEKS                       R25 R24 K21 ["ZIndex"]
      125 GETUPVAL                         R26 3
      126 GETTABLEKS                       R26 R26 K13 ["FoundationSheetContentSelectable"]
      128 JUMPIFNOT                        R26 ; [+20]
      129 DUPTABLE                         R25 K37 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      130 SETTABLEKS                       R21 R25 K17 ["Selectable"]
      132 GETTABLEKS                       R26 R0 K33 ["NextSelectionUp"]
      134 SETTABLEKS                       R26 R25 K33 ["NextSelectionUp"]
      136 GETTABLEKS                       R26 R0 K34 ["NextSelectionDown"]
      138 SETTABLEKS                       R26 R25 K34 ["NextSelectionDown"]
      140 GETTABLEKS                       R26 R0 K35 ["NextSelectionLeft"]
      142 SETTABLEKS                       R26 R25 K35 ["NextSelectionLeft"]
      144 GETTABLEKS                       R26 R0 K36 ["NextSelectionRight"]
      146 SETTABLEKS                       R26 R25 K36 ["NextSelectionRight"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R25
      150 SETTABLEKS                       R25 R24 K22 ["selection"]
      152 DUPTABLE                         R25 K42 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      153 SETTABLEKS                       R4 R25 K38 ["ScrollingEnabled"]
      155 GETIMPORT                        R26 K46 [Enum.AutomaticSize.Y]
      157 SETTABLEKS                       R26 R25 K39 ["AutomaticCanvasSize"]
      159 JUMPIFNOT                        R7 ; [+5]
      160 DUPCLOSURE                       R28 K47 [PROTO_3]
      161 NAMECALL                         R26 R16 K18 ["map"]
      163 CALL                             R26 2 1
      164 JUMP                             ; [+5]
      165 GETIMPORT                        R26 K50 [UDim2.fromScale]
      167 LOADN                            R27 1
      168 LOADN                            R28 0
      169 CALL                             R26 2 1
      170 SETTABLEKS                       R26 R25 K40 ["CanvasSize"]
      172 GETIMPORT                        R26 K51 [Enum.ScrollingDirection.Y]
      174 SETTABLEKS                       R26 R25 K41 ["ScrollingDirection"]
      176 SETTABLEKS                       R25 R24 K23 ["scroll"]
      178 JUMPIFNOT                        R7 ; [+6]
      179 GETIMPORT                        R25 K50 [UDim2.fromScale]
      181 LOADN                            R26 1
      182 LOADN                            R27 1
      183 CALL                             R25 2 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R25
      186 SETTABLEKS                       R25 R24 K24 ["Size"]
      188 DUPTABLE                         R25 K56 [{"top", "bottom", "left", "right"}]
      189 NEWCLOSURE                       R28 P4
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R2
      192 NAMECALL                         R26 R10 K18 ["map"]
      194 CALL                             R26 2 1
      195 SETTABLEKS                       R26 R25 K52 ["top"]
      197 JUMPIFNOT                        R19 ; [+7]
      198 NEWCLOSURE                       R28 P5
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R2
      201 NAMECALL                         R26 R6 K18 ["map"]
      203 CALL                             R26 2 1
      204 JUMP                             ; [+8]
      205 GETIMPORT                        R26 K59 [UDim.new]
      207 LOADN                            R27 0
      208 GETTABLEKS                       R28 R2 K60 ["Padding"]
      210 GETTABLEKS                       R28 R28 K61 ["Small"]
      212 CALL                             R26 2 1
      213 SETTABLEKS                       R26 R25 K53 ["bottom"]
      215 GETIMPORT                        R26 K59 [UDim.new]
      217 LOADN                            R27 0
      218 GETTABLEKS                       R28 R2 K60 ["Padding"]
      220 GETTABLEKS                       R28 R28 K61 ["Small"]
      222 CALL                             R26 2 1
      223 SETTABLEKS                       R26 R25 K54 ["left"]
      225 GETIMPORT                        R26 K59 [UDim.new]
      227 LOADN                            R27 0
      228 GETTABLEKS                       R28 R2 K60 ["Padding"]
      230 GETTABLEKS                       R28 R28 K61 ["Small"]
      232 CALL                             R26 2 1
      233 SETTABLEKS                       R26 R25 K55 ["right"]
      235 SETTABLEKS                       R25 R24 K25 ["padding"]
      237 JUMPIFNOT                        R19 ; [+2]
      238 MOVE                             R25 R10
      239 JUMP                             ; [+1]
      240 LOADB                            R25 1
      241 SETTABLEKS                       R25 R24 K26 ["ClipsDescendants"]
      243 NEWCLOSURE                       R25 P6
      244 CAPTURE                          VAL R5
      245 SETTABLEKS                       R25 R24 K27 ["onCanvasPositionChanged"]
      247 SETTABLEKS                       R15 R24 K28 ["onAbsoluteCanvasSizeChanged"]
      249 SETTABLEKS                       R15 R24 K29 ["onAbsoluteWindowSizeChanged"]
      251 LOADK                            R26 K62 ["%*--content"]
      252 MOVE                             R28 R12
      253 NAMECALL                         R26 R26 K63 ["format"]
      255 CALL                             R26 2 1
      256 MOVE                             R25 R26
      257 SETTABLEKS                       R25 R24 K9 ["testId"]
      259 LOADK                            R25 K64 ["fill size-full-0 auto-y"]
      260 SETTABLEKS                       R25 R24 K30 ["tag"]
      262 SETTABLEKS                       R1 R24 K31 ["ref"]
      264 GETUPVAL                         R25 1
      265 GETTABLEKS                       R25 R25 K19 ["createElement"]
      267 GETUPVAL                         R26 7
      268 DUPTABLE                         R27 K66 [{"onAbsoluteSizeChanged", "tag"}]
      269 SETTABLEKS                       R18 R27 K65 ["onAbsoluteSizeChanged"]
      271 LOADK                            R28 K67 ["col align-x-center gap-medium size-full-0 auto-y padding-x-medium"]
      272 SETTABLEKS                       R28 R27 K30 ["tag"]
      274 GETTABLEKS                       R28 R0 K68 ["children"]
      276 CALL                             R25 3 -1
      277 CALL                             R22 -1 -1
      278 CLOSEUPVALS                      R14
      279 RETURN                           R22 -1

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
       25 GETTABLEKS                       R5 R0 K11 ["Utility"]
       27 GETTABLEKS                       R5 R5 K12 ["Flags"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K1 [script]
       32 LOADK                            R7 K13 ["Sheet"]
       33 NAMECALL                         R5 R5 K3 ["FindFirstAncestor"]
       35 CALL                             R5 2 1
       36 GETIMPORT                        R6 K6 [require]
       38 GETTABLEKS                       R7 R5 K14 ["SheetContext"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R5 K15 ["SheetType"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K16 ["Components"]
       50 GETTABLEKS                       R9 R9 K17 ["ScrollView"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K16 ["Components"]
       57 GETTABLEKS                       R10 R10 K18 ["Types"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K16 ["Components"]
       64 GETTABLEKS                       R11 R11 K19 ["View"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K11 ["Utility"]
       71 GETTABLEKS                       R12 R12 K20 ["isScrollingFrameOverflowingY"]
       73 CALL                             R11 1 1
       74 DUPCLOSURE                       R12 K21 [PROTO_7]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R10
       83 GETTABLEKS                       R13 R2 K22 ["memo"]
       85 GETTABLEKS                       R14 R2 K23 ["forwardRef"]
       87 MOVE                             R15 R12
       88 CALL                             R14 1 -1
       89 CALL                             R13 -1 -1
       90 RETURN                           R13 -1
