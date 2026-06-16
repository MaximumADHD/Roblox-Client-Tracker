PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 GETTABLEKS                       R2 R0 K2 ["AbsoluteWindowSize"]
        6 GETTABLEKS                       R2 R2 K1 ["Y"]
        8 GETUPVAL                         R3 0
        9 ADDK                             R5 R2 K3 [1]
       10 JUMPIFLT                         R5 R1 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K1 ["innerScrollingEnabled"]
        9 GETTABLEKS                       R5 R3 K2 ["setInnerScrollY"]
       11 GETTABLEKS                       R6 R3 K3 ["actionsHeight"]
       13 GETTABLEKS                       R7 R3 K4 ["setHasActionsDivider"]
       15 GETTABLEKS                       R8 R3 K5 ["bottomPadding"]
       17 GETTABLEKS                       R9 R3 K6 ["hasHeader"]
       19 GETTABLEKS                       R10 R3 K7 ["sheetType"]
       21 GETTABLEKS                       R11 R3 K8 ["testId"]
       23 MOVE                             R13 R4
       24 JUMPIFNOT                        R13 ; [+11]
       25 MOVE                             R13 R5
       26 JUMPIFNOT                        R13 ; [+9]
       27 MOVE                             R13 R6
       28 JUMPIFNOT                        R13 ; [+7]
       29 MOVE                             R13 R7
       30 JUMPIFNOT                        R13 ; [+5]
       31 MOVE                             R13 R8
       32 JUMPIFNOT                        R13 ; [+3]
       33 MOVE                             R13 R9
       34 JUMPIFNOT                        R13 ; [+1]
       35 MOVE                             R13 R11
       36 FASTCALL2K                       ASSERT R13 K9 ; [+4]
       38 LOADK                            R14 K9 ["SheetContent must be used within a Sheet"]
       39 GETIMPORT                        R12 K11 [assert]
       41 CALL                             R12 2 0
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K12 ["useCallback"]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R7
       47 NEWTABLE                         R14 0 1
       49 MOVE                             R15 R7
       50 SETLIST                          R14 R15 1 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R14 3
       54 GETTABLEKS                       R14 R14 K13 ["Bottom"]
       56 JUMPIFEQ                         R10 R14 ; [+2]
       58 LOADB                            R13 0 +1
       59 LOADB                            R13 1
       60 GETUPVAL                         R14 1
       61 GETTABLEKS                       R14 R14 K14 ["createElement"]
       63 GETUPVAL                         R15 4
       64 DUPTABLE                         R16 K24 [{"ZIndex", "scroll", "padding", "ClipsDescendants", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "testId", "tag", "ref"}]
       65 LOADN                            R17 1
       66 SETTABLEKS                       R17 R16 K15 ["ZIndex"]
       68 DUPTABLE                         R17 K29 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       69 SETTABLEKS                       R4 R17 K25 ["ScrollingEnabled"]
       71 GETIMPORT                        R18 K33 [Enum.AutomaticSize.Y]
       73 SETTABLEKS                       R18 R17 K26 ["AutomaticCanvasSize"]
       75 GETIMPORT                        R18 K36 [UDim2.fromScale]
       77 LOADN                            R19 1
       78 LOADN                            R20 0
       79 CALL                             R18 2 1
       80 SETTABLEKS                       R18 R17 K27 ["CanvasSize"]
       82 GETIMPORT                        R18 K37 [Enum.ScrollingDirection.Y]
       84 SETTABLEKS                       R18 R17 K28 ["ScrollingDirection"]
       86 SETTABLEKS                       R17 R16 K16 ["scroll"]
       88 DUPTABLE                         R17 K42 [{"top", "bottom", "left", "right"}]
       89 NEWCLOSURE                       R20 P1
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R2
       92 NAMECALL                         R18 R9 K43 ["map"]
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K38 ["top"]
       97 JUMPIFNOT                        R13 ; [+7]
       98 NEWCLOSURE                       R20 P2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R2
      101 NAMECALL                         R18 R6 K43 ["map"]
      103 CALL                             R18 2 1
      104 JUMP                             ; [+8]
      105 GETIMPORT                        R18 K46 [UDim.new]
      107 LOADN                            R19 0
      108 GETTABLEKS                       R20 R2 K47 ["Padding"]
      110 GETTABLEKS                       R20 R20 K48 ["Small"]
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K39 ["bottom"]
      115 GETIMPORT                        R18 K46 [UDim.new]
      117 LOADN                            R19 0
      118 GETTABLEKS                       R20 R2 K47 ["Padding"]
      120 GETTABLEKS                       R20 R20 K48 ["Small"]
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K40 ["left"]
      125 GETIMPORT                        R18 K46 [UDim.new]
      127 LOADN                            R19 0
      128 GETTABLEKS                       R20 R2 K47 ["Padding"]
      130 GETTABLEKS                       R20 R20 K48 ["Small"]
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K41 ["right"]
      135 SETTABLEKS                       R17 R16 K17 ["padding"]
      137 JUMPIFNOT                        R13 ; [+2]
      138 MOVE                             R17 R9
      139 JUMP                             ; [+1]
      140 LOADB                            R17 1
      141 SETTABLEKS                       R17 R16 K18 ["ClipsDescendants"]
      143 NEWCLOSURE                       R17 P3
      144 CAPTURE                          VAL R5
      145 SETTABLEKS                       R17 R16 K19 ["onCanvasPositionChanged"]
      147 SETTABLEKS                       R12 R16 K20 ["onAbsoluteCanvasSizeChanged"]
      149 SETTABLEKS                       R12 R16 K21 ["onAbsoluteWindowSizeChanged"]
      151 LOADK                            R18 K49 ["%*--content"]
      152 MOVE                             R20 R11
      153 NAMECALL                         R18 R18 K50 ["format"]
      155 CALL                             R18 2 1
      156 MOVE                             R17 R18
      157 SETTABLEKS                       R17 R16 K8 ["testId"]
      159 LOADK                            R17 K51 ["size-full-0 auto-y fill"]
      160 SETTABLEKS                       R17 R16 K22 ["tag"]
      162 SETTABLEKS                       R1 R16 K23 ["ref"]
      164 GETUPVAL                         R17 1
      165 GETTABLEKS                       R17 R17 K14 ["createElement"]
      167 GETUPVAL                         R18 5
      168 DUPTABLE                         R19 K52 [{"tag"}]
      169 LOADK                            R20 K53 ["col size-full-0 auto-y padding-x-medium gap-medium align-x-center"]
      170 SETTABLEKS                       R20 R19 K22 ["tag"]
      172 GETTABLEKS                       R20 R0 K54 ["children"]
      174 CALL                             R17 3 -1
      175 CALL                             R14 -1 -1
      176 RETURN                           R14 -1

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
       23 GETIMPORT                        R4 K1 [script]
       25 LOADK                            R6 K11 ["Sheet"]
       26 NAMECALL                         R4 R4 K3 ["FindFirstAncestor"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R4 K12 ["SheetContext"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R4 K13 ["SheetType"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K14 ["Components"]
       43 GETTABLEKS                       R8 R8 K15 ["View"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Components"]
       50 GETTABLEKS                       R9 R9 K16 ["ScrollView"]
       52 CALL                             R8 1 1
       53 DUPCLOSURE                       R9 K17 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 GETTABLEKS                       R10 R2 K18 ["memo"]
       62 GETTABLEKS                       R11 R2 K19 ["forwardRef"]
       64 MOVE                             R12 R9
       65 CALL                             R11 1 -1
       66 CALL                             R10 -1 -1
       67 RETURN                           R10 -1
