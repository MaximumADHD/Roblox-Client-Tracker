PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
       44 GETUPVAL                         R14 1
       45 GETTABLEKS                       R13 R14 K13 ["useCallback"]
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
       60 GETUPVAL                         R17 4
       61 GETTABLEKS                       R16 R17 K14 ["FoundationAddHeightPropToCenterSheet"]
       63 JUMPIFNOT                        R16 ; [+7]
       64 GETUPVAL                         R17 1
       65 GETTABLEKS                       R16 R17 K15 ["useBinding"]
       67 LOADN                            R17 0
       68 CALL                             R16 1 2
       69 MOVE                             R14 R16
       70 MOVE                             R15 R17
       71 GETUPVAL                         R18 4
       72 GETTABLEKS                       R17 R18 K14 ["FoundationAddHeightPropToCenterSheet"]
       74 JUMPIFNOT                        R17 ; [+9]
       75 GETUPVAL                         R17 1
       76 GETTABLEKS                       R16 R17 K13 ["useCallback"]
       78 NEWCLOSURE                       R17 P1
       79 CAPTURE                          REF R15
       80 NEWTABLE                         R18 0 0
       82 CALL                             R16 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R16
       85 GETUPVAL                         R19 5
       86 GETTABLEKS                       R18 R19 K16 ["Bottom"]
       88 JUMPIFEQ                         R11 R18 ; [+2]
       90 LOADB                            R17 0 +1
       91 LOADB                            R17 1
       92 GETUPVAL                         R19 1
       93 GETTABLEKS                       R18 R19 K17 ["createElement"]
       95 GETUPVAL                         R19 6
       96 DUPTABLE                         R20 K28 [{"ZIndex", "scroll", "Size", "padding", "ClipsDescendants", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "testId", "tag", "ref"}]
       97 LOADN                            R21 1
       98 SETTABLEKS                       R21 R20 K18 ["ZIndex"]
      100 DUPTABLE                         R21 K33 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      101 SETTABLEKS                       R4 R21 K29 ["ScrollingEnabled"]
      103 GETIMPORT                        R22 K37 [Enum.AutomaticSize.Y]
      105 SETTABLEKS                       R22 R21 K30 ["AutomaticCanvasSize"]
      107 GETUPVAL                         R24 4
      108 GETTABLEKS                       R23 R24 K14 ["FoundationAddHeightPropToCenterSheet"]
      110 JUMPIFNOT                        R23 ; [+6]
      111 JUMPIFNOT                        R7 ; [+5]
      112 DUPCLOSURE                       R24 K38 [PROTO_2]
      113 NAMECALL                         R22 R14 K39 ["map"]
      115 CALL                             R22 2 1
      116 JUMP                             ; [+5]
      117 GETIMPORT                        R22 K42 [UDim2.fromScale]
      119 LOADN                            R23 1
      120 LOADN                            R24 0
      121 CALL                             R22 2 1
      122 SETTABLEKS                       R22 R21 K31 ["CanvasSize"]
      124 GETIMPORT                        R22 K43 [Enum.ScrollingDirection.Y]
      126 SETTABLEKS                       R22 R21 K32 ["ScrollingDirection"]
      128 SETTABLEKS                       R21 R20 K19 ["scroll"]
      130 GETUPVAL                         R23 4
      131 GETTABLEKS                       R22 R23 K14 ["FoundationAddHeightPropToCenterSheet"]
      133 JUMPIFNOT                        R22 ; [+6]
      134 JUMPIFNOT                        R7 ; [+5]
      135 DUPCLOSURE                       R23 K44 [PROTO_3]
      136 NAMECALL                         R21 R7 K39 ["map"]
      138 CALL                             R21 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R21
      141 SETTABLEKS                       R21 R20 K20 ["Size"]
      143 DUPTABLE                         R21 K49 [{"top", "bottom", "left", "right"}]
      144 NEWCLOSURE                       R24 P4
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R2
      147 NAMECALL                         R22 R10 K39 ["map"]
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K45 ["top"]
      152 JUMPIFNOT                        R17 ; [+7]
      153 NEWCLOSURE                       R24 P5
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R2
      156 NAMECALL                         R22 R6 K39 ["map"]
      158 CALL                             R22 2 1
      159 JUMP                             ; [+8]
      160 GETIMPORT                        R22 K52 [UDim.new]
      162 LOADN                            R23 0
      163 GETTABLEKS                       R25 R2 K53 ["Padding"]
      165 GETTABLEKS                       R24 R25 K54 ["Small"]
      167 CALL                             R22 2 1
      168 SETTABLEKS                       R22 R21 K46 ["bottom"]
      170 GETIMPORT                        R22 K52 [UDim.new]
      172 LOADN                            R23 0
      173 GETTABLEKS                       R25 R2 K53 ["Padding"]
      175 GETTABLEKS                       R24 R25 K54 ["Small"]
      177 CALL                             R22 2 1
      178 SETTABLEKS                       R22 R21 K47 ["left"]
      180 GETIMPORT                        R22 K52 [UDim.new]
      182 LOADN                            R23 0
      183 GETTABLEKS                       R25 R2 K53 ["Padding"]
      185 GETTABLEKS                       R24 R25 K54 ["Small"]
      187 CALL                             R22 2 1
      188 SETTABLEKS                       R22 R21 K48 ["right"]
      190 SETTABLEKS                       R21 R20 K21 ["padding"]
      192 JUMPIFNOT                        R17 ; [+2]
      193 MOVE                             R21 R10
      194 JUMP                             ; [+1]
      195 LOADB                            R21 1
      196 SETTABLEKS                       R21 R20 K22 ["ClipsDescendants"]
      198 NEWCLOSURE                       R21 P6
      199 CAPTURE                          VAL R5
      200 SETTABLEKS                       R21 R20 K23 ["onCanvasPositionChanged"]
      202 SETTABLEKS                       R13 R20 K24 ["onAbsoluteCanvasSizeChanged"]
      204 SETTABLEKS                       R13 R20 K25 ["onAbsoluteWindowSizeChanged"]
      206 LOADK                            R22 K55 ["%*--content"]
      207 MOVE                             R24 R12
      208 NAMECALL                         R22 R22 K56 ["format"]
      210 CALL                             R22 2 1
      211 MOVE                             R21 R22
      212 SETTABLEKS                       R21 R20 K9 ["testId"]
      214 LOADK                            R21 K57 ["size-full-0 auto-y fill"]
      215 SETTABLEKS                       R21 R20 K26 ["tag"]
      217 SETTABLEKS                       R1 R20 K27 ["ref"]
      219 GETUPVAL                         R22 1
      220 GETTABLEKS                       R21 R22 K17 ["createElement"]
      222 GETUPVAL                         R22 7
      223 DUPTABLE                         R23 K59 [{"onAbsoluteSizeChanged", "tag"}]
      224 SETTABLEKS                       R16 R23 K58 ["onAbsoluteSizeChanged"]
      226 LOADK                            R24 K60 ["col size-full-0 auto-y padding-x-medium gap-medium align-x-center"]
      227 SETTABLEKS                       R24 R23 K26 ["tag"]
      229 GETTABLEKS                       R24 R0 K61 ["children"]
      231 CALL                             R21 3 -1
      232 CALL                             R18 -1 -1
      233 CLOSEUPVALS                      R15
      234 RETURN                           R18 -1

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
       57 GETTABLEKS                       R10 R11 K18 ["View"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K11 ["Utility"]
       64 GETTABLEKS                       R11 R12 K19 ["isScrollingFrameOverflowingY"]
       66 CALL                             R10 1 1
       67 DUPCLOSURE                       R11 K20 [PROTO_7]
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
