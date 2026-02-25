PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plotToView"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Position"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnMoved"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 GETTABLEKS                       R3 R0 K4 ["Position"]
        8 GETTABLEKS                       R2 R3 K5 ["X"]
       10 GETTABLEKS                       R4 R0 K4 ["Position"]
       12 GETTABLEKS                       R3 R4 K6 ["Y"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["OnMoved"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

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
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["OnDragStart"]
        7 JUMPIFNOT                        R2 ; [+22]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K0 ["OnDragStart"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["Label"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
       18 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton2]
       20 JUMPIFNOTEQ                      R2 R3 ; [+9]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K6 ["OnRightClick"]
       25 JUMPIFNOT                        R2 ; [+4]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K6 ["OnRightClick"]
       29 CALL                             R2 0 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFNOTEQ                      R2 R3 ; [+13]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["OnScroll"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K4 ["OnScroll"]
       13 GETTABLEKS                       R4 R1 K5 ["Position"]
       15 GETTABLEKS                       R3 R4 K6 ["Z"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Context"]
        4 GETTABLEKS                       R2 R3 K1 ["Consumer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["Localization"]
       10 GETTABLEKS                       R3 R4 K3 ["Key"]
       12 GETTABLE                         R2 R1 R3
       13 GETUPVAL                         R3 2
       14 LOADB                            R4 0
       15 CALL                             R3 1 2
       16 GETTABLEKS                       R6 R0 K4 ["DragTarget"]
       18 GETTABLEKS                       R7 R0 K5 ["Label"]
       20 JUMPIFEQ                         R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 GETUPVAL                         R6 3
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R8 0 1
       30 GETTABLEKS                       R9 R0 K6 ["Position"]
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 5
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R4
       38 NEWTABLE                         R9 0 0
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 5
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          VAL R4
       44 NEWTABLE                         R10 0 0
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 5
       48 NEWCLOSURE                       R10 P3
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R11 0 1
       52 GETTABLEKS                       R12 R0 K7 ["OnMoved"]
       54 SETLIST                          R11 R12 1 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 5
       58 NEWCLOSURE                       R11 P4
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R12 0 1
       62 GETTABLEKS                       R13 R0 K8 ["OnDragEnd"]
       64 SETLIST                          R12 R13 1 [1]
       66 CALL                             R10 2 1
       67 GETUPVAL                         R11 5
       68 NEWCLOSURE                       R12 P5
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R13 0 2
       73 GETTABLEKS                       R14 R0 K9 ["OnDragStart"]
       75 GETTABLEKS                       R15 R0 K5 ["Label"]
       77 SETLIST                          R13 R14 2 [1]
       79 CALL                             R11 2 1
       80 GETUPVAL                         R12 5
       81 NEWCLOSURE                       R13 P6
       82 CAPTURE                          VAL R0
       83 NEWTABLE                         R14 0 1
       85 GETTABLEKS                       R15 R0 K10 ["OnScroll"]
       87 SETLIST                          R14 R15 1 [1]
       89 CALL                             R12 2 1
       90 LOADK                            R13 K11 [""]
       91 JUMPIFNOT                        R5 ; [+2]
       92 LOADK                            R13 K12 ["Pressed"]
       93 JUMP                             ; [+2]
       94 JUMPIFNOT                        R3 ; [+1]
       95 LOADK                            R13 K13 ["Hovered"]
       96 GETUPVAL                         R15 7
       97 GETTABLEKS                       R14 R15 K14 ["createElement"]
       99 LOADK                            R15 K15 ["ImageButton"]
      100 NEWTABLE                         R16 4 0
      102 GETIMPORT                        R17 K18 [UDim2.fromScale]
      104 GETTABLEKS                       R18 R6 K19 ["X"]
      106 GETTABLEKS                       R19 R6 K20 ["Y"]
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K6 ["Position"]
      111 GETUPVAL                         R18 7
      112 GETTABLEKS                       R17 R18 K21 ["Tag"]
      114 GETUPVAL                         R18 8
      115 LOADK                            R19 K22 ["ControlPoint"]
      116 MOVE                             R20 R13
      117 CALL                             R18 2 1
      118 SETTABLE                         R18 R16 R17
      119 GETUPVAL                         R19 7
      120 GETTABLEKS                       R18 R19 K23 ["Event"]
      122 GETTABLEKS                       R17 R18 K24 ["InputBegan"]
      124 SETTABLE                         R11 R16 R17
      125 GETUPVAL                         R19 7
      126 GETTABLEKS                       R18 R19 K23 ["Event"]
      128 GETTABLEKS                       R17 R18 K25 ["InputChanged"]
      130 SETTABLE                         R12 R16 R17
      131 DUPTABLE                         R17 K30 [{"Inner", "Text", "HoverArea", "DragListener"}]
      132 GETUPVAL                         R19 7
      133 GETTABLEKS                       R18 R19 K14 ["createElement"]
      135 LOADK                            R19 K31 ["ImageLabel"]
      136 CALL                             R18 1 1
      137 SETTABLEKS                       R18 R17 K26 ["Inner"]
      139 GETUPVAL                         R19 7
      140 GETTABLEKS                       R18 R19 K14 ["createElement"]
      142 LOADK                            R19 K32 ["TextLabel"]
      143 DUPTABLE                         R20 K33 [{"Text"}]
      144 LOADK                            R23 K5 ["Label"]
      145 LOADK                            R25 K34 ["ControlPoint_"]
      146 GETTABLEKS                       R26 R0 K5 ["Label"]
      148 CONCAT                           R24 R25 R26
      149 NAMECALL                         R21 R2 K35 ["getText"]
      151 CALL                             R21 3 1
      152 SETTABLEKS                       R21 R20 K27 ["Text"]
      154 CALL                             R18 2 1
      155 SETTABLEKS                       R18 R17 K27 ["Text"]
      157 GETUPVAL                         R19 7
      158 GETTABLEKS                       R18 R19 K14 ["createElement"]
      160 GETUPVAL                         R19 9
      161 DUPTABLE                         R20 K39 [{"Cursor", "MouseEnter", "MouseLeave"}]
      162 GETUPVAL                         R21 10
      163 SETTABLEKS                       R21 R20 K36 ["Cursor"]
      165 SETTABLEKS                       R7 R20 K37 ["MouseEnter"]
      167 SETTABLEKS                       R8 R20 K38 ["MouseLeave"]
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K28 ["HoverArea"]
      172 MOVE                             R18 R5
      173 JUMPIFNOT                        R18 ; [+10]
      174 GETUPVAL                         R19 7
      175 GETTABLEKS                       R18 R19 K14 ["createElement"]
      177 GETUPVAL                         R19 11
      178 DUPTABLE                         R20 K42 [{"OnDragMoved", "OnDragEnded"}]
      179 SETTABLEKS                       R9 R20 K40 ["OnDragMoved"]
      181 SETTABLEKS                       R10 R20 K41 ["OnDragEnded"]
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K29 ["DragListener"]
      186 CALL                             R14 3 -1
      187 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETTABLEKS                       R4 R1 K10 ["useMemo"]
       20 GETTABLEKS                       R5 R1 K11 ["useState"]
       22 GETIMPORT                        R6 K5 [require]
       24 GETTABLEKS                       R8 R0 K6 ["Packages"]
       26 GETTABLEKS                       R7 R8 K12 ["Framework"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       31 GETTABLEKS                       R9 R6 K14 ["Styling"]
       33 GETTABLEKS                       R8 R9 K15 ["joinTags"]
       35 GETTABLEKS                       R10 R6 K16 ["UI"]
       37 GETTABLEKS                       R9 R10 K17 ["DragListener"]
       39 GETTABLEKS                       R11 R6 K16 ["UI"]
       41 GETTABLEKS                       R10 R11 K18 ["HoverArea"]
       43 GETTABLEKS                       R12 R6 K19 ["Util"]
       45 GETTABLEKS                       R11 R12 K20 ["isInputMainPress"]
       47 GETIMPORT                        R12 K5 [require]
       49 GETTABLEKS                       R15 R0 K21 ["Src"]
       51 GETTABLEKS                       R14 R15 K22 ["Resources"]
       53 GETTABLEKS                       R13 R14 K23 ["PluginStyles"]
       55 CALL                             R12 1 1
       56 LOADK                            R15 K24 ["CursorOpenedHand"]
       57 NAMECALL                         R13 R12 K25 ["GetAttribute"]
       59 CALL                             R13 2 1
       60 GETIMPORT                        R14 K5 [require]
       62 GETTABLEKS                       R16 R0 K21 ["Src"]
       64 GETTABLEKS                       R15 R16 K26 ["Types"]
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K5 [require]
       69 GETTABLEKS                       R18 R0 K21 ["Src"]
       71 GETTABLEKS                       R17 R18 K19 ["Util"]
       73 GETTABLEKS                       R16 R17 K27 ["PlotUtil"]
       75 CALL                             R15 1 1
       76 DUPCLOSURE                       R16 K28 [PROTO_7]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R9
       89 RETURN                           R16 1
