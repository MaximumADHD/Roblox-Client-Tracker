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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnHoverEnd"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["OnHoverEnd"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnMoved"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 GETTABLEKS                       R2 R0 K4 ["Position"]
        8 GETTABLEKS                       R2 R2 K5 ["X"]
       10 GETTABLEKS                       R3 R0 K4 ["Position"]
       12 GETTABLEKS                       R3 R3 K6 ["Y"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["OnMoved"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

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
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R5 0 2
        9 GETTABLEKS                       R6 R0 K0 ["Position"]
       11 GETTABLEKS                       R7 R0 K1 ["PlotRect"]
       13 SETLIST                          R5 R6 2 [1]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 1
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R3
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R7 0 2
       32 GETTABLEKS                       R8 R0 K2 ["OnHoverStart"]
       34 MOVE                             R9 R2
       35 SETLIST                          R7 R8 2 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 3
       39 NEWCLOSURE                       R7 P3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R8 0 2
       44 GETTABLEKS                       R9 R0 K3 ["OnHoverEnd"]
       46 MOVE                             R10 R2
       47 SETLIST                          R8 R9 2 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 3
       51 NEWCLOSURE                       R8 P4
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R9 0 1
       55 GETTABLEKS                       R10 R0 K4 ["OnMoved"]
       57 SETLIST                          R9 R10 1 [1]
       59 CALL                             R7 2 1
       60 GETUPVAL                         R8 3
       61 NEWCLOSURE                       R9 P5
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R10 0 1
       65 GETTABLEKS                       R11 R0 K5 ["OnDragEnd"]
       67 SETLIST                          R10 R11 1 [1]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R9 3
       71 NEWCLOSURE                       R10 P6
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R11 0 2
       76 GETTABLEKS                       R12 R0 K6 ["OnDragStart"]
       78 GETTABLEKS                       R13 R0 K7 ["OnRightClick"]
       80 SETLIST                          R11 R12 2 [1]
       82 CALL                             R9 2 1
       83 LOADK                            R10 K8 [""]
       84 GETTABLEKS                       R11 R0 K9 ["IsDragging"]
       86 JUMPIFNOT                        R11 ; [+2]
       87 LOADK                            R10 K10 ["Pressed"]
       88 JUMP                             ; [+10]
       89 GETTABLEKS                       R11 R0 K11 ["Selected"]
       91 JUMPIFNOT                        R11 ; [+3]
       92 JUMPIFNOT                        R1 ; [+2]
       93 LOADK                            R10 K12 ["Hovered"]
       94 JUMP                             ; [+4]
       95 GETTABLEKS                       R11 R0 K11 ["Selected"]
       97 JUMPIFNOT                        R11 ; [+1]
       98 LOADK                            R10 K11 ["Selected"]
       99 JUMPIF                           R4 ; [+3]
      100 GETTABLEKS                       R11 R0 K9 ["IsDragging"]
      102 JUMPIFNOT                        R11 ; [+84]
      103 GETUPVAL                         R11 5
      104 GETTABLEKS                       R11 R11 K13 ["createElement"]
      106 LOADK                            R12 K14 ["ImageButton"]
      107 NEWTABLE                         R13 4 0
      109 GETIMPORT                        R14 K17 [UDim2.fromScale]
      111 GETTABLEKS                       R15 R3 K18 ["X"]
      113 GETTABLEKS                       R16 R3 K19 ["Y"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K0 ["Position"]
      118 GETUPVAL                         R14 5
      119 GETTABLEKS                       R14 R14 K20 ["Tag"]
      121 GETUPVAL                         R15 6
      122 LOADK                            R16 K21 ["CurvePointOuter"]
      123 MOVE                             R17 R10
      124 CALL                             R15 2 1
      125 SETTABLE                         R15 R13 R14
      126 GETUPVAL                         R14 5
      127 GETTABLEKS                       R14 R14 K22 ["Event"]
      129 GETTABLEKS                       R14 R14 K23 ["InputBegan"]
      131 SETTABLE                         R9 R13 R14
      132 DUPTABLE                         R14 K27 [{"HoverArea", "DragListener", "Inner"}]
      133 GETUPVAL                         R15 5
      134 GETTABLEKS                       R15 R15 K13 ["createElement"]
      136 GETUPVAL                         R16 7
      137 DUPTABLE                         R17 K31 [{"Cursor", "MouseEnter", "MouseLeave"}]
      138 GETUPVAL                         R18 8
      139 SETTABLEKS                       R18 R17 K28 ["Cursor"]
      141 SETTABLEKS                       R5 R17 K29 ["MouseEnter"]
      143 SETTABLEKS                       R6 R17 K30 ["MouseLeave"]
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K24 ["HoverArea"]
      148 GETTABLEKS                       R15 R0 K9 ["IsDragging"]
      150 JUMPIFNOT                        R15 ; [+10]
      151 GETUPVAL                         R15 5
      152 GETTABLEKS                       R15 R15 K13 ["createElement"]
      154 GETUPVAL                         R16 9
      155 DUPTABLE                         R17 K34 [{"OnDragMoved", "OnDragEnded"}]
      156 SETTABLEKS                       R7 R17 K32 ["OnDragMoved"]
      158 SETTABLEKS                       R8 R17 K33 ["OnDragEnded"]
      160 CALL                             R15 2 1
      161 SETTABLEKS                       R15 R14 K25 ["DragListener"]
      163 GETUPVAL                         R15 5
      164 GETTABLEKS                       R15 R15 K13 ["createElement"]
      166 LOADK                            R16 K14 ["ImageButton"]
      167 NEWTABLE                         R17 2 0
      169 GETUPVAL                         R18 5
      170 GETTABLEKS                       R18 R18 K20 ["Tag"]
      172 GETUPVAL                         R19 6
      173 LOADK                            R20 K35 ["CurvePoint"]
      174 MOVE                             R21 R10
      175 CALL                             R19 2 1
      176 SETTABLE                         R19 R17 R18
      177 GETUPVAL                         R18 5
      178 GETTABLEKS                       R18 R18 K22 ["Event"]
      180 GETTABLEKS                       R18 R18 K23 ["InputBegan"]
      182 SETTABLE                         R9 R17 R18
      183 CALL                             R15 2 1
      184 SETTABLEKS                       R15 R14 K26 ["Inner"]
      186 CALL                             R11 3 1
      187 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AttenuationCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useMemo"]
       22 GETTABLEKS                       R5 R2 K11 ["useState"]
       24 GETIMPORT                        R6 K6 [require]
       26 GETTABLEKS                       R7 R1 K7 ["Packages"]
       28 GETTABLEKS                       R7 R7 K12 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K13 ["Styling"]
       33 GETTABLEKS                       R7 R7 K14 ["joinTags"]
       35 GETTABLEKS                       R8 R6 K15 ["UI"]
       37 GETTABLEKS                       R8 R8 K16 ["DragListener"]
       39 GETTABLEKS                       R9 R6 K15 ["UI"]
       41 GETTABLEKS                       R9 R9 K17 ["HoverArea"]
       43 GETTABLEKS                       R10 R6 K18 ["Util"]
       45 GETTABLEKS                       R10 R10 K19 ["isInputMainPress"]
       47 GETIMPORT                        R11 K6 [require]
       49 GETTABLEKS                       R12 R1 K20 ["Src"]
       51 GETTABLEKS                       R12 R12 K21 ["Resources"]
       53 GETTABLEKS                       R12 R12 K22 ["PluginStyles"]
       55 CALL                             R11 1 1
       56 LOADK                            R14 K23 ["CursorOpenedHand"]
       57 NAMECALL                         R12 R11 K24 ["GetAttribute"]
       59 CALL                             R12 2 1
       60 GETIMPORT                        R13 K6 [require]
       62 GETTABLEKS                       R14 R0 K25 ["PlotRectUtil"]
       64 CALL                             R13 1 1
       65 DUPCLOSURE                       R14 K26 [PROTO_7]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R8
       76 RETURN                           R14 1
