PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R1 K2 ["isDragging"]
        8 JUMPIF                           R2 ; [+3]
        9 GETTABLEKS                       R2 R1 K3 ["isDragStarting"]
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 DUPTABLE                         R4 K5 [{"isHovered"}]
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K4 ["isHovered"]
       18 NAMECALL                         R2 R2 K6 ["setState"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K7 ["OnHover"]
       23 CALL                             R2 0 0
       24 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R1 K2 ["isDragging"]
        8 JUMPIF                           R2 ; [+3]
        9 GETTABLEKS                       R2 R1 K3 ["isDragStarting"]
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 DUPTABLE                         R4 K5 [{"isHovered"}]
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R4 K4 ["isHovered"]
       18 NAMECALL                         R2 R2 K6 ["setState"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K7 ["OnHoverEnd"]
       23 CALL                             R2 0 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R5 R3 K2 ["isDragging"]
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETTABLEKS                       R5 R3 K3 ["mousePos"]
       11 GETTABLEKS                       R6 R3 K4 ["mouseOffset"]
       13 ADD                              R4 R5 R6
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R2 K5 ["AbsolutePosition"]
       17 GETTABLEKS                       R5 R1 K6 ["UserInputType"]
       19 GETIMPORT                        R6 K9 [Enum.UserInputType.MouseButton1]
       21 JUMPIFNOTEQ                      R5 R6 ; [+54]
       23 GETTABLEKS                       R5 R3 K2 ["isDragging"]
       25 JUMPIF                           R5 ; [+3]
       26 GETTABLEKS                       R5 R3 K10 ["isDragStarting"]
       28 JUMPIFNOT                        R5 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R5 K13 [Enum.UserInputState.Cancel]
       32 SETTABLEKS                       R5 R1 K11 ["UserInputState"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K14 ["DoubleClickDetector"]
       37 NAMECALL                         R5 R5 K15 ["isDoubleClick"]
       39 CALL                             R5 1 1
       40 JUMPIFNOT                        R5 ; [+4]
       41 GETTABLEKS                       R5 R2 K16 ["OnDoubleClicked"]
       43 CALL                             R5 0 0
       44 RETURN                           R0 0
       45 GETIMPORT                        R5 K19 [Vector2.new]
       47 GETTABLEKS                       R6 R1 K20 ["Position"]
       49 GETTABLEKS                       R6 R6 K21 ["X"]
       51 GETTABLEKS                       R7 R1 K20 ["Position"]
       53 GETTABLEKS                       R7 R7 K22 ["Y"]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 0
       57 DUPTABLE                         R8 K24 [{"isDragStarting", "mouseStart", "mouseOffset", "mousePos"}]
       58 LOADB                            R9 1
       59 SETTABLEKS                       R9 R8 K10 ["isDragStarting"]
       61 SETTABLEKS                       R5 R8 K23 ["mouseStart"]
       63 SUB                              R9 R4 R5
       64 SETTABLEKS                       R9 R8 K4 ["mouseOffset"]
       66 SETTABLEKS                       R5 R8 K3 ["mousePos"]
       68 NAMECALL                         R6 R6 K25 ["setState"]
       70 CALL                             R6 2 0
       71 GETTABLEKS                       R6 R2 K26 ["OnSelected"]
       73 MOVE                             R7 R5
       74 CALL                             R6 1 0
       75 RETURN                           R0 0
       76 GETTABLEKS                       R5 R1 K6 ["UserInputType"]
       78 GETIMPORT                        R6 K28 [Enum.UserInputType.MouseButton2]
       80 JUMPIFNOTEQ                      R5 R6 ; [+9]
       82 GETTABLEKS                       R5 R2 K29 ["OnRightClicked"]
       84 CALL                             R5 0 0
       85 GETIMPORT                        R5 K13 [Enum.UserInputState.Cancel]
       87 SETTABLEKS                       R5 R1 K11 ["UserInputState"]
       89 RETURN                           R0 0
       90 GETUPVAL                         R5 0
       91 DUPTABLE                         R7 K30 [{"mousePos"}]
       92 GETIMPORT                        R8 K19 [Vector2.new]
       94 GETTABLEKS                       R9 R1 K20 ["Position"]
       96 GETTABLEKS                       R9 R9 K21 ["X"]
       98 GETTABLEKS                       R10 R1 K20 ["Position"]
      100 GETTABLEKS                       R10 R10 K22 ["Y"]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K3 ["mousePos"]
      105 NAMECALL                         R5 R5 K25 ["setState"]
      107 CALL                             R5 2 0
      108 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R5 R3 K2 ["isDragging"]
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETTABLEKS                       R5 R3 K3 ["mousePos"]
       11 GETTABLEKS                       R6 R3 K4 ["mouseOffset"]
       13 ADD                              R4 R5 R6
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R2 K5 ["AbsolutePosition"]
       17 GETTABLEKS                       R5 R1 K6 ["UserInputType"]
       19 GETIMPORT                        R6 K9 [Enum.UserInputType.MouseButton1]
       21 JUMPIFNOTEQ                      R5 R6 ; [+37]
       23 GETTABLEKS                       R5 R3 K2 ["isDragging"]
       25 JUMPIF                           R5 ; [+4]
       26 GETTABLEKS                       R5 R3 K10 ["isDragStarting"]
       28 JUMPIF                           R5 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 0
       31 DUPTABLE                         R7 K12 [{"isDragging", "isDragStarting", "mouseStart", "mouseOffset", "mousePos"}]
       32 LOADB                            R8 0
       33 SETTABLEKS                       R8 R7 K2 ["isDragging"]
       35 LOADB                            R8 0
       36 SETTABLEKS                       R8 R7 K10 ["isDragStarting"]
       38 GETIMPORT                        R8 K15 [Vector2.zero]
       40 SETTABLEKS                       R8 R7 K11 ["mouseStart"]
       42 GETIMPORT                        R8 K15 [Vector2.zero]
       44 SETTABLEKS                       R8 R7 K4 ["mouseOffset"]
       46 GETIMPORT                        R8 K15 [Vector2.zero]
       48 SETTABLEKS                       R8 R7 K3 ["mousePos"]
       50 NAMECALL                         R5 R5 K16 ["setState"]
       52 CALL                             R5 2 0
       53 GETTABLEKS                       R5 R2 K17 ["OnDragEnd"]
       55 GETTABLEKS                       R6 R2 K5 ["AbsolutePosition"]
       57 MOVE                             R7 R4
       58 CALL                             R5 2 0
       59 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R3 R0 K2 ["UserInputType"]
        8 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R3 R4 ; [+37]
       12 GETTABLEKS                       R3 R1 K6 ["dispatchMapScreenToSurfacePos"]
       14 GETIMPORT                        R4 K9 [Vector2.new]
       16 GETTABLEKS                       R5 R0 K10 ["Position"]
       18 GETTABLEKS                       R5 R5 K11 ["X"]
       20 GETTABLEKS                       R6 R0 K10 ["Position"]
       22 GETTABLEKS                       R6 R6 K12 ["Y"]
       24 CALL                             R4 2 -1
       25 CALL                             R3 -1 1
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 DUPTABLE                         R6 K14 [{"mousePos"}]
       31 SETTABLEKS                       R3 R6 K13 ["mousePos"]
       33 NAMECALL                         R4 R4 K15 ["setState"]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R1 K16 ["OnHoverMoved"]
       38 JUMPIFNOT                        R4 ; [+9]
       39 GETTABLEKS                       R4 R1 K16 ["OnHoverMoved"]
       41 MOVE                             R5 R3
       42 GETTABLEKS                       R6 R2 K17 ["isDragging"]
       44 JUMPIF                           R6 ; [+2]
       45 GETTABLEKS                       R6 R2 K18 ["isDragStarting"]
       47 CALL                             R4 2 0
       48 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K6 [{"isHovered", "isDragging", "isDragStarting", "mouseStart", "mousePos", "mouseOffset"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isDragging"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isDragStarting"]
       10 GETIMPORT                        R2 K9 [Vector2.zero]
       12 SETTABLEKS                       R2 R1 K3 ["mouseStart"]
       14 GETIMPORT                        R2 K9 [Vector2.zero]
       16 SETTABLEKS                       R2 R1 K4 ["mousePos"]
       18 GETIMPORT                        R2 K9 [Vector2.zero]
       20 SETTABLEKS                       R2 R1 K5 ["mouseOffset"]
       22 SETTABLEKS                       R1 R0 K10 ["state"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K11 ["new"]
       27 CALL                             R1 0 1
       28 SETTABLEKS                       R1 R0 K12 ["DoubleClickDetector"]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K13 ["onMouseEnter"]
       34 NEWCLOSURE                       R1 P1
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K14 ["onMouseLeave"]
       38 NEWCLOSURE                       R1 P2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K15 ["onInputBegan"]
       42 NEWCLOSURE                       R1 P3
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K16 ["onInputEnded"]
       46 NEWCLOSURE                       R1 P4
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K17 ["onInputChanged"]
       50 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["isDragStarting"]
        6 JUMPIFNOT                        R3 ; [+27]
        7 GETTABLEKS                       R4 R2 K3 ["mouseStart"]
        9 GETTABLEKS                       R5 R2 K4 ["mousePos"]
       11 SUB                              R3 R4 R5
       12 GETTABLEKS                       R4 R3 K5 ["Magnitude"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["DragEpsilon"]
       17 JUMPIFNOTLT                      R5 R4 ; [+16]
       19 GETTABLEKS                       R4 R1 K7 ["OnDragStart"]
       21 GETTABLEKS                       R5 R2 K4 ["mousePos"]
       23 CALL                             R4 1 0
       24 DUPTABLE                         R6 K9 [{"isDragStarting", "isDragging"}]
       25 LOADB                            R7 0
       26 SETTABLEKS                       R7 R6 K2 ["isDragStarting"]
       28 LOADB                            R7 1
       29 SETTABLEKS                       R7 R6 K8 ["isDragging"]
       31 NAMECALL                         R4 R0 K10 ["setState"]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R5 R2 K3 ["isDragging"]
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["Selected"]
       14 JUMP                             ; [+15]
       15 GETTABLEKS                       R5 R1 K5 ["IsSelected"]
       17 JUMPIFNOT                        R5 ; [+4]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["Selected"]
       21 JUMP                             ; [+8]
       22 GETTABLEKS                       R5 R2 K6 ["isHovered"]
       24 JUMPIFNOT                        R5 ; [+4]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K7 ["Hover"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 JUMPIFEQKNIL                     R4 ; [+11]
       32 GETTABLE                         R5 R3 R4
       33 JUMPIFEQKNIL                     R5 ; [+8]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K8 ["join"]
       38 MOVE                             R6 R3
       39 GETTABLE                         R7 R3 R4
       40 CALL                             R5 2 1
       41 MOVE                             R3 R5
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R6 R3 K9 ["Disabled"]
       45 GETTABLEKS                       R7 R1 K9 ["Disabled"]
       47 CALL                             R5 2 1
       48 GETTABLEKS                       R6 R3 K10 ["BackgroundColor"]
       50 GETTABLEKS                       R7 R1 K11 ["AbsolutePosition"]
       52 GETTABLEKS                       R8 R3 K12 ["BackgroundImage"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R10 R1 K13 ["AbsoluteSize"]
       57 GETTABLEKS                       R11 R3 K14 ["PointSize"]
       59 CALL                             R9 2 1
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R11 R1 K15 ["Size"]
       63 GETIMPORT                        R12 K18 [UDim2.fromOffset]
       65 GETTABLEKS                       R13 R9 K19 ["X"]
       67 GETTABLEKS                       R14 R9 K20 ["Y"]
       69 CALL                             R12 2 -1
       70 CALL                             R10 -1 1
       71 GETTABLEKS                       R11 R3 K21 ["StrokeWidth"]
       73 GETTABLEKS                       R12 R1 K5 ["IsSelected"]
       75 JUMPIFNOT                        R12 ; [+6]
       76 GETTABLEKS                       R12 R3 K22 ["SelectedColor"]
       78 JUMPIFEQKNIL                     R12 ; [+3]
       80 GETTABLEKS                       R6 R3 K22 ["SelectedColor"]
       82 GETTABLEKS                       R12 R2 K3 ["isDragging"]
       84 JUMPIFNOT                        R12 ; [+21]
       85 GETTABLEKS                       R12 R3 K23 ["DragColor"]
       87 JUMPIFEQKNIL                     R12 ; [+3]
       89 GETTABLEKS                       R6 R3 K23 ["DragColor"]
       91 GETTABLEKS                       R13 R2 K24 ["mousePos"]
       93 GETTABLEKS                       R14 R2 K25 ["mouseOffset"]
       95 ADD                              R12 R13 R14
       96 GETTABLEKS                       R13 R1 K26 ["FollowCursorOnDrag"]
       98 JUMPIFNOT                        R13 ; [+1]
       99 MOVE                             R7 R12
      100 GETTABLEKS                       R13 R1 K27 ["OnDragMoved"]
      102 GETTABLEKS                       R14 R1 K11 ["AbsolutePosition"]
      104 MOVE                             R15 R12
      105 CALL                             R13 2 0
      106 NEWTABLE                         R12 0 0
      108 GETTABLEKS                       R13 R1 K28 ["children"]
      110 JUMPIFEQKNIL                     R13 ; [+3]
      112 GETTABLEKS                       R12 R1 K28 ["children"]
      114 JUMPIFEQKNIL                     R11 ; [+35]
      116 MOVE                             R14 R12
      117 GETUPVAL                         R15 3
      118 GETTABLEKS                       R15 R15 K29 ["createElement"]
      120 LOADK                            R16 K30 ["Frame"]
      121 DUPTABLE                         R17 K32 [{"BackgroundTransparency", "Size"}]
      122 LOADN                            R18 1
      123 SETTABLEKS                       R18 R17 K31 ["BackgroundTransparency"]
      125 SETTABLEKS                       R10 R17 K15 ["Size"]
      127 NEWTABLE                         R18 0 1
      129 GETUPVAL                         R19 3
      130 GETTABLEKS                       R19 R19 K29 ["createElement"]
      132 LOADK                            R20 K33 ["UIStroke"]
      133 DUPTABLE                         R21 K36 [{"Thickness", "Color"}]
      134 GETTABLEKS                       R22 R3 K21 ["StrokeWidth"]
      136 SETTABLEKS                       R22 R21 K34 ["Thickness"]
      138 GETTABLEKS                       R22 R3 K37 ["StrokeColor"]
      140 SETTABLEKS                       R22 R21 K35 ["Color"]
      142 CALL                             R19 2 -1
      143 SETLIST                          R18 R19 -1 [1]
      145 CALL                             R15 3 -1
      146 FASTCALL                         TABLE_INSERT ; [+2]
      147 GETIMPORT                        R13 K40 [table.insert]
      149 CALL                             R13 -1 0
      150 GETTABLEKS                       R13 R3 K41 ["Padding"]
      152 MOVE                             R14 R10
      153 GETIMPORT                        R15 K43 [UDim2.new]
      155 LOADN                            R16 0
      156 GETTABLEKS                       R17 R7 K19 ["X"]
      158 LOADN                            R18 0
      159 GETTABLEKS                       R19 R7 K20 ["Y"]
      161 CALL                             R15 4 1
      162 JUMPIFEQKNIL                     R13 ; [+7]
      164 GETIMPORT                        R16 K18 [UDim2.fromOffset]
      166 MOVE                             R17 R13
      167 MOVE                             R18 R13
      168 CALL                             R16 2 1
      169 SUB                              R14 R10 R16
      170 GETTABLEKS                       R16 R3 K44 ["HasControlPointVisual"]
      172 JUMPIFNOT                        R16 ; [+18]
      173 LOADNIL                          R8
      174 MOVE                             R17 R12
      175 GETUPVAL                         R18 3
      176 GETTABLEKS                       R18 R18 K29 ["createElement"]
      178 GETUPVAL                         R19 4
      179 DUPTABLE                         R20 K47 [{"Style", "StyleModifier"}]
      180 GETTABLEKS                       R21 R1 K45 ["Style"]
      182 SETTABLEKS                       R21 R20 K45 ["Style"]
      184 SETTABLEKS                       R4 R20 K46 ["StyleModifier"]
      186 CALL                             R18 2 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R16 K40 [table.insert]
      190 CALL                             R16 -1 0
      191 JUMPIFEQKNIL                     R8 ; [+43]
      193 JUMPIF                           R5 ; [+41]
      194 MOVE                             R17 R12
      195 GETUPVAL                         R18 3
      196 GETTABLEKS                       R18 R18 K29 ["createElement"]
      198 LOADK                            R19 K48 ["ImageLabel"]
      199 DUPTABLE                         R20 K54 [{"AnchorPoint", "Position", "Size", "Image", "BackgroundTransparency", "ImageTransparency", "ScaleType"}]
      200 GETIMPORT                        R21 K56 [Vector2.new]
      202 LOADK                            R22 K57 [0.5]
      203 LOADK                            R23 K57 [0.5]
      204 CALL                             R21 2 1
      205 SETTABLEKS                       R21 R20 K49 ["AnchorPoint"]
      207 GETIMPORT                        R21 K59 [UDim2.fromScale]
      209 LOADK                            R22 K57 [0.5]
      210 LOADK                            R23 K57 [0.5]
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K50 ["Position"]
      214 SETTABLEKS                       R14 R20 K15 ["Size"]
      216 SETTABLEKS                       R8 R20 K51 ["Image"]
      218 GETTABLEKS                       R21 R3 K31 ["BackgroundTransparency"]
      220 SETTABLEKS                       R21 R20 K31 ["BackgroundTransparency"]
      222 GETTABLEKS                       R21 R3 K52 ["ImageTransparency"]
      224 SETTABLEKS                       R21 R20 K52 ["ImageTransparency"]
      226 GETIMPORT                        R21 K62 [Enum.ScaleType.Crop]
      228 SETTABLEKS                       R21 R20 K53 ["ScaleType"]
      230 CALL                             R18 2 -1
      231 FASTCALL                         TABLE_INSERT ; [+2]
      232 GETIMPORT                        R16 K40 [table.insert]
      234 CALL                             R16 -1 0
      235 LOADNIL                          R16
      236 JUMPIFNOT                        R5 ; [+72]
      237 JUMPIF                           R8 ; [+30]
      238 GETUPVAL                         R17 3
      239 GETTABLEKS                       R17 R17 K29 ["createElement"]
      241 LOADK                            R18 K30 ["Frame"]
      242 DUPTABLE                         R19 K66 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "Active", "ZIndex", "BackgroundTransparency"}]
      243 GETTABLEKS                       R20 R3 K49 ["AnchorPoint"]
      245 SETTABLEKS                       R20 R19 K49 ["AnchorPoint"]
      247 SETTABLEKS                       R15 R19 K50 ["Position"]
      249 SETTABLEKS                       R10 R19 K15 ["Size"]
      251 SETTABLEKS                       R6 R19 K63 ["BackgroundColor3"]
      253 LOADB                            R20 1
      254 SETTABLEKS                       R20 R19 K64 ["Active"]
      256 GETTABLEKS                       R20 R1 K65 ["ZIndex"]
      258 SETTABLEKS                       R20 R19 K65 ["ZIndex"]
      260 GETTABLEKS                       R20 R3 K31 ["BackgroundTransparency"]
      262 SETTABLEKS                       R20 R19 K31 ["BackgroundTransparency"]
      264 MOVE                             R20 R12
      265 CALL                             R17 3 1
      266 MOVE                             R16 R17
      267 RETURN                           R16 1
      268 GETUPVAL                         R17 3
      269 GETTABLEKS                       R17 R17 K29 ["createElement"]
      271 LOADK                            R18 K48 ["ImageLabel"]
      272 DUPTABLE                         R19 K67 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "Image", "Active", "ZIndex", "BackgroundTransparency", "ImageTransparency", "ScaleType"}]
      273 GETTABLEKS                       R20 R3 K49 ["AnchorPoint"]
      275 SETTABLEKS                       R20 R19 K49 ["AnchorPoint"]
      277 SETTABLEKS                       R15 R19 K50 ["Position"]
      279 OR                               R20 R14 R10
      280 SETTABLEKS                       R20 R19 K15 ["Size"]
      282 SETTABLEKS                       R6 R19 K63 ["BackgroundColor3"]
      284 SETTABLEKS                       R8 R19 K51 ["Image"]
      286 LOADB                            R20 1
      287 SETTABLEKS                       R20 R19 K64 ["Active"]
      289 GETTABLEKS                       R20 R1 K65 ["ZIndex"]
      291 SETTABLEKS                       R20 R19 K65 ["ZIndex"]
      293 GETTABLEKS                       R20 R3 K31 ["BackgroundTransparency"]
      295 SETTABLEKS                       R20 R19 K31 ["BackgroundTransparency"]
      297 GETTABLEKS                       R20 R3 K52 ["ImageTransparency"]
      299 SETTABLEKS                       R20 R19 K52 ["ImageTransparency"]
      301 GETIMPORT                        R20 K62 [Enum.ScaleType.Crop]
      303 SETTABLEKS                       R20 R19 K53 ["ScaleType"]
      305 MOVE                             R20 R12
      306 CALL                             R17 3 1
      307 MOVE                             R16 R17
      308 RETURN                           R16 1
      309 GETUPVAL                         R17 3
      310 GETTABLEKS                       R17 R17 K29 ["createElement"]
      312 GETUPVAL                         R18 3
      313 GETTABLEKS                       R18 R18 K68 ["Fragment"]
      315 NEWTABLE                         R19 0 0
      317 DUPTABLE                         R20 K71 [{"Point", "InputListener"}]
      318 GETUPVAL                         R21 3
      319 GETTABLEKS                       R21 R21 K29 ["createElement"]
      321 LOADK                            R22 K72 ["ImageButton"]
      322 NEWTABLE                         R23 16 0
      324 GETTABLEKS                       R24 R3 K49 ["AnchorPoint"]
      326 SETTABLEKS                       R24 R23 K49 ["AnchorPoint"]
      328 SETTABLEKS                       R15 R23 K50 ["Position"]
      330 SETTABLEKS                       R10 R23 K15 ["Size"]
      332 SETTABLEKS                       R6 R23 K63 ["BackgroundColor3"]
      334 LOADB                            R24 1
      335 SETTABLEKS                       R24 R23 K64 ["Active"]
      337 GETTABLEKS                       R24 R1 K65 ["ZIndex"]
      339 SETTABLEKS                       R24 R23 K65 ["ZIndex"]
      341 GETTABLEKS                       R24 R3 K31 ["BackgroundTransparency"]
      343 SETTABLEKS                       R24 R23 K31 ["BackgroundTransparency"]
      345 GETUPVAL                         R24 3
      346 GETTABLEKS                       R24 R24 K73 ["Event"]
      348 GETTABLEKS                       R24 R24 K74 ["MouseEnter"]
      350 GETTABLEKS                       R25 R0 K75 ["onMouseEnter"]
      352 SETTABLE                         R25 R23 R24
      353 GETUPVAL                         R24 3
      354 GETTABLEKS                       R24 R24 K73 ["Event"]
      356 GETTABLEKS                       R24 R24 K76 ["MouseLeave"]
      358 GETTABLEKS                       R25 R0 K77 ["onMouseLeave"]
      360 SETTABLE                         R25 R23 R24
      361 GETUPVAL                         R24 3
      362 GETTABLEKS                       R24 R24 K73 ["Event"]
      364 GETTABLEKS                       R24 R24 K78 ["InputBegan"]
      366 GETTABLEKS                       R25 R0 K79 ["onInputBegan"]
      368 SETTABLE                         R25 R23 R24
      369 GETUPVAL                         R24 3
      370 GETTABLEKS                       R24 R24 K73 ["Event"]
      372 GETTABLEKS                       R24 R24 K80 ["InputEnded"]
      374 GETTABLEKS                       R25 R0 K81 ["onInputEnded"]
      376 SETTABLE                         R25 R23 R24
      377 MOVE                             R24 R12
      378 CALL                             R21 3 1
      379 SETTABLEKS                       R21 R20 K69 ["Point"]
      381 GETTABLEKS                       R22 R2 K3 ["isDragging"]
      383 JUMPIF                           R22 ; [+6]
      384 GETTABLEKS                       R22 R2 K82 ["isDragStarting"]
      386 JUMPIF                           R22 ; [+3]
      387 GETTABLEKS                       R21 R1 K83 ["OnHoverMoved"]
      389 JUMPIFNOT                        R21 ; [+15]
      390 GETUPVAL                         R21 3
      391 GETTABLEKS                       R21 R21 K29 ["createElement"]
      393 GETUPVAL                         R22 5
      394 DUPTABLE                         R23 K86 [{"signal", "callback"}]
      395 GETUPVAL                         R24 6
      396 GETTABLEKS                       R24 R24 K87 ["InputChanged"]
      398 SETTABLEKS                       R24 R23 K84 ["signal"]
      400 GETTABLEKS                       R24 R0 K88 ["onInputChanged"]
      402 SETTABLEKS                       R24 R23 K85 ["callback"]
      404 CALL                             R21 2 1
      405 SETTABLEKS                       R21 R20 K70 ["InputListener"]
      407 CALL                             R17 3 1
      408 MOVE                             R16 R17
      409 RETURN                           R16 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 DUPTABLE                         R1 K1 [{"dispatchMapScreenToSurfacePos"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchMapScreenToSurfacePos"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["Packages"]
       40 GETTABLEKS                       R6 R6 K13 ["Dash"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R4 K14 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K15 ["withContext"]
       47 GETTABLEKS                       R8 R4 K16 ["Style"]
       49 GETTABLEKS                       R8 R8 K17 ["Stylizer"]
       51 GETIMPORT                        R9 K8 [require]
       53 GETTABLEKS                       R10 R1 K18 ["Src"]
       55 GETTABLEKS                       R10 R10 K19 ["Thunks"]
       57 GETTABLEKS                       R10 R10 K20 ["MapScreenToSurfacePos"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R4 K21 ["Util"]
       62 GETTABLEKS                       R11 R10 K22 ["DoubleClickDetector"]
       64 GETTABLEKS                       R12 R10 K23 ["prioritize"]
       66 GETTABLEKS                       R13 R10 K24 ["StyleModifier"]
       68 GETIMPORT                        R14 K8 [require]
       70 GETTABLEKS                       R15 R1 K18 ["Src"]
       72 GETTABLEKS                       R15 R15 K25 ["Resources"]
       74 GETTABLEKS                       R15 R15 K26 ["Constants"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R15 R1 K18 ["Src"]
       79 GETTABLEKS                       R15 R15 K27 ["Components"]
       81 GETIMPORT                        R16 K8 [require]
       83 GETTABLEKS                       R17 R15 K28 ["SignalListener"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K8 [require]
       88 GETTABLEKS                       R18 R15 K29 ["ControlPointVisual"]
       90 CALL                             R17 1 1
       91 GETTABLEKS                       R18 R2 K30 ["Component"]
       93 LOADK                            R20 K31 ["DraggablePoint"]
       94 NAMECALL                         R18 R18 K32 ["extend"]
       96 CALL                             R18 2 1
       97 DUPTABLE                         R19 K46 [{"Style", "ZIndex", "AbsolutePosition", "FollowCursorOnDrag", "OnSelected", "OnMouse1Down", "OnHover", "OnHoverEnd", "OnDeselected", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnDoubleClicked", "OnRightClicked"}]
       98 LOADK                            R20 K47 ["ControlPoint"]
       99 SETTABLEKS                       R20 R19 K16 ["Style"]
      101 LOADN                            R20 0
      102 SETTABLEKS                       R20 R19 K33 ["ZIndex"]
      104 GETIMPORT                        R20 K50 [Vector2.new]
      106 LOADN                            R21 0
      107 LOADN                            R22 0
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K34 ["AbsolutePosition"]
      111 LOADB                            R20 1
      112 SETTABLEKS                       R20 R19 K35 ["FollowCursorOnDrag"]
      114 DUPCLOSURE                       R20 K51 [PROTO_0]
      115 SETTABLEKS                       R20 R19 K36 ["OnSelected"]
      117 DUPCLOSURE                       R20 K52 [PROTO_1]
      118 SETTABLEKS                       R20 R19 K37 ["OnMouse1Down"]
      120 DUPCLOSURE                       R20 K53 [PROTO_2]
      121 SETTABLEKS                       R20 R19 K38 ["OnHover"]
      123 DUPCLOSURE                       R20 K54 [PROTO_3]
      124 SETTABLEKS                       R20 R19 K39 ["OnHoverEnd"]
      126 DUPCLOSURE                       R20 K55 [PROTO_4]
      127 SETTABLEKS                       R20 R19 K40 ["OnDeselected"]
      129 DUPCLOSURE                       R20 K56 [PROTO_5]
      130 SETTABLEKS                       R20 R19 K41 ["OnDragStart"]
      132 DUPCLOSURE                       R20 K57 [PROTO_6]
      133 SETTABLEKS                       R20 R19 K42 ["OnDragMoved"]
      135 DUPCLOSURE                       R20 K58 [PROTO_7]
      136 SETTABLEKS                       R20 R19 K43 ["OnDragEnd"]
      138 DUPCLOSURE                       R20 K59 [PROTO_8]
      139 SETTABLEKS                       R20 R19 K44 ["OnDoubleClicked"]
      141 DUPCLOSURE                       R20 K60 [PROTO_9]
      142 SETTABLEKS                       R20 R19 K45 ["OnRightClicked"]
      144 SETTABLEKS                       R19 R18 K61 ["defaultProps"]
      146 DUPCLOSURE                       R19 K62 [PROTO_15]
      147 CAPTURE                          VAL R11
      148 SETTABLEKS                       R19 R18 K63 ["init"]
      150 DUPCLOSURE                       R19 K64 [PROTO_16]
      151 CAPTURE                          VAL R14
      152 SETTABLEKS                       R19 R18 K65 ["didUpdate"]
      154 DUPCLOSURE                       R19 K66 [PROTO_17]
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R19 R18 K67 ["render"]
      164 MOVE                             R19 R7
      165 DUPTABLE                         R20 K68 [{"Stylizer"}]
      166 SETTABLEKS                       R8 R20 K17 ["Stylizer"]
      168 CALL                             R19 1 1
      169 MOVE                             R20 R18
      170 CALL                             R19 1 1
      171 MOVE                             R18 R19
      172 GETTABLEKS                       R19 R3 K69 ["connect"]
      174 LOADNIL                          R20
      175 DUPCLOSURE                       R21 K70 [PROTO_19]
      176 CAPTURE                          VAL R9
      177 CALL                             R19 2 1
      178 MOVE                             R20 R18
      179 CALL                             R19 1 -1
      180 RETURN                           R19 -1
