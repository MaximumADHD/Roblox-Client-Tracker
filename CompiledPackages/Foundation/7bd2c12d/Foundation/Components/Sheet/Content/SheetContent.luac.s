PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 LOADN                            R4 1
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
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
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R13 R13 K13 ["useCallback"]
       47 NEWCLOSURE                       R14 P0
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R8
       50 CAPTURE                          UPVAL U3
       51 NEWTABLE                         R15 0 2
       53 MOVE                             R16 R8
       54 MOVE                             R17 R5
       55 SETLIST                          R15 R16 2 [1]
       57 CALL                             R13 2 1
       58 LOADNIL                          R14
       59 LOADNIL                          R15
       60 GETUPVAL                         R16 4
       61 GETTABLEKS                       R16 R16 K14 ["FoundationAddHeightPropToCenterSheet"]
       63 JUMPIFNOT                        R16 ; [+7]
       64 GETUPVAL                         R16 1
       65 GETTABLEKS                       R16 R16 K15 ["useBinding"]
       67 LOADN                            R17 0
       68 CALL                             R16 1 2
       69 MOVE                             R14 R16
       70 MOVE                             R15 R17
       71 GETUPVAL                         R17 4
       72 GETTABLEKS                       R17 R17 K14 ["FoundationAddHeightPropToCenterSheet"]
       74 JUMPIFNOT                        R17 ; [+9]
       75 GETUPVAL                         R16 1
       76 GETTABLEKS                       R16 R16 K13 ["useCallback"]
       78 NEWCLOSURE                       R17 P1
       79 CAPTURE                          REF R15
       80 NEWTABLE                         R18 0 0
       82 CALL                             R16 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R16
       85 GETUPVAL                         R18 5
       86 GETTABLEKS                       R18 R18 K16 ["Bottom"]
       88 JUMPIFEQ                         R11 R18 ; [+2]
       90 LOADB                            R17 0 +1
       91 LOADB                            R17 1
       92 GETUPVAL                         R18 1
       93 GETTABLEKS                       R18 R18 K17 ["createElement"]
       95 GETUPVAL                         R19 6
       96 DUPTABLE                         R20 K31 [{["scrollingFrameRef"], ["ZIndex"] = 1, ["scroll"], ["Size"], ["padding"], ["ClipsDescendants"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["onAbsoluteWindowSizeChanged"], ["testId"], ["tag"] = "size-full-0 auto-y fill", ["ref"]}]
       97 GETTABLEKS                       R21 R0 K18 ["scrollingFrameRef"]
       99 SETTABLEKS                       R21 R20 K18 ["scrollingFrameRef"]
      101 DUPTABLE                         R21 K36 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      102 SETTABLEKS                       R4 R21 K32 ["ScrollingEnabled"]
      104 GETIMPORT                        R22 K40 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R22 R21 K33 ["AutomaticCanvasSize"]
      108 GETUPVAL                         R23 4
      109 GETTABLEKS                       R23 R23 K14 ["FoundationAddHeightPropToCenterSheet"]
      111 JUMPIFNOT                        R23 ; [+6]
      112 JUMPIFNOT                        R7 ; [+5]
      113 DUPCLOSURE                       R24 K41 [PROTO_2]
      114 NAMECALL                         R22 R14 K42 ["map"]
      116 CALL                             R22 2 1
      117 JUMP                             ; [+5]
      118 GETIMPORT                        R22 K45 [UDim2.fromScale]
      120 LOADN                            R23 1
      121 LOADN                            R24 0
      122 CALL                             R22 2 1
      123 SETTABLEKS                       R22 R21 K34 ["CanvasSize"]
      125 GETIMPORT                        R22 K46 [Enum.ScrollingDirection.Y]
      127 SETTABLEKS                       R22 R21 K35 ["ScrollingDirection"]
      129 SETTABLEKS                       R21 R20 K21 ["scroll"]
      131 GETUPVAL                         R22 4
      132 GETTABLEKS                       R22 R22 K14 ["FoundationAddHeightPropToCenterSheet"]
      134 JUMPIFNOT                        R22 ; [+7]
      135 JUMPIFNOT                        R7 ; [+6]
      136 GETIMPORT                        R21 K45 [UDim2.fromScale]
      138 LOADN                            R22 1
      139 LOADN                            R23 1
      140 CALL                             R21 2 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R21
      143 SETTABLEKS                       R21 R20 K22 ["Size"]
      145 DUPTABLE                         R21 K51 [{"top", "bottom", "left", "right"}]
      146 NEWCLOSURE                       R24 P3
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R2
      149 NAMECALL                         R22 R10 K42 ["map"]
      151 CALL                             R22 2 1
      152 SETTABLEKS                       R22 R21 K47 ["top"]
      154 JUMPIFNOT                        R17 ; [+7]
      155 NEWCLOSURE                       R24 P4
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R2
      158 NAMECALL                         R22 R6 K42 ["map"]
      160 CALL                             R22 2 1
      161 JUMP                             ; [+8]
      162 GETIMPORT                        R22 K54 [UDim.new]
      164 LOADN                            R23 0
      165 GETTABLEKS                       R24 R2 K55 ["Padding"]
      167 GETTABLEKS                       R24 R24 K56 ["Small"]
      169 CALL                             R22 2 1
      170 SETTABLEKS                       R22 R21 K48 ["bottom"]
      172 GETIMPORT                        R22 K54 [UDim.new]
      174 LOADN                            R23 0
      175 GETTABLEKS                       R24 R2 K55 ["Padding"]
      177 GETTABLEKS                       R24 R24 K56 ["Small"]
      179 CALL                             R22 2 1
      180 SETTABLEKS                       R22 R21 K49 ["left"]
      182 GETIMPORT                        R22 K54 [UDim.new]
      184 LOADN                            R23 0
      185 GETTABLEKS                       R24 R2 K55 ["Padding"]
      187 GETTABLEKS                       R24 R24 K56 ["Small"]
      189 CALL                             R22 2 1
      190 SETTABLEKS                       R22 R21 K50 ["right"]
      192 SETTABLEKS                       R21 R20 K23 ["padding"]
      194 JUMPIFNOT                        R17 ; [+2]
      195 MOVE                             R21 R10
      196 JUMP                             ; [+1]
      197 LOADB                            R21 1
      198 SETTABLEKS                       R21 R20 K24 ["ClipsDescendants"]
      200 NEWCLOSURE                       R21 P5
      201 CAPTURE                          VAL R5
      202 SETTABLEKS                       R21 R20 K25 ["onCanvasPositionChanged"]
      204 SETTABLEKS                       R13 R20 K26 ["onAbsoluteCanvasSizeChanged"]
      206 SETTABLEKS                       R13 R20 K27 ["onAbsoluteWindowSizeChanged"]
      208 LOADK                            R22 K57 ["%*--content"]
      209 MOVE                             R24 R12
      210 NAMECALL                         R22 R22 K58 ["format"]
      212 CALL                             R22 2 1
      213 MOVE                             R21 R22
      214 SETTABLEKS                       R21 R20 K9 ["testId"]
      216 SETTABLEKS                       R1 R20 K30 ["ref"]
      218 GETUPVAL                         R21 1
      219 GETTABLEKS                       R21 R21 K17 ["createElement"]
      221 GETUPVAL                         R22 7
      222 DUPTABLE                         R23 K61 [{["onAbsoluteSizeChanged"], ["tag"] = "col size-full-0 auto-y padding-x-medium gap-medium align-x-center"}]
      223 SETTABLEKS                       R16 R23 K59 ["onAbsoluteSizeChanged"]
      225 GETTABLEKS                       R24 R0 K62 ["children"]
      227 CALL                             R21 3 -1
      228 CALL                             R18 -1 -1
      229 CLOSEUPVALS                      R15
      230 RETURN                           R18 -1

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
       57 GETTABLEKS                       R10 R10 K18 ["View"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K11 ["Utility"]
       64 GETTABLEKS                       R11 R11 K19 ["isScrollingFrameOverflowingY"]
       66 CALL                             R10 1 1
       67 DUPCLOSURE                       R11 K20 [PROTO_6]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 GETTABLEKS                       R12 R2 K21 ["memo"]
       78 GETTABLEKS                       R13 R2 K22 ["forwardRef"]
       80 MOVE                             R14 R11
       81 CALL                             R13 1 -1
       82 CALL                             R12 -1 -1
       83 RETURN                           R12 -1
