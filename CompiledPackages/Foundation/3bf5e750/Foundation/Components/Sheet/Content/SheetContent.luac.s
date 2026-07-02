PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["AbsoluteCanvasSize"]
        8 GETTABLEKS                       R1 R1 K1 ["Y"]
       10 GETTABLEKS                       R2 R0 K3 ["AbsoluteWindowSize"]
       12 GETTABLEKS                       R2 R2 K1 ["Y"]
       14 GETUPVAL                         R3 1
       15 ADDK                             R5 R2 K4 [1]
       16 JUMPIFLT                         R5 R1 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

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
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 NEWTABLE                         R14 0 1
       50 MOVE                             R15 R7
       51 SETLIST                          R14 R15 1 [1]
       53 CALL                             R12 2 1
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R14 R14 K13 ["Bottom"]
       57 JUMPIFEQ                         R10 R14 ; [+2]
       59 LOADB                            R13 0 +1
       60 LOADB                            R13 1
       61 GETUPVAL                         R14 1
       62 GETTABLEKS                       R14 R14 K14 ["createElement"]
       64 GETUPVAL                         R15 4
       65 DUPTABLE                         R16 K26 [{["ZIndex"] = 1, ["scroll"], ["padding"], ["ClipsDescendants"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["onAbsoluteWindowSizeChanged"], ["testId"], ["tag"] = "size-full-0 auto-y fill", ["ref"]}]
       66 DUPTABLE                         R17 K31 [{"ScrollingEnabled", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       67 SETTABLEKS                       R4 R17 K27 ["ScrollingEnabled"]
       69 GETIMPORT                        R18 K35 [Enum.AutomaticSize.Y]
       71 SETTABLEKS                       R18 R17 K28 ["AutomaticCanvasSize"]
       73 GETIMPORT                        R18 K38 [UDim2.fromScale]
       75 LOADN                            R19 1
       76 LOADN                            R20 0
       77 CALL                             R18 2 1
       78 SETTABLEKS                       R18 R17 K29 ["CanvasSize"]
       80 GETIMPORT                        R18 K39 [Enum.ScrollingDirection.Y]
       82 SETTABLEKS                       R18 R17 K30 ["ScrollingDirection"]
       84 SETTABLEKS                       R17 R16 K17 ["scroll"]
       86 DUPTABLE                         R17 K44 [{"top", "bottom", "left", "right"}]
       87 NEWCLOSURE                       R20 P1
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R2
       90 NAMECALL                         R18 R9 K45 ["map"]
       92 CALL                             R18 2 1
       93 SETTABLEKS                       R18 R17 K40 ["top"]
       95 JUMPIFNOT                        R13 ; [+7]
       96 NEWCLOSURE                       R20 P2
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R2
       99 NAMECALL                         R18 R6 K45 ["map"]
      101 CALL                             R18 2 1
      102 JUMP                             ; [+8]
      103 GETIMPORT                        R18 K48 [UDim.new]
      105 LOADN                            R19 0
      106 GETTABLEKS                       R20 R2 K49 ["Padding"]
      108 GETTABLEKS                       R20 R20 K50 ["Small"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K41 ["bottom"]
      113 GETIMPORT                        R18 K48 [UDim.new]
      115 LOADN                            R19 0
      116 GETTABLEKS                       R20 R2 K49 ["Padding"]
      118 GETTABLEKS                       R20 R20 K50 ["Small"]
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K42 ["left"]
      123 GETIMPORT                        R18 K48 [UDim.new]
      125 LOADN                            R19 0
      126 GETTABLEKS                       R20 R2 K49 ["Padding"]
      128 GETTABLEKS                       R20 R20 K50 ["Small"]
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K43 ["right"]
      133 SETTABLEKS                       R17 R16 K18 ["padding"]
      135 JUMPIFNOT                        R13 ; [+2]
      136 MOVE                             R17 R9
      137 JUMP                             ; [+1]
      138 LOADB                            R17 1
      139 SETTABLEKS                       R17 R16 K19 ["ClipsDescendants"]
      141 NEWCLOSURE                       R17 P3
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R17 R16 K20 ["onCanvasPositionChanged"]
      145 SETTABLEKS                       R12 R16 K21 ["onAbsoluteCanvasSizeChanged"]
      147 SETTABLEKS                       R12 R16 K22 ["onAbsoluteWindowSizeChanged"]
      149 LOADK                            R18 K51 ["%*--content"]
      150 MOVE                             R20 R11
      151 NAMECALL                         R18 R18 K52 ["format"]
      153 CALL                             R18 2 1
      154 MOVE                             R17 R18
      155 SETTABLEKS                       R17 R16 K8 ["testId"]
      157 SETTABLEKS                       R1 R16 K25 ["ref"]
      159 GETUPVAL                         R17 1
      160 GETTABLEKS                       R17 R17 K14 ["createElement"]
      162 GETUPVAL                         R18 5
      163 DUPTABLE                         R19 K54 [{["tag"] = "col size-full-0 auto-y padding-x-medium gap-medium align-x-center"}]
      164 GETTABLEKS                       R20 R0 K55 ["children"]
      166 CALL                             R17 3 -1
      167 CALL                             R14 -1 -1
      168 RETURN                           R14 -1

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
       43 GETTABLEKS                       R8 R8 K15 ["ScrollView"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Components"]
       50 GETTABLEKS                       R9 R9 K16 ["View"]
       52 CALL                             R8 1 1
       53 DUPCLOSURE                       R9 K17 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 GETTABLEKS                       R10 R2 K18 ["memo"]
       62 GETTABLEKS                       R11 R2 K19 ["forwardRef"]
       64 MOVE                             R12 R9
       65 CALL                             R11 1 -1
       66 CALL                             R10 -1 -1
       67 RETURN                           R10 -1
