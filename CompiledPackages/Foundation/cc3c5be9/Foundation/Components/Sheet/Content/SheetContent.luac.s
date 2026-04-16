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
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K2 ["FoundationSheetContentSelectable"]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETUPVAL                         R2 4
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

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
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["Padding"]
       15 GETTABLEKS                       R3 R4 K4 ["Small"]
       17 JUMP                             ; [+5]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K5 ["Margin"]
       21 GETTABLEKS                       R3 R4 K4 ["Small"]
       23 CALL                             R1 2 1
       24 RETURN                           R1 1

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
       46 GETUPVAL                         R16 3
       47 GETTABLEKS                       R15 R16 K13 ["FoundationSheetContentSelectable"]
       49 JUMPIFNOT                        R15 ; [+7]
       50 GETUPVAL                         R16 1
       51 GETTABLEKS                       R15 R16 K14 ["useBinding"]
       53 LOADB                            R16 0
       54 CALL                             R15 1 2
       55 MOVE                             R13 R15
       56 MOVE                             R14 R16
       57 GETUPVAL                         R16 1
       58 GETTABLEKS                       R15 R16 K15 ["useCallback"]
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
       75 GETUPVAL                         R19 3
       76 GETTABLEKS                       R18 R19 K16 ["FoundationAddHeightPropToCenterSheet"]
       78 JUMPIFNOT                        R18 ; [+7]
       79 GETUPVAL                         R19 1
       80 GETTABLEKS                       R18 R19 K14 ["useBinding"]
       82 LOADN                            R19 0
       83 CALL                             R18 1 2
       84 MOVE                             R16 R18
       85 MOVE                             R17 R19
       86 GETUPVAL                         R20 3
       87 GETTABLEKS                       R19 R20 K16 ["FoundationAddHeightPropToCenterSheet"]
       89 JUMPIFNOT                        R19 ; [+9]
       90 GETUPVAL                         R19 1
       91 GETTABLEKS                       R18 R19 K15 ["useCallback"]
       93 NEWCLOSURE                       R19 P1
       94 CAPTURE                          REF R17
       95 NEWTABLE                         R20 0 0
       97 CALL                             R18 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R18
      100 GETUPVAL                         R21 5
      101 GETTABLEKS                       R20 R21 K17 ["Bottom"]
      103 JUMPIFEQ                         R11 R20 ; [+2]
      105 LOADB                            R19 0 +1
      106 LOADB                            R19 1
      107 GETTABLEKS                       R21 R0 K18 ["Selectable"]
      109 JUMPIFNOTEQKNIL                  R21 ; [+3]
      111 LOADB                            R20 1
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R20 R0 K18 ["Selectable"]
      115 GETUPVAL                         R23 3
      116 GETTABLEKS                       R22 R23 K13 ["FoundationSheetContentSelectable"]
      118 JUMPIFNOT                        R22 ; [+7]
      119 JUMPIFNOT                        R13 ; [+6]
      120 NEWCLOSURE                       R23 P2
      121 CAPTURE                          VAL R20
      122 NAMECALL                         R21 R13 K19 ["map"]
      124 CALL                             R21 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R21
      127 GETUPVAL                         R23 1
      128 GETTABLEKS                       R22 R23 K20 ["createElement"]
      130 GETUPVAL                         R23 6
      131 DUPTABLE                         R24 K33 [{"scrollingFrameRef", "ZIndex", "selection", "scroll", "Size", "padding", "ClipsDescendants", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "testId", "tag", "ref"}]
      132 GETTABLEKS                       R25 R0 K21 ["scrollingFrameRef"]
      134 SETTABLEKS                       R25 R24 K21 ["scrollingFrameRef"]
      136 LOADN                            R25 1
      137 SETTABLEKS                       R25 R24 K22 ["ZIndex"]
      139 GETUPVAL                         R27 3
      140 GETTABLEKS                       R26 R27 K13 ["FoundationSheetContentSelectable"]
      142 JUMPIFNOT                        R26 ; [+20]
      143 DUPTABLE                         R25 K38 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      144 SETTABLEKS                       R21 R25 K18 ["Selectable"]
      146 GETTABLEKS                       R26 R0 K34 ["NextSelectionUp"]
      148 SETTABLEKS                       R26 R25 K34 ["NextSelectionUp"]
      150 GETTABLEKS                       R26 R0 K35 ["NextSelectionDown"]
      152 SETTABLEKS                       R26 R25 K35 ["NextSelectionDown"]
      154 GETTABLEKS                       R26 R0 K36 ["NextSelectionLeft"]
      156 SETTABLEKS                       R26 R25 K36 ["NextSelectionLeft"]
      158 GETTABLEKS                       R26 R0 K37 ["NextSelectionRight"]
      160 SETTABLEKS                       R26 R25 K37 ["NextSelectionRight"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R25
      164 SETTABLEKS                       R25 R24 K23 ["selection"]
      166 DUPTABLE                         R25 K43 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      167 SETTABLEKS                       R4 R25 K39 ["ScrollingEnabled"]
      169 GETIMPORT                        R26 K47 [Enum.AutomaticSize.Y]
      171 SETTABLEKS                       R26 R25 K40 ["AutomaticCanvasSize"]
      173 GETUPVAL                         R28 3
      174 GETTABLEKS                       R27 R28 K16 ["FoundationAddHeightPropToCenterSheet"]
      176 JUMPIFNOT                        R27 ; [+6]
      177 JUMPIFNOT                        R7 ; [+5]
      178 DUPCLOSURE                       R28 K48 [PROTO_3]
      179 NAMECALL                         R26 R16 K19 ["map"]
      181 CALL                             R26 2 1
      182 JUMP                             ; [+5]
      183 GETIMPORT                        R26 K51 [UDim2.fromScale]
      185 LOADN                            R27 1
      186 LOADN                            R28 0
      187 CALL                             R26 2 1
      188 SETTABLEKS                       R26 R25 K41 ["CanvasSize"]
      190 GETIMPORT                        R26 K52 [Enum.ScrollingDirection.Y]
      192 SETTABLEKS                       R26 R25 K42 ["ScrollingDirection"]
      194 SETTABLEKS                       R25 R24 K24 ["scroll"]
      196 GETUPVAL                         R27 3
      197 GETTABLEKS                       R26 R27 K16 ["FoundationAddHeightPropToCenterSheet"]
      199 JUMPIFNOT                        R26 ; [+7]
      200 JUMPIFNOT                        R7 ; [+6]
      201 GETIMPORT                        R25 K51 [UDim2.fromScale]
      203 LOADN                            R26 1
      204 LOADN                            R27 1
      205 CALL                             R25 2 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R25
      208 SETTABLEKS                       R25 R24 K25 ["Size"]
      210 DUPTABLE                         R25 K57 [{"top", "bottom", "left", "right"}]
      211 NEWCLOSURE                       R28 P4
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R2
      214 NAMECALL                         R26 R10 K19 ["map"]
      216 CALL                             R26 2 1
      217 SETTABLEKS                       R26 R25 K53 ["top"]
      219 JUMPIFNOT                        R19 ; [+7]
      220 NEWCLOSURE                       R28 P5
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R2
      223 NAMECALL                         R26 R6 K19 ["map"]
      225 CALL                             R26 2 1
      226 JUMP                             ; [+8]
      227 GETIMPORT                        R26 K60 [UDim.new]
      229 LOADN                            R27 0
      230 GETTABLEKS                       R29 R2 K61 ["Padding"]
      232 GETTABLEKS                       R28 R29 K62 ["Small"]
      234 CALL                             R26 2 1
      235 SETTABLEKS                       R26 R25 K54 ["bottom"]
      237 GETIMPORT                        R26 K60 [UDim.new]
      239 LOADN                            R27 0
      240 GETTABLEKS                       R29 R2 K61 ["Padding"]
      242 GETTABLEKS                       R28 R29 K62 ["Small"]
      244 CALL                             R26 2 1
      245 SETTABLEKS                       R26 R25 K55 ["left"]
      247 GETIMPORT                        R26 K60 [UDim.new]
      249 LOADN                            R27 0
      250 GETTABLEKS                       R29 R2 K61 ["Padding"]
      252 GETTABLEKS                       R28 R29 K62 ["Small"]
      254 CALL                             R26 2 1
      255 SETTABLEKS                       R26 R25 K56 ["right"]
      257 SETTABLEKS                       R25 R24 K26 ["padding"]
      259 JUMPIFNOT                        R19 ; [+2]
      260 MOVE                             R25 R10
      261 JUMP                             ; [+1]
      262 LOADB                            R25 1
      263 SETTABLEKS                       R25 R24 K27 ["ClipsDescendants"]
      265 NEWCLOSURE                       R25 P6
      266 CAPTURE                          VAL R5
      267 SETTABLEKS                       R25 R24 K28 ["onCanvasPositionChanged"]
      269 SETTABLEKS                       R15 R24 K29 ["onAbsoluteCanvasSizeChanged"]
      271 SETTABLEKS                       R15 R24 K30 ["onAbsoluteWindowSizeChanged"]
      273 LOADK                            R26 K63 ["%*--content"]
      274 MOVE                             R28 R12
      275 NAMECALL                         R26 R26 K64 ["format"]
      277 CALL                             R26 2 1
      278 MOVE                             R25 R26
      279 SETTABLEKS                       R25 R24 K9 ["testId"]
      281 LOADK                            R25 K65 ["fill size-full-0 auto-y"]
      282 SETTABLEKS                       R25 R24 K31 ["tag"]
      284 SETTABLEKS                       R1 R24 K32 ["ref"]
      286 GETUPVAL                         R26 1
      287 GETTABLEKS                       R25 R26 K20 ["createElement"]
      289 GETUPVAL                         R26 7
      290 DUPTABLE                         R27 K67 [{"onAbsoluteSizeChanged", "tag"}]
      291 SETTABLEKS                       R18 R27 K66 ["onAbsoluteSizeChanged"]
      293 LOADK                            R28 K68 ["col align-x-center gap-medium size-full-0 auto-y padding-x-medium"]
      294 SETTABLEKS                       R28 R27 K31 ["tag"]
      296 GETTABLEKS                       R28 R0 K69 ["children"]
      298 CALL                             R25 3 -1
      299 CALL                             R22 -1 -1
      300 CLOSEUPVALS                      R14
      301 RETURN                           R22 -1

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
       25 GETTABLEKS                       R6 R0 K11 ["Utility"]
       27 GETTABLEKS                       R5 R6 K12 ["Flags"]
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
       48 GETTABLEKS                       R10 R0 K16 ["Components"]
       50 GETTABLEKS                       R9 R10 K17 ["ScrollView"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R11 R0 K16 ["Components"]
       57 GETTABLEKS                       R10 R11 K18 ["Types"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K16 ["Components"]
       64 GETTABLEKS                       R11 R12 K19 ["View"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R13 R0 K11 ["Utility"]
       71 GETTABLEKS                       R12 R13 K20 ["isScrollingFrameOverflowingY"]
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
