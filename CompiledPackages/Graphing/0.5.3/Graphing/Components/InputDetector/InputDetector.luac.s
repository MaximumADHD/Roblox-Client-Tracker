PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["mouseToPlot"]
        3 GETTABLEKS                       R3 R1 K1 ["Position"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R3 R4 ; [+19]
       12 GETUPVAL                         R3 1
       13 LOADB                            R4 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K6 ["OnHoverStart"]
       18 JUMPIFNOT                        R3 ; [+54]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K6 ["OnHoverStart"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K0 ["mouseToPlot"]
       25 GETTABLEKS                       R5 R1 K1 ["Position"]
       27 CALL                             R4 1 -1
       28 CALL                             R3 -1 0
       29 RETURN                           R0 0
       30 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       32 GETIMPORT                        R4 K8 [Enum.UserInputType.MouseButton1]
       34 JUMPIFEQ                         R3 R4 ; [+7]
       36 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       38 GETIMPORT                        R4 K10 [Enum.UserInputType.Touch]
       40 JUMPIFNOTEQ                      R3 R4 ; [+14]
       42 GETUPVAL                         R3 3
       43 LOADB                            R4 0
       44 CALL                             R3 1 0
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R3 R4 K11 ["OnPress"]
       48 JUMPIFNOT                        R3 ; [+24]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R3 R4 K11 ["OnPress"]
       52 MOVE                             R4 R2
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       57 GETIMPORT                        R4 K13 [Enum.UserInputType.MouseButton2]
       59 JUMPIFNOTEQ                      R3 R4 ; [+13]
       61 GETUPVAL                         R3 4
       62 LOADB                            R4 0
       63 CALL                             R3 1 0
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R3 R4 K14 ["OnRightPress"]
       67 JUMPIFNOT                        R3 ; [+5]
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R3 R4 K14 ["OnRightPress"]
       71 MOVE                             R4 R2
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnHoverMoved"]
        3 JUMPIFNOT                        R2 ; [+19]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+17]
        6 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        8 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R2 R3 ; [+12]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["OnHoverMoved"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K5 ["mouseToPlot"]
       18 GETTABLEKS                       R4 R1 K6 ["Position"]
       20 CALL                             R3 1 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K7 ["OnScroll"]
       26 JUMPIFNOT                        R2 ; [+14]
       27 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
       29 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseWheel]
       31 JUMPIFNOTEQ                      R2 R3 ; [+9]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K7 ["OnScroll"]
       36 GETTABLEKS                       R4 R1 K6 ["Position"]
       38 GETTABLEKS                       R3 R4 K10 ["Z"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["mouseToPlot"]
        3 GETTABLEKS                       R3 R1 K1 ["Position"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R3 R4 ; [+14]
       12 GETUPVAL                         R3 1
       13 LOADB                            R4 0
       14 CALL                             R3 1 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K6 ["OnHoverEnded"]
       18 JUMPIFNOT                        R3 ; [+69]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K6 ["OnHoverEnded"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       27 GETIMPORT                        R4 K8 [Enum.UserInputType.MouseButton1]
       29 JUMPIFEQ                         R3 R4 ; [+7]
       31 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       33 GETIMPORT                        R4 K10 [Enum.UserInputType.Touch]
       35 JUMPIFNOTEQ                      R3 R4 ; [+24]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K11 ["OnRelease"]
       40 JUMPIFNOT                        R3 ; [+5]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R3 R4 K11 ["OnRelease"]
       44 MOVE                             R4 R2
       45 CALL                             R3 1 0
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K12 ["OnClick"]
       49 JUMPIFNOT                        R3 ; [+38]
       50 GETUPVAL                         R3 3
       51 JUMPIFNOT                        R3 ; [+36]
       52 GETUPVAL                         R3 4
       53 JUMPIF                           R3 ; [+34]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R3 R4 K12 ["OnClick"]
       57 MOVE                             R4 R2
       58 CALL                             R3 1 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       62 GETIMPORT                        R4 K14 [Enum.UserInputType.MouseButton2]
       64 JUMPIFNOTEQ                      R3 R4 ; [+23]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R3 R4 K15 ["OnRightRelease"]
       69 JUMPIFNOT                        R3 ; [+5]
       70 GETUPVAL                         R4 2
       71 GETTABLEKS                       R3 R4 K15 ["OnRightRelease"]
       73 MOVE                             R4 R2
       74 CALL                             R3 1 0
       75 GETUPVAL                         R4 2
       76 GETTABLEKS                       R3 R4 K16 ["OnRightClick"]
       78 JUMPIFNOT                        R3 ; [+9]
       79 GETUPVAL                         R3 3
       80 JUMPIFNOT                        R3 ; [+7]
       81 GETUPVAL                         R3 5
       82 JUMPIF                           R3 ; [+5]
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R3 R4 K16 ["OnRightClick"]
       86 MOVE                             R4 R2
       87 CALL                             R3 1 0
       88 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K2 [Vector2.zero]
        5 GETTABLEKS                       R4 R0 K3 ["Parent"]
        7 JUMPIFNOT                        R4 ; [+5]
        8 GETTABLEKS                       R4 R0 K3 ["Parent"]
       10 GETTABLEKS                       R3 R4 K3 ["Parent"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFNOT                        R3 ; [+17]
       15 LOADK                            R6 K4 ["GuiObject"]
       16 NAMECALL                         R4 R3 K5 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+12]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K6 ["AnchorPoint"]
       23 JUMPIF                           R4 ; [+2]
       24 GETTABLEKS                       R4 R3 K6 ["AnchorPoint"]
       26 GETTABLEKS                       R5 R3 K7 ["AbsolutePosition"]
       28 GETTABLEKS                       R7 R3 K8 ["AbsoluteSize"]
       30 MUL                              R6 R7 R4
       31 ADD                              R2 R5 R6
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R5 R6 K9 ["absToView"]
       35 MOVE                             R6 R1
       36 CALL                             R5 1 1
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K9 ["absToView"]
       40 MOVE                             R7 R2
       41 CALL                             R6 1 1
       42 SUB                              R4 R5 R6
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R5 R6 K10 ["TreatMouseAsAnchor"]
       46 JUMPIFNOT                        R5 ; [+2]
       47 GETIMPORT                        R4 K2 [Vector2.zero]
       49 GETUPVAL                         R5 3
       50 MOVE                             R6 R4
       51 CALL                             R5 1 0
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R5 R6 K11 ["OnDragStart"]
       55 JUMPIFNOT                        R5 ; [+35]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R6 R7 K9 ["absToView"]
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
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R6 R7 K11 ["OnDragStart"]
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R7 R8 K19 ["viewToPlot"]
       88 MOVE                             R8 R5
       89 CALL                             R7 1 -1
       90 CALL                             R6 -1 0
       91 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["OnDragMoved"]
        9 JUMPIFNOT                        R2 ; [+36]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K1 ["absToView"]
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
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K0 ["OnDragMoved"]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R4 R5 K10 ["viewToPlot"]
       43 MOVE                             R5 R2
       44 CALL                             R4 1 -1
       45 CALL                             R3 -1 0
       46 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["OnDragEnded"]
        6 JUMPIFNOT                        R2 ; [+36]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["absToView"]
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
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R3 R4 K0 ["OnDragEnded"]
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K10 ["viewToPlot"]
       40 MOVE                             R5 R2
       41 CALL                             R4 1 -1
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K2 ["Inflate"]
        7 ORK                              R2 R3 K1 [0]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["useState"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K3 ["useState"]
       16 LOADB                            R6 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K3 ["useState"]
       21 LOADB                            R8 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K3 ["useState"]
       26 LOADB                            R10 0
       27 CALL                             R9 1 2
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R11 R12 K3 ["useState"]
       31 GETIMPORT                        R12 K6 [Vector2.zero]
       33 CALL                             R11 1 2
       34 GETUPVAL                         R14 0
       35 GETTABLEKS                       R13 R14 K7 ["useCallback"]
       37 NEWCLOSURE                       R14 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R10
       43 NEWTABLE                         R15 0 7
       45 MOVE                             R16 R4
       46 MOVE                             R17 R8
       47 MOVE                             R18 R10
       48 MOVE                             R19 R1
       49 GETTABLEKS                       R20 R0 K8 ["OnHoverStart"]
       51 GETTABLEKS                       R21 R0 K9 ["OnPress"]
       53 GETTABLEKS                       R22 R0 K10 ["OnRightPress"]
       55 SETLIST                          R15 R16 7 [1]
       57 CALL                             R13 2 1
       58 GETUPVAL                         R15 0
       59 GETTABLEKS                       R14 R15 K7 ["useCallback"]
       61 NEWCLOSURE                       R15 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R16 0 4
       67 MOVE                             R17 R3
       68 MOVE                             R18 R1
       69 GETTABLEKS                       R19 R0 K11 ["OnHoverMoved"]
       71 GETTABLEKS                       R20 R0 K12 ["OnScroll"]
       73 SETLIST                          R16 R17 4 [1]
       75 CALL                             R14 2 1
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R15 R16 K7 ["useCallback"]
       79 NEWCLOSURE                       R16 P2
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R9
       86 NEWTABLE                         R17 0 10
       88 MOVE                             R18 R4
       89 MOVE                             R19 R3
       90 MOVE                             R20 R7
       91 MOVE                             R21 R9
       92 MOVE                             R22 R1
       93 GETTABLEKS                       R23 R0 K13 ["OnHoverEnded"]
       95 GETTABLEKS                       R24 R0 K14 ["OnClick"]
       97 GETTABLEKS                       R25 R0 K15 ["OnRightClick"]
       99 GETTABLEKS                       R26 R0 K16 ["OnRelease"]
      101 GETTABLEKS                       R27 R0 K17 ["OnRightRelease"]
      103 SETLIST                          R17 R18 10 [1]
      105 CALL                             R15 2 1
      106 GETUPVAL                         R17 0
      107 GETTABLEKS                       R16 R17 K7 ["useCallback"]
      109 NEWCLOSURE                       R17 P3
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R12
      114 NEWTABLE                         R18 0 6
      116 MOVE                             R19 R1
      117 MOVE                             R20 R12
      118 MOVE                             R21 R6
      119 GETTABLEKS                       R22 R0 K18 ["OnDragStart"]
      121 GETTABLEKS                       R23 R0 K19 ["AnchorPoint"]
      123 GETTABLEKS                       R24 R0 K20 ["TreatMouseAsAnchor"]
      125 SETLIST                          R18 R19 6 [1]
      127 CALL                             R16 2 1
      128 GETUPVAL                         R18 0
      129 GETTABLEKS                       R17 R18 K7 ["useCallback"]
      131 NEWCLOSURE                       R18 P4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R11
      137 NEWTABLE                         R19 0 5
      139 MOVE                             R20 R1
      140 MOVE                             R21 R8
      141 MOVE                             R22 R10
      142 MOVE                             R23 R11
      143 GETTABLEKS                       R24 R0 K21 ["OnDragMoved"]
      145 SETLIST                          R19 R20 5 [1]
      147 CALL                             R17 2 1
      148 GETUPVAL                         R19 0
      149 GETTABLEKS                       R18 R19 K7 ["useCallback"]
      151 NEWCLOSURE                       R19 P5
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R11
      156 NEWTABLE                         R20 0 4
      158 MOVE                             R21 R1
      159 MOVE                             R22 R6
      160 GETTABLEKS                       R23 R0 K22 ["OnDragEnded"]
      162 MOVE                             R24 R11
      163 SETLIST                          R20 R21 4 [1]
      165 CALL                             R18 2 1
      166 GETUPVAL                         R20 0
      167 GETTABLEKS                       R19 R20 K23 ["createElement"]
      169 LOADK                            R20 K24 ["Frame"]
      170 NEWTABLE                         R21 16 0
      172 GETIMPORT                        R22 K26 [Vector2.new]
      174 LOADK                            R23 K27 [0.5]
      175 LOADK                            R24 K27 [0.5]
      176 CALL                             R22 2 1
      177 SETTABLEKS                       R22 R21 K19 ["AnchorPoint"]
      179 GETIMPORT                        R22 K30 [UDim2.fromScale]
      181 LOADK                            R23 K27 [0.5]
      182 LOADK                            R24 K27 [0.5]
      183 CALL                             R22 2 1
      184 SETTABLEKS                       R22 R21 K31 ["Position"]
      186 GETIMPORT                        R22 K32 [UDim2.new]
      188 LOADN                            R23 1
      189 MULK                             R24 R2 K33 [2]
      190 LOADN                            R25 1
      191 MULK                             R26 R2 K33 [2]
      192 CALL                             R22 4 1
      193 SETTABLEKS                       R22 R21 K34 ["Size"]
      195 LOADN                            R22 1
      196 SETTABLEKS                       R22 R21 K35 ["BackgroundTransparency"]
      198 LOADN                            R22 0
      199 SETTABLEKS                       R22 R21 K36 ["BorderSizePixel"]
      201 GETTABLEKS                       R22 R0 K37 ["ZIndex"]
      203 SETTABLEKS                       R22 R21 K37 ["ZIndex"]
      205 GETUPVAL                         R24 0
      206 GETTABLEKS                       R23 R24 K38 ["Event"]
      208 GETTABLEKS                       R22 R23 K39 ["InputBegan"]
      210 SETTABLE                         R13 R21 R22
      211 GETUPVAL                         R24 0
      212 GETTABLEKS                       R23 R24 K38 ["Event"]
      214 GETTABLEKS                       R22 R23 K40 ["InputChanged"]
      216 SETTABLE                         R14 R21 R22
      217 GETUPVAL                         R24 0
      218 GETTABLEKS                       R23 R24 K38 ["Event"]
      220 GETTABLEKS                       R22 R23 K41 ["InputEnded"]
      222 SETTABLE                         R15 R21 R22
      223 DUPTABLE                         R22 K43 [{"DragDetector"}]
      224 GETUPVAL                         R24 0
      225 GETTABLEKS                       R23 R24 K23 ["createElement"]
      227 LOADK                            R24 K44 ["UIDragDetector"]
      228 NEWTABLE                         R25 8 0
      230 GETIMPORT                        R26 K48 [Enum.UIDragDetectorDragStyle.Scriptable]
      232 SETTABLEKS                       R26 R25 K49 ["DragStyle"]
      234 GETTABLEKS                       R26 R1 K50 ["getViewport"]
      236 CALL                             R26 0 1
      237 SETTABLEKS                       R26 R25 K51 ["ReferenceUIInstance"]
      239 GETUPVAL                         R28 0
      240 GETTABLEKS                       R27 R28 K38 ["Event"]
      242 GETTABLEKS                       R26 R27 K52 ["DragStart"]
      244 SETTABLE                         R16 R25 R26
      245 GETUPVAL                         R28 0
      246 GETTABLEKS                       R27 R28 K38 ["Event"]
      248 GETTABLEKS                       R26 R27 K53 ["DragContinue"]
      250 SETTABLE                         R17 R25 R26
      251 GETUPVAL                         R28 0
      252 GETTABLEKS                       R27 R28 K38 ["Event"]
      254 GETTABLEKS                       R26 R27 K54 ["DragEnd"]
      256 SETTABLE                         R18 R25 R26
      257 CALL                             R23 2 1
      258 SETTABLEKS                       R23 R22 K42 ["DragDetector"]
      260 CALL                             R19 3 -1
      261 RETURN                           R19 -1

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
       19 DUPCLOSURE                       R4 K9 [PROTO_6]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 SETGLOBAL                        R4 K10 ["InputDetector"]
       24 GETGLOBAL                        R4 K10 ["InputDetector"]
       26 RETURN                           R4 1
