PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R2 R0 K1 ["Y"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["XSnap"]
        7 JUMPIFNOT                        R3 ; [+9]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["roundToNearest"]
       11 MOVE                             R4 R1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K2 ["XSnap"]
       15 CALL                             R3 2 1
       16 MOVE                             R1 R3
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["YSnap"]
       20 JUMPIFNOT                        R3 ; [+9]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["roundToNearest"]
       24 MOVE                             R4 R2
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K4 ["YSnap"]
       28 CALL                             R3 2 1
       29 MOVE                             R2 R3
       30 GETIMPORT                        R3 K7 [Vector2.new]
       32 MOVE                             R4 R1
       33 MOVE                             R5 R2
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["mouseToPlot"]
        4 GETTABLEKS                       R4 R1 K1 ["Position"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 1
        8 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       10 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseMovement]
       12 JUMPIFNOTEQ                      R3 R4 ; [+20]
       14 GETUPVAL                         R3 2
       15 LOADB                            R4 1
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K6 ["OnHoverStart"]
       20 JUMPIFNOT                        R3 ; [+57]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K6 ["OnHoverStart"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K0 ["mouseToPlot"]
       27 GETTABLEKS                       R5 R1 K1 ["Position"]
       29 CALL                             R4 1 1
       30 MOVE                             R5 R1
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       35 GETIMPORT                        R4 K8 [Enum.UserInputType.MouseButton1]
       37 JUMPIFEQ                         R3 R4 ; [+7]
       39 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       41 GETIMPORT                        R4 K10 [Enum.UserInputType.Touch]
       43 JUMPIFNOTEQ                      R3 R4 ; [+15]
       45 GETUPVAL                         R3 4
       46 LOADB                            R4 0
       47 CALL                             R3 1 0
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R3 R3 K11 ["OnPress"]
       51 JUMPIFNOT                        R3 ; [+26]
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K11 ["OnPress"]
       55 MOVE                             R4 R2
       56 MOVE                             R5 R1
       57 CALL                             R3 2 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       61 GETIMPORT                        R4 K13 [Enum.UserInputType.MouseButton2]
       63 JUMPIFNOTEQ                      R3 R4 ; [+14]
       65 GETUPVAL                         R3 5
       66 LOADB                            R4 0
       67 CALL                             R3 1 0
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R3 R3 K14 ["OnRightPress"]
       71 JUMPIFNOT                        R3 ; [+6]
       72 GETUPVAL                         R3 3
       73 GETTABLEKS                       R3 R3 K14 ["OnRightPress"]
       75 MOVE                             R4 R2
       76 MOVE                             R5 R1
       77 CALL                             R3 2 0
       78 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnHoverMoved"]
        3 JUMPIFNOT                        R2 ; [+22]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+20]
        6 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        8 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R2 R3 ; [+15]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["OnHoverMoved"]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K5 ["mouseToPlot"]
       19 GETTABLEKS                       R5 R1 K6 ["Position"]
       21 CALL                             R4 1 -1
       22 CALL                             R3 -1 1
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K7 ["OnScroll"]
       29 JUMPIFNOT                        R2 ; [+15]
       30 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
       32 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseWheel]
       34 JUMPIFNOTEQ                      R2 R3 ; [+10]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K7 ["OnScroll"]
       39 GETTABLEKS                       R3 R1 K6 ["Position"]
       41 GETTABLEKS                       R3 R3 K10 ["Z"]
       43 MOVE                             R4 R1
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["mouseToPlot"]
        4 GETTABLEKS                       R4 R1 K1 ["Position"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 1
        8 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       10 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseMovement]
       12 JUMPIFNOTEQ                      R3 R4 ; [+15]
       14 GETUPVAL                         R3 2
       15 LOADB                            R4 0
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K6 ["OnHoverEnded"]
       20 JUMPIFNOT                        R3 ; [+74]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K6 ["OnHoverEnded"]
       24 MOVE                             R4 R2
       25 MOVE                             R5 R1
       26 CALL                             R3 2 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       30 GETIMPORT                        R4 K8 [Enum.UserInputType.MouseButton1]
       32 JUMPIFEQ                         R3 R4 ; [+7]
       34 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       36 GETIMPORT                        R4 K10 [Enum.UserInputType.Touch]
       38 JUMPIFNOTEQ                      R3 R4 ; [+26]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K11 ["OnRelease"]
       43 JUMPIFNOT                        R3 ; [+6]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K11 ["OnRelease"]
       47 MOVE                             R4 R2
       48 MOVE                             R5 R1
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 3
       51 GETTABLEKS                       R3 R3 K12 ["OnClick"]
       53 JUMPIFNOT                        R3 ; [+41]
       54 GETUPVAL                         R3 4
       55 JUMPIFNOT                        R3 ; [+39]
       56 GETUPVAL                         R3 5
       57 JUMPIF                           R3 ; [+37]
       58 GETUPVAL                         R3 3
       59 GETTABLEKS                       R3 R3 K12 ["OnClick"]
       61 MOVE                             R4 R2
       62 MOVE                             R5 R1
       63 CALL                             R3 2 0
       64 RETURN                           R0 0
       65 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       67 GETIMPORT                        R4 K14 [Enum.UserInputType.MouseButton2]
       69 JUMPIFNOTEQ                      R3 R4 ; [+25]
       71 GETUPVAL                         R3 3
       72 GETTABLEKS                       R3 R3 K15 ["OnRightRelease"]
       74 JUMPIFNOT                        R3 ; [+6]
       75 GETUPVAL                         R3 3
       76 GETTABLEKS                       R3 R3 K15 ["OnRightRelease"]
       78 MOVE                             R4 R2
       79 MOVE                             R5 R1
       80 CALL                             R3 2 0
       81 GETUPVAL                         R3 3
       82 GETTABLEKS                       R3 R3 K16 ["OnRightClick"]
       84 JUMPIFNOT                        R3 ; [+10]
       85 GETUPVAL                         R3 4
       86 JUMPIFNOT                        R3 ; [+8]
       87 GETUPVAL                         R3 6
       88 JUMPIF                           R3 ; [+6]
       89 GETUPVAL                         R3 3
       90 GETTABLEKS                       R3 R3 K16 ["OnRightClick"]
       92 MOVE                             R4 R2
       93 MOVE                             R5 R1
       94 CALL                             R3 2 0
       95 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K2 [Vector2.zero]
        5 GETTABLEKS                       R4 R0 K3 ["Parent"]
        7 JUMPIFNOT                        R4 ; [+5]
        8 GETTABLEKS                       R3 R0 K3 ["Parent"]
       10 GETTABLEKS                       R3 R3 K3 ["Parent"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFNOT                        R3 ; [+17]
       15 LOADK                            R6 K4 ["GuiObject"]
       16 NAMECALL                         R4 R3 K5 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+12]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["AnchorPoint"]
       23 JUMPIF                           R4 ; [+2]
       24 GETTABLEKS                       R4 R3 K6 ["AnchorPoint"]
       26 GETTABLEKS                       R5 R3 K7 ["AbsolutePosition"]
       28 GETTABLEKS                       R7 R3 K8 ["AbsoluteSize"]
       30 MUL                              R6 R7 R4
       31 ADD                              R2 R5 R6
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K9 ["absToView"]
       35 MOVE                             R6 R1
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K9 ["absToView"]
       40 MOVE                             R7 R2
       41 CALL                             R6 1 1
       42 SUB                              R4 R5 R6
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K10 ["TreatMouseAsAnchor"]
       46 JUMPIFNOT                        R5 ; [+2]
       47 GETIMPORT                        R4 K2 [Vector2.zero]
       49 GETUPVAL                         R5 3
       50 MOVE                             R6 R4
       51 CALL                             R5 1 0
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K11 ["OnDragStart"]
       55 JUMPIFNOT                        R5 ; [+37]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K9 ["absToView"]
       59 MOVE                             R7 R1
       60 CALL                             R6 1 1
       61 SUB                              R5 R6 R4
       62 GETIMPORT                        R6 K13 [Vector2.new]
       64 GETTABLEKS                       R8 R5 K14 ["X"]
       66 LOADN                            R9 0
       67 LOADN                            R10 1
       68 FASTCALL                         MATH_CLAMP ; [+2]
       69 GETIMPORT                        R7 K17 [math.clamp]
       71 CALL                             R7 3 1
       72 GETTABLEKS                       R9 R5 K18 ["Y"]
       74 LOADN                            R10 0
       75 LOADN                            R11 1
       76 FASTCALL                         MATH_CLAMP ; [+2]
       77 GETIMPORT                        R8 K17 [math.clamp]
       79 CALL                             R8 3 1
       80 CALL                             R6 2 1
       81 MOVE                             R5 R6
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K11 ["OnDragStart"]
       85 GETUPVAL                         R7 4
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R8 R8 K19 ["viewToPlot"]
       89 MOVE                             R9 R5
       90 CALL                             R8 1 -1
       91 CALL                             R7 -1 -1
       92 CALL                             R6 -1 0
       93 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["OnDragMoved"]
        9 JUMPIFNOT                        R2 ; [+38]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K1 ["absToView"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 4
       16 SUB                              R2 R3 R4
       17 GETIMPORT                        R3 K4 [Vector2.new]
       19 GETTABLEKS                       R5 R2 K5 ["X"]
       21 LOADN                            R6 0
       22 LOADN                            R7 1
       23 FASTCALL                         MATH_CLAMP ; [+2]
       24 GETIMPORT                        R4 K8 [math.clamp]
       26 CALL                             R4 3 1
       27 GETTABLEKS                       R6 R2 K9 ["Y"]
       29 LOADN                            R7 0
       30 LOADN                            R8 1
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R5 K8 [math.clamp]
       34 CALL                             R5 3 1
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K0 ["OnDragMoved"]
       40 GETUPVAL                         R4 5
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K10 ["viewToPlot"]
       44 MOVE                             R6 R2
       45 CALL                             R5 1 -1
       46 CALL                             R4 -1 -1
       47 CALL                             R3 -1 0
       48 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["OnDragEnded"]
        6 JUMPIFNOT                        R2 ; [+38]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["absToView"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 SUB                              R2 R3 R4
       14 GETIMPORT                        R3 K4 [Vector2.new]
       16 GETTABLEKS                       R5 R2 K5 ["X"]
       18 LOADN                            R6 0
       19 LOADN                            R7 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R4 K8 [math.clamp]
       23 CALL                             R4 3 1
       24 GETTABLEKS                       R6 R2 K9 ["Y"]
       26 LOADN                            R7 0
       27 LOADN                            R8 1
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R5 K8 [math.clamp]
       31 CALL                             R5 3 1
       32 CALL                             R3 2 1
       33 MOVE                             R2 R3
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K0 ["OnDragEnded"]
       37 GETUPVAL                         R4 4
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K10 ["viewToPlot"]
       41 MOVE                             R6 R2
       42 CALL                             R5 1 -1
       43 CALL                             R4 -1 -1
       44 CALL                             R3 -1 0
       45 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K2 ["Inflate"]
        7 ORK                              R2 R3 K1 [0]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["useState"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K3 ["useState"]
       16 LOADB                            R6 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K3 ["useState"]
       21 LOADB                            R8 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K3 ["useState"]
       26 LOADB                            R10 0
       27 CALL                             R9 1 2
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K3 ["useState"]
       31 GETIMPORT                        R12 K6 [Vector2.zero]
       33 CALL                             R11 1 2
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       37 NEWCLOSURE                       R14 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 NEWTABLE                         R15 0 2
       42 GETTABLEKS                       R16 R0 K8 ["XSnap"]
       44 GETTABLEKS                       R17 R0 K9 ["YSnap"]
       46 SETLIST                          R15 R16 2 [1]
       48 CALL                             R13 2 1
       49 GETUPVAL                         R14 0
       50 GETTABLEKS                       R14 R14 K7 ["useCallback"]
       52 NEWCLOSURE                       R15 P1
       53 CAPTURE                          VAL R13
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R10
       59 NEWTABLE                         R16 0 8
       61 MOVE                             R17 R4
       62 MOVE                             R18 R8
       63 MOVE                             R19 R10
       64 MOVE                             R20 R1
       65 GETTABLEKS                       R21 R0 K10 ["OnHoverStart"]
       67 GETTABLEKS                       R22 R0 K11 ["OnPress"]
       69 GETTABLEKS                       R23 R0 K12 ["OnRightPress"]
       71 MOVE                             R24 R13
       72 SETLIST                          R16 R17 8 [1]
       74 CALL                             R14 2 1
       75 GETUPVAL                         R15 0
       76 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       78 NEWCLOSURE                       R16 P2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R1
       83 NEWTABLE                         R17 0 5
       85 MOVE                             R18 R3
       86 MOVE                             R19 R1
       87 GETTABLEKS                       R20 R0 K13 ["OnHoverMoved"]
       89 GETTABLEKS                       R21 R0 K14 ["OnScroll"]
       91 MOVE                             R22 R13
       92 SETLIST                          R17 R18 5 [1]
       94 CALL                             R15 2 1
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R16 R16 K7 ["useCallback"]
       98 NEWCLOSURE                       R17 P3
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R9
      106 NEWTABLE                         R18 0 11
      108 MOVE                             R19 R4
      109 MOVE                             R20 R3
      110 MOVE                             R21 R7
      111 MOVE                             R22 R9
      112 MOVE                             R23 R1
      113 GETTABLEKS                       R24 R0 K15 ["OnHoverEnded"]
      115 GETTABLEKS                       R25 R0 K16 ["OnClick"]
      117 GETTABLEKS                       R26 R0 K17 ["OnRightClick"]
      119 GETTABLEKS                       R27 R0 K18 ["OnRelease"]
      121 GETTABLEKS                       R28 R0 K19 ["OnRightRelease"]
      123 MOVE                             R29 R13
      124 SETLIST                          R18 R19 11 [1]
      126 CALL                             R16 2 1
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      130 NEWCLOSURE                       R18 P4
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R13
      136 NEWTABLE                         R19 0 7
      138 MOVE                             R20 R1
      139 MOVE                             R21 R12
      140 MOVE                             R22 R6
      141 GETTABLEKS                       R23 R0 K20 ["OnDragStart"]
      143 GETTABLEKS                       R24 R0 K21 ["AnchorPoint"]
      145 GETTABLEKS                       R25 R0 K22 ["TreatMouseAsAnchor"]
      147 MOVE                             R26 R13
      148 SETLIST                          R19 R20 7 [1]
      150 CALL                             R17 2 1
      151 GETUPVAL                         R18 0
      152 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      154 NEWCLOSURE                       R19 P5
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R13
      161 NEWTABLE                         R20 0 6
      163 MOVE                             R21 R1
      164 MOVE                             R22 R8
      165 MOVE                             R23 R10
      166 MOVE                             R24 R11
      167 GETTABLEKS                       R25 R0 K23 ["OnDragMoved"]
      169 MOVE                             R26 R13
      170 SETLIST                          R20 R21 6 [1]
      172 CALL                             R18 2 1
      173 GETUPVAL                         R19 0
      174 GETTABLEKS                       R19 R19 K7 ["useCallback"]
      176 NEWCLOSURE                       R20 P6
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R13
      182 NEWTABLE                         R21 0 5
      184 MOVE                             R22 R1
      185 MOVE                             R23 R6
      186 GETTABLEKS                       R24 R0 K24 ["OnDragEnded"]
      188 MOVE                             R25 R11
      189 MOVE                             R26 R13
      190 SETLIST                          R21 R22 5 [1]
      192 CALL                             R19 2 1
      193 GETUPVAL                         R20 0
      194 GETTABLEKS                       R20 R20 K25 ["createElement"]
      196 LOADK                            R21 K26 ["Frame"]
      197 NEWTABLE                         R22 16 0
      199 GETIMPORT                        R23 K28 [Vector2.new]
      201 LOADK                            R24 K29 [0.5]
      202 LOADK                            R25 K29 [0.5]
      203 CALL                             R23 2 1
      204 SETTABLEKS                       R23 R22 K21 ["AnchorPoint"]
      206 GETIMPORT                        R23 K32 [UDim2.fromScale]
      208 LOADK                            R24 K29 [0.5]
      209 LOADK                            R25 K29 [0.5]
      210 CALL                             R23 2 1
      211 SETTABLEKS                       R23 R22 K33 ["Position"]
      213 GETIMPORT                        R23 K34 [UDim2.new]
      215 LOADN                            R24 1
      216 MULK                             R25 R2 K35 [2]
      217 LOADN                            R26 1
      218 MULK                             R27 R2 K35 [2]
      219 CALL                             R23 4 1
      220 SETTABLEKS                       R23 R22 K36 ["Size"]
      222 GETTABLEKS                       R24 R0 K37 ["DebugColor3"]
      224 JUMPIFEQKNIL                     R24 ; [+3]
      226 LOADN                            R23 0
      227 JUMP                             ; [+1]
      228 LOADN                            R23 1
      229 SETTABLEKS                       R23 R22 K38 ["BackgroundTransparency"]
      231 GETTABLEKS                       R23 R0 K37 ["DebugColor3"]
      233 SETTABLEKS                       R23 R22 K39 ["BackgroundColor3"]
      235 LOADN                            R23 0
      236 SETTABLEKS                       R23 R22 K40 ["BorderSizePixel"]
      238 GETTABLEKS                       R23 R0 K41 ["ZIndex"]
      240 SETTABLEKS                       R23 R22 K41 ["ZIndex"]
      242 GETUPVAL                         R23 0
      243 GETTABLEKS                       R23 R23 K42 ["Event"]
      245 GETTABLEKS                       R23 R23 K43 ["InputBegan"]
      247 SETTABLE                         R14 R22 R23
      248 GETUPVAL                         R23 0
      249 GETTABLEKS                       R23 R23 K42 ["Event"]
      251 GETTABLEKS                       R23 R23 K44 ["InputChanged"]
      253 SETTABLE                         R15 R22 R23
      254 GETUPVAL                         R23 0
      255 GETTABLEKS                       R23 R23 K42 ["Event"]
      257 GETTABLEKS                       R23 R23 K45 ["InputEnded"]
      259 SETTABLE                         R16 R22 R23
      260 DUPTABLE                         R23 K47 [{"DragDetector"}]
      261 GETUPVAL                         R24 0
      262 GETTABLEKS                       R24 R24 K25 ["createElement"]
      264 LOADK                            R25 K48 ["UIDragDetector"]
      265 NEWTABLE                         R26 8 0
      267 GETIMPORT                        R27 K52 [Enum.UIDragDetectorDragStyle.Scriptable]
      269 SETTABLEKS                       R27 R26 K53 ["DragStyle"]
      271 GETTABLEKS                       R27 R1 K54 ["getViewport"]
      273 CALL                             R27 0 1
      274 SETTABLEKS                       R27 R26 K55 ["ReferenceUIInstance"]
      276 GETUPVAL                         R27 0
      277 GETTABLEKS                       R27 R27 K42 ["Event"]
      279 GETTABLEKS                       R27 R27 K56 ["DragStart"]
      281 SETTABLE                         R17 R26 R27
      282 GETUPVAL                         R27 0
      283 GETTABLEKS                       R27 R27 K42 ["Event"]
      285 GETTABLEKS                       R27 R27 K57 ["DragContinue"]
      287 SETTABLE                         R18 R26 R27
      288 GETUPVAL                         R27 0
      289 GETTABLEKS                       R27 R27 K42 ["Event"]
      291 GETTABLEKS                       R27 R27 K58 ["DragEnd"]
      293 SETTABLE                         R19 R26 R27
      294 CALL                             R24 2 1
      295 SETTABLEKS                       R24 R23 K46 ["DragDetector"]
      297 CALL                             R20 3 -1
      298 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["MathUtil"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_7]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 SETGLOBAL                        R5 K12 ["InputDetector"]
       32 GETGLOBAL                        R5 K12 ["InputDetector"]
       34 RETURN                           R5 1
