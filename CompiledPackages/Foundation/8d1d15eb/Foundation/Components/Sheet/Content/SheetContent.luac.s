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
       73 LOADNIL                          R16
       74 LOADNIL                          R17
       75 GETUPVAL                         R18 3
       76 GETTABLEKS                       R18 R18 K16 ["FoundationAddHeightPropToCenterSheet"]
       78 JUMPIFNOT                        R18 ; [+7]
       79 GETUPVAL                         R18 1
       80 GETTABLEKS                       R18 R18 K14 ["useBinding"]
       82 LOADN                            R19 0
       83 CALL                             R18 1 2
       84 MOVE                             R16 R18
       85 MOVE                             R17 R19
       86 GETUPVAL                         R19 3
       87 GETTABLEKS                       R19 R19 K16 ["FoundationAddHeightPropToCenterSheet"]
       89 JUMPIFNOT                        R19 ; [+9]
       90 GETUPVAL                         R18 1
       91 GETTABLEKS                       R18 R18 K15 ["useCallback"]
       93 NEWCLOSURE                       R19 P1
       94 CAPTURE                          REF R17
       95 NEWTABLE                         R20 0 0
       97 CALL                             R18 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R18
      100 GETUPVAL                         R20 5
      101 GETTABLEKS                       R20 R20 K17 ["Bottom"]
      103 JUMPIFEQ                         R11 R20 ; [+2]
      105 LOADB                            R19 0 +1
      106 LOADB                            R19 1
      107 GETTABLEKS                       R21 R0 K18 ["Selectable"]
      109 JUMPIFNOTEQKNIL                  R21 ; [+3]
      111 LOADB                            R20 1
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R20 R0 K18 ["Selectable"]
      115 GETUPVAL                         R22 3
      116 GETTABLEKS                       R22 R22 K13 ["FoundationSheetContentSelectable"]
      118 JUMPIFNOT                        R22 ; [+7]
      119 JUMPIFNOT                        R13 ; [+6]
      120 NEWCLOSURE                       R23 P2
      121 CAPTURE                          VAL R20
      122 NAMECALL                         R21 R13 K19 ["map"]
      124 CALL                             R21 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R21
      127 GETUPVAL                         R22 1
      128 GETTABLEKS                       R22 R22 K20 ["createElement"]
      130 GETUPVAL                         R23 6
      131 DUPTABLE                         R24 K35 [{["scrollingFrameRef"], ["ZIndex"] = 1, ["selection"], ["scroll"], ["Size"], ["padding"], ["ClipsDescendants"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["onAbsoluteWindowSizeChanged"], ["testId"], ["tag"] = "size-full-0 auto-y fill", ["ref"]}]
      132 GETTABLEKS                       R25 R0 K21 ["scrollingFrameRef"]
      134 SETTABLEKS                       R25 R24 K21 ["scrollingFrameRef"]
      136 GETUPVAL                         R26 3
      137 GETTABLEKS                       R26 R26 K13 ["FoundationSheetContentSelectable"]
      139 JUMPIFNOT                        R26 ; [+20]
      140 DUPTABLE                         R25 K40 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      141 SETTABLEKS                       R21 R25 K18 ["Selectable"]
      143 GETTABLEKS                       R26 R0 K36 ["NextSelectionUp"]
      145 SETTABLEKS                       R26 R25 K36 ["NextSelectionUp"]
      147 GETTABLEKS                       R26 R0 K37 ["NextSelectionDown"]
      149 SETTABLEKS                       R26 R25 K37 ["NextSelectionDown"]
      151 GETTABLEKS                       R26 R0 K38 ["NextSelectionLeft"]
      153 SETTABLEKS                       R26 R25 K38 ["NextSelectionLeft"]
      155 GETTABLEKS                       R26 R0 K39 ["NextSelectionRight"]
      157 SETTABLEKS                       R26 R25 K39 ["NextSelectionRight"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R25
      161 SETTABLEKS                       R25 R24 K24 ["selection"]
      163 DUPTABLE                         R25 K45 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      164 SETTABLEKS                       R4 R25 K41 ["ScrollingEnabled"]
      166 GETIMPORT                        R26 K49 [Enum.AutomaticSize.Y]
      168 SETTABLEKS                       R26 R25 K42 ["AutomaticCanvasSize"]
      170 GETUPVAL                         R27 3
      171 GETTABLEKS                       R27 R27 K16 ["FoundationAddHeightPropToCenterSheet"]
      173 JUMPIFNOT                        R27 ; [+6]
      174 JUMPIFNOT                        R7 ; [+5]
      175 DUPCLOSURE                       R28 K50 [PROTO_3]
      176 NAMECALL                         R26 R16 K19 ["map"]
      178 CALL                             R26 2 1
      179 JUMP                             ; [+5]
      180 GETIMPORT                        R26 K53 [UDim2.fromScale]
      182 LOADN                            R27 1
      183 LOADN                            R28 0
      184 CALL                             R26 2 1
      185 SETTABLEKS                       R26 R25 K43 ["CanvasSize"]
      187 GETIMPORT                        R26 K54 [Enum.ScrollingDirection.Y]
      189 SETTABLEKS                       R26 R25 K44 ["ScrollingDirection"]
      191 SETTABLEKS                       R25 R24 K25 ["scroll"]
      193 GETUPVAL                         R26 3
      194 GETTABLEKS                       R26 R26 K16 ["FoundationAddHeightPropToCenterSheet"]
      196 JUMPIFNOT                        R26 ; [+7]
      197 JUMPIFNOT                        R7 ; [+6]
      198 GETIMPORT                        R25 K53 [UDim2.fromScale]
      200 LOADN                            R26 1
      201 LOADN                            R27 1
      202 CALL                             R25 2 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R25
      205 SETTABLEKS                       R25 R24 K26 ["Size"]
      207 DUPTABLE                         R25 K59 [{"top", "bottom", "left", "right"}]
      208 NEWCLOSURE                       R28 P4
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R2
      211 NAMECALL                         R26 R10 K19 ["map"]
      213 CALL                             R26 2 1
      214 SETTABLEKS                       R26 R25 K55 ["top"]
      216 JUMPIFNOT                        R19 ; [+7]
      217 NEWCLOSURE                       R28 P5
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R2
      220 NAMECALL                         R26 R6 K19 ["map"]
      222 CALL                             R26 2 1
      223 JUMP                             ; [+8]
      224 GETIMPORT                        R26 K62 [UDim.new]
      226 LOADN                            R27 0
      227 GETTABLEKS                       R28 R2 K63 ["Padding"]
      229 GETTABLEKS                       R28 R28 K64 ["Small"]
      231 CALL                             R26 2 1
      232 SETTABLEKS                       R26 R25 K56 ["bottom"]
      234 GETIMPORT                        R26 K62 [UDim.new]
      236 LOADN                            R27 0
      237 GETTABLEKS                       R28 R2 K63 ["Padding"]
      239 GETTABLEKS                       R28 R28 K64 ["Small"]
      241 CALL                             R26 2 1
      242 SETTABLEKS                       R26 R25 K57 ["left"]
      244 GETIMPORT                        R26 K62 [UDim.new]
      246 LOADN                            R27 0
      247 GETTABLEKS                       R28 R2 K63 ["Padding"]
      249 GETTABLEKS                       R28 R28 K64 ["Small"]
      251 CALL                             R26 2 1
      252 SETTABLEKS                       R26 R25 K58 ["right"]
      254 SETTABLEKS                       R25 R24 K27 ["padding"]
      256 JUMPIFNOT                        R19 ; [+2]
      257 MOVE                             R25 R10
      258 JUMP                             ; [+1]
      259 LOADB                            R25 1
      260 SETTABLEKS                       R25 R24 K28 ["ClipsDescendants"]
      262 NEWCLOSURE                       R25 P6
      263 CAPTURE                          VAL R5
      264 SETTABLEKS                       R25 R24 K29 ["onCanvasPositionChanged"]
      266 SETTABLEKS                       R15 R24 K30 ["onAbsoluteCanvasSizeChanged"]
      268 SETTABLEKS                       R15 R24 K31 ["onAbsoluteWindowSizeChanged"]
      270 LOADK                            R26 K65 ["%*--content"]
      271 MOVE                             R28 R12
      272 NAMECALL                         R26 R26 K66 ["format"]
      274 CALL                             R26 2 1
      275 MOVE                             R25 R26
      276 SETTABLEKS                       R25 R24 K9 ["testId"]
      278 SETTABLEKS                       R1 R24 K34 ["ref"]
      280 GETUPVAL                         R25 1
      281 GETTABLEKS                       R25 R25 K20 ["createElement"]
      283 GETUPVAL                         R26 7
      284 DUPTABLE                         R27 K69 [{["onAbsoluteSizeChanged"], ["tag"] = "col size-full-0 auto-y padding-x-medium gap-medium align-x-center"}]
      285 SETTABLEKS                       R18 R27 K67 ["onAbsoluteSizeChanged"]
      287 GETTABLEKS                       R28 R0 K70 ["children"]
      289 CALL                             R25 3 -1
      290 CALL                             R22 -1 -1
      291 CLOSEUPVALS                      R14
      292 RETURN                           R22 -1

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
