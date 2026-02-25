PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plotToAbsolutePolar"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Position"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["IsRight"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["PlotAbsoluteSize"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["OnHoverStart"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["OnHoverStart"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["OnMoved"]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K4 [Vector2.new]
       11 GETTABLEKS                       R3 R0 K5 ["Position"]
       13 GETTABLEKS                       R2 R3 K6 ["X"]
       15 GETTABLEKS                       R4 R0 K5 ["Position"]
       17 GETTABLEKS                       R3 R4 K7 ["Y"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K8 ["mouseToPlotPolar"]
       23 MOVE                             R3 R1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K0 ["current"]
       27 CALL                             R2 2 1
       28 GETIMPORT                        R3 K4 [Vector2.new]
       30 GETTABLEKS                       R5 R2 K6 ["X"]
       32 LOADN                            R6 0
       33 LOADN                            R7 180
       34 FASTCALL                         MATH_CLAMP ; [+2]
       35 GETIMPORT                        R4 K11 [math.clamp]
       37 CALL                             R4 3 1
       38 GETTABLEKS                       R6 R2 K7 ["Y"]
       40 LOADN                            R7 0
       41 LOADN                            R8 1
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R5 K11 [math.clamp]
       45 CALL                             R5 3 1
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R3 R4 K1 ["OnMoved"]
       51 MOVE                             R4 R2
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnDragEnd"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnDragEnd"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["OnDragStart"]
        7 JUMPIFNOT                        R2 ; [+19]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K0 ["OnDragStart"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
       15 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton2]
       17 JUMPIFNOTEQ                      R2 R3 ; [+9]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K5 ["OnRightClick"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K5 ["OnRightClick"]
       26 CALL                             R2 0 0
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETTABLEKS                       R3 R0 K0 ["PlotRef"]
        5 GETUPVAL                         R4 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R6 0 3
       11 GETTABLEKS                       R7 R0 K1 ["Position"]
       13 GETTABLEKS                       R8 R0 K2 ["IsRight"]
       15 GETTABLEKS                       R9 R0 K3 ["PlotAbsoluteSize"]
       17 SETLIST                          R6 R7 3 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 3
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R7 0 1
       26 GETTABLEKS                       R8 R0 K4 ["OnHoverStart"]
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 3
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 3
       38 NEWCLOSURE                       R8 P3
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 NEWTABLE                         R9 0 1
       44 GETTABLEKS                       R10 R0 K5 ["OnMoved"]
       46 SETLIST                          R9 R10 1 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 3
       50 NEWCLOSURE                       R9 P4
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R10 0 1
       54 GETTABLEKS                       R11 R0 K6 ["OnDragEnd"]
       56 SETLIST                          R10 R11 1 [1]
       58 CALL                             R8 2 1
       59 GETUPVAL                         R9 3
       60 NEWCLOSURE                       R10 P5
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R11 0 2
       65 GETTABLEKS                       R12 R0 K7 ["OnDragStart"]
       67 GETTABLEKS                       R13 R0 K8 ["OnRightClick"]
       69 SETLIST                          R11 R12 2 [1]
       71 CALL                             R9 2 1
       72 LOADK                            R10 K9 [""]
       73 GETTABLEKS                       R11 R0 K10 ["IsDragging"]
       75 JUMPIFNOT                        R11 ; [+2]
       76 LOADK                            R10 K11 ["Pressed"]
       77 JUMP                             ; [+10]
       78 GETTABLEKS                       R11 R0 K12 ["IsSelected"]
       80 JUMPIFNOT                        R11 ; [+3]
       81 JUMPIFNOT                        R1 ; [+2]
       82 LOADK                            R10 K13 ["Hovered"]
       83 JUMP                             ; [+4]
       84 GETTABLEKS                       R11 R0 K12 ["IsSelected"]
       86 JUMPIFNOT                        R11 ; [+1]
       87 LOADK                            R10 K14 ["Selected"]
       88 GETUPVAL                         R12 5
       89 GETTABLEKS                       R11 R12 K15 ["createElement"]
       91 LOADK                            R12 K16 ["ImageButton"]
       92 NEWTABLE                         R13 4 0
       94 GETIMPORT                        R14 K19 [UDim2.fromOffset]
       96 GETTABLEKS                       R15 R4 K20 ["X"]
       98 GETTABLEKS                       R16 R4 K21 ["Y"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K1 ["Position"]
      103 GETUPVAL                         R15 5
      104 GETTABLEKS                       R14 R15 K22 ["Tag"]
      106 GETUPVAL                         R15 6
      107 LOADK                            R16 K23 ["CurvePointOuter"]
      108 MOVE                             R17 R10
      109 CALL                             R15 2 1
      110 SETTABLE                         R15 R13 R14
      111 GETUPVAL                         R16 5
      112 GETTABLEKS                       R15 R16 K24 ["Event"]
      114 GETTABLEKS                       R14 R15 K25 ["InputBegan"]
      116 SETTABLE                         R9 R13 R14
      117 DUPTABLE                         R14 K29 [{"HoverArea", "DragListener", "Inner"}]
      118 GETUPVAL                         R16 5
      119 GETTABLEKS                       R15 R16 K15 ["createElement"]
      121 GETUPVAL                         R16 7
      122 DUPTABLE                         R17 K33 [{"Cursor", "MouseEnter", "MouseLeave"}]
      123 GETUPVAL                         R18 8
      124 SETTABLEKS                       R18 R17 K30 ["Cursor"]
      126 SETTABLEKS                       R5 R17 K31 ["MouseEnter"]
      128 SETTABLEKS                       R6 R17 K32 ["MouseLeave"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K26 ["HoverArea"]
      133 GETTABLEKS                       R15 R0 K10 ["IsDragging"]
      135 JUMPIFNOT                        R15 ; [+10]
      136 GETUPVAL                         R16 5
      137 GETTABLEKS                       R15 R16 K15 ["createElement"]
      139 GETUPVAL                         R16 9
      140 DUPTABLE                         R17 K36 [{"OnDragMoved", "OnDragEnded"}]
      141 SETTABLEKS                       R7 R17 K34 ["OnDragMoved"]
      143 SETTABLEKS                       R8 R17 K35 ["OnDragEnded"]
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K27 ["DragListener"]
      148 GETUPVAL                         R16 5
      149 GETTABLEKS                       R15 R16 K15 ["createElement"]
      151 LOADK                            R16 K16 ["ImageButton"]
      152 NEWTABLE                         R17 2 0
      154 GETUPVAL                         R19 5
      155 GETTABLEKS                       R18 R19 K22 ["Tag"]
      157 GETUPVAL                         R19 6
      158 LOADK                            R20 K37 ["CurvePoint"]
      159 MOVE                             R21 R10
      160 CALL                             R19 2 1
      161 SETTABLE                         R19 R17 R18
      162 GETUPVAL                         R20 5
      163 GETTABLEKS                       R19 R20 K24 ["Event"]
      165 GETTABLEKS                       R18 R19 K25 ["InputBegan"]
      167 SETTABLE                         R9 R17 R18
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K28 ["Inner"]
      171 CALL                             R11 3 -1
      172 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useMemo"]
       18 GETTABLEKS                       R4 R1 K10 ["useState"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R7 R0 K6 ["Packages"]
       24 GETTABLEKS                       R6 R7 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R7 R5 K12 ["Styling"]
       29 GETTABLEKS                       R6 R7 K13 ["joinTags"]
       31 GETTABLEKS                       R8 R5 K14 ["UI"]
       33 GETTABLEKS                       R7 R8 K15 ["DragListener"]
       35 GETTABLEKS                       R9 R5 K14 ["UI"]
       37 GETTABLEKS                       R8 R9 K16 ["HoverArea"]
       39 GETTABLEKS                       R10 R5 K17 ["Util"]
       41 GETTABLEKS                       R9 R10 K18 ["isInputMainPress"]
       43 GETIMPORT                        R10 K5 [require]
       45 GETTABLEKS                       R13 R0 K19 ["Src"]
       47 GETTABLEKS                       R12 R13 K20 ["Resources"]
       49 GETTABLEKS                       R11 R12 K21 ["PluginStyles"]
       51 CALL                             R10 1 1
       52 LOADK                            R13 K22 ["CursorOpenedHand"]
       53 NAMECALL                         R11 R10 K23 ["GetAttribute"]
       55 CALL                             R11 2 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R16 R0 K19 ["Src"]
       60 GETTABLEKS                       R15 R16 K24 ["Components"]
       62 GETTABLEKS                       R14 R15 K25 ["CurveRenderer"]
       64 GETTABLEKS                       R13 R14 K26 ["PlotRectUtil"]
       66 CALL                             R12 1 1
       67 DUPCLOSURE                       R13 K27 [PROTO_6]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R7
       78 RETURN                           R13 1
