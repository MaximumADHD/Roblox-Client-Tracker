PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plotToViewPosition"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Position"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["PlotRect"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rectContains"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K3 [Rect.new]
        6 LOADN                            R3 0
        7 LOADN                            R4 0
        8 LOADN                            R5 1
        9 LOADN                            R6 1
       10 CALL                             R2 4 1
       11 LOADK                            R3 K4 [0.001]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnHoverStart"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["OnHoverStart"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["OnMoved"]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K4 [Vector2.new]
       11 GETTABLEKS                       R2 R0 K5 ["Position"]
       13 GETTABLEKS                       R2 R2 K6 ["X"]
       15 GETTABLEKS                       R3 R0 K5 ["Position"]
       17 GETTABLEKS                       R3 R3 K7 ["Y"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K8 ["mouseCoordsToPlotPosition"]
       23 MOVE                             R3 R1
       24 GETUPVAL                         R4 3
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K0 ["current"]
       28 CALL                             R2 3 1
       29 GETIMPORT                        R3 K4 [Vector2.new]
       31 GETTABLEKS                       R5 R2 K6 ["X"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K9 ["Min"]
       36 GETTABLEKS                       R6 R6 K6 ["X"]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K10 ["Max"]
       41 GETTABLEKS                       R7 R7 K6 ["X"]
       43 FASTCALL                         MATH_CLAMP ; [+2]
       44 GETIMPORT                        R4 K13 [math.clamp]
       46 CALL                             R4 3 1
       47 GETTABLEKS                       R6 R2 K7 ["Y"]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K9 ["Min"]
       52 GETTABLEKS                       R7 R7 K7 ["Y"]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K10 ["Max"]
       57 GETTABLEKS                       R8 R8 K7 ["Y"]
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R5 K13 [math.clamp]
       62 CALL                             R5 3 1
       63 CALL                             R3 2 1
       64 MOVE                             R2 R3
       65 JUMPIFNOT                        R2 ; [+9]
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K1 ["OnMoved"]
       69 JUMPIFNOT                        R3 ; [+5]
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K1 ["OnMoved"]
       73 MOVE                             R4 R2
       74 CALL                             R3 1 0
       75 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnDragEnd"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnDragEnd"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["OnDragStart"]
        7 JUMPIFNOT                        R2 ; [+19]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["OnDragStart"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
       15 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton2]
       17 JUMPIFNOTEQ                      R2 R3 ; [+9]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K5 ["OnRightClick"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K5 ["OnRightClick"]
       26 CALL                             R2 0 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETTABLEKS                       R3 R0 K0 ["PlotRect"]
        5 GETTABLEKS                       R4 R0 K1 ["PlotRef"]
        7 GETUPVAL                         R5 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R7 0 2
       13 GETTABLEKS                       R8 R0 K2 ["Position"]
       15 GETTABLEKS                       R9 R0 K0 ["PlotRect"]
       17 SETLIST                          R7 R8 2 [1]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 1
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R8 0 1
       26 MOVE                             R9 R5
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 3
       31 NEWCLOSURE                       R8 P2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R9 0 1
       36 GETTABLEKS                       R10 R0 K3 ["OnHoverStart"]
       38 SETLIST                          R9 R10 1 [1]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 3
       42 NEWCLOSURE                       R9 P3
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R10 0 0
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 3
       48 NEWCLOSURE                       R10 P4
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R11 0 1
       55 GETTABLEKS                       R12 R0 K4 ["OnMoved"]
       57 SETLIST                          R11 R12 1 [1]
       59 CALL                             R9 2 1
       60 GETUPVAL                         R10 3
       61 NEWCLOSURE                       R11 P5
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R12 0 1
       65 GETTABLEKS                       R13 R0 K5 ["OnDragEnd"]
       67 SETLIST                          R12 R13 1 [1]
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 3
       71 NEWCLOSURE                       R12 P6
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R13 0 2
       76 GETTABLEKS                       R14 R0 K6 ["OnDragStart"]
       78 GETTABLEKS                       R15 R0 K7 ["OnRightClick"]
       80 SETLIST                          R13 R14 2 [1]
       82 CALL                             R11 2 1
       83 LOADK                            R12 K8 [""]
       84 GETTABLEKS                       R13 R0 K9 ["IsDragging"]
       86 JUMPIFNOT                        R13 ; [+2]
       87 LOADK                            R12 K10 ["Pressed"]
       88 JUMP                             ; [+10]
       89 GETTABLEKS                       R13 R0 K11 ["IsSelected"]
       91 JUMPIFNOT                        R13 ; [+3]
       92 JUMPIFNOT                        R1 ; [+2]
       93 LOADK                            R12 K12 ["Hovered"]
       94 JUMP                             ; [+4]
       95 GETTABLEKS                       R13 R0 K11 ["IsSelected"]
       97 JUMPIFNOT                        R13 ; [+1]
       98 LOADK                            R12 K13 ["Selected"]
       99 JUMPIF                           R6 ; [+3]
      100 GETTABLEKS                       R13 R0 K9 ["IsDragging"]
      102 JUMPIFNOT                        R13 ; [+84]
      103 GETUPVAL                         R13 5
      104 GETTABLEKS                       R13 R13 K14 ["createElement"]
      106 LOADK                            R14 K15 ["ImageButton"]
      107 NEWTABLE                         R15 4 0
      109 GETIMPORT                        R16 K18 [UDim2.fromScale]
      111 GETTABLEKS                       R17 R5 K19 ["X"]
      113 GETTABLEKS                       R18 R5 K20 ["Y"]
      115 CALL                             R16 2 1
      116 SETTABLEKS                       R16 R15 K2 ["Position"]
      118 GETUPVAL                         R16 5
      119 GETTABLEKS                       R16 R16 K21 ["Tag"]
      121 GETUPVAL                         R17 6
      122 LOADK                            R18 K22 ["CurvePointOuter"]
      123 MOVE                             R19 R12
      124 CALL                             R17 2 1
      125 SETTABLE                         R17 R15 R16
      126 GETUPVAL                         R16 5
      127 GETTABLEKS                       R16 R16 K23 ["Event"]
      129 GETTABLEKS                       R16 R16 K24 ["InputBegan"]
      131 SETTABLE                         R11 R15 R16
      132 DUPTABLE                         R16 K28 [{"HoverArea", "DragListener", "Inner"}]
      133 GETUPVAL                         R17 5
      134 GETTABLEKS                       R17 R17 K14 ["createElement"]
      136 GETUPVAL                         R18 7
      137 DUPTABLE                         R19 K32 [{"Cursor", "MouseEnter", "MouseLeave"}]
      138 GETUPVAL                         R20 8
      139 SETTABLEKS                       R20 R19 K29 ["Cursor"]
      141 SETTABLEKS                       R7 R19 K30 ["MouseEnter"]
      143 SETTABLEKS                       R8 R19 K31 ["MouseLeave"]
      145 CALL                             R17 2 1
      146 SETTABLEKS                       R17 R16 K25 ["HoverArea"]
      148 GETTABLEKS                       R17 R0 K9 ["IsDragging"]
      150 JUMPIFNOT                        R17 ; [+10]
      151 GETUPVAL                         R17 5
      152 GETTABLEKS                       R17 R17 K14 ["createElement"]
      154 GETUPVAL                         R18 9
      155 DUPTABLE                         R19 K35 [{"OnDragMoved", "OnDragEnded"}]
      156 SETTABLEKS                       R9 R19 K33 ["OnDragMoved"]
      158 SETTABLEKS                       R10 R19 K34 ["OnDragEnded"]
      160 CALL                             R17 2 1
      161 SETTABLEKS                       R17 R16 K26 ["DragListener"]
      163 GETUPVAL                         R17 5
      164 GETTABLEKS                       R17 R17 K14 ["createElement"]
      166 LOADK                            R18 K15 ["ImageButton"]
      167 NEWTABLE                         R19 2 0
      169 GETUPVAL                         R20 5
      170 GETTABLEKS                       R20 R20 K21 ["Tag"]
      172 GETUPVAL                         R21 6
      173 LOADK                            R22 K36 ["CurvePoint"]
      174 MOVE                             R23 R12
      175 CALL                             R21 2 1
      176 SETTABLE                         R21 R19 R20
      177 GETUPVAL                         R20 5
      178 GETTABLEKS                       R20 R20 K23 ["Event"]
      180 GETTABLEKS                       R20 R20 K24 ["InputBegan"]
      182 SETTABLE                         R11 R19 R20
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K27 ["Inner"]
      186 CALL                             R13 3 1
      187 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useMemo"]
       18 GETTABLEKS                       R4 R1 K10 ["useState"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K6 ["Packages"]
       24 GETTABLEKS                       R6 R6 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["Styling"]
       29 GETTABLEKS                       R6 R6 K13 ["joinTags"]
       31 GETTABLEKS                       R7 R5 K14 ["UI"]
       33 GETTABLEKS                       R7 R7 K15 ["DragListener"]
       35 GETTABLEKS                       R8 R5 K14 ["UI"]
       37 GETTABLEKS                       R8 R8 K16 ["HoverArea"]
       39 GETTABLEKS                       R9 R5 K17 ["Util"]
       41 GETTABLEKS                       R9 R9 K18 ["isInputMainPress"]
       43 GETIMPORT                        R10 K5 [require]
       45 GETTABLEKS                       R11 R0 K19 ["Src"]
       47 GETTABLEKS                       R11 R11 K20 ["Resources"]
       49 GETTABLEKS                       R11 R11 K21 ["PluginStyles"]
       51 CALL                             R10 1 1
       52 LOADK                            R13 K22 ["CursorOpenedHand"]
       53 NAMECALL                         R11 R10 K23 ["GetAttribute"]
       55 CALL                             R11 2 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R0 K19 ["Src"]
       60 GETTABLEKS                       R13 R13 K24 ["Components"]
       62 GETTABLEKS                       R13 R13 K25 ["CurveRenderer"]
       64 GETTABLEKS                       R13 R13 K26 ["PlotRectUtil"]
       66 CALL                             R12 1 1
       67 DUPCLOSURE                       R13 K27 [PROTO_7]
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
