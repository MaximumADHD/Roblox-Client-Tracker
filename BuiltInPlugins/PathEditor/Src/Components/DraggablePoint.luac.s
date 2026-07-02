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
       14 DUPTABLE                         R4 K6 [{["isHovered"] = True}]
       15 NAMECALL                         R2 R2 K7 ["setState"]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K8 ["OnHover"]
       20 CALL                             R2 0 0
       21 RETURN                           R0 0

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
       14 DUPTABLE                         R4 K6 [{["isHovered"] = False}]
       15 NAMECALL                         R2 R2 K7 ["setState"]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K8 ["OnHoverEnd"]
       20 CALL                             R2 0 0
       21 RETURN                           R0 0

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
       21 JUMPIFNOTEQ                      R5 R6 ; [+51]
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
       57 DUPTABLE                         R8 K25 [{["isDragStarting"] = True, ["mouseStart"], ["mouseOffset"], ["mousePos"]}]
       58 SETTABLEKS                       R5 R8 K24 ["mouseStart"]
       60 SUB                              R9 R4 R5
       61 SETTABLEKS                       R9 R8 K4 ["mouseOffset"]
       63 SETTABLEKS                       R5 R8 K3 ["mousePos"]
       65 NAMECALL                         R6 R6 K26 ["setState"]
       67 CALL                             R6 2 0
       68 GETTABLEKS                       R6 R2 K27 ["OnSelected"]
       70 MOVE                             R7 R5
       71 CALL                             R6 1 0
       72 RETURN                           R0 0
       73 GETTABLEKS                       R5 R1 K6 ["UserInputType"]
       75 GETIMPORT                        R6 K29 [Enum.UserInputType.MouseButton2]
       77 JUMPIFNOTEQ                      R5 R6 ; [+9]
       79 GETTABLEKS                       R5 R2 K30 ["OnRightClicked"]
       81 CALL                             R5 0 0
       82 GETIMPORT                        R5 K13 [Enum.UserInputState.Cancel]
       84 SETTABLEKS                       R5 R1 K11 ["UserInputState"]
       86 RETURN                           R0 0
       87 GETUPVAL                         R5 0
       88 DUPTABLE                         R7 K31 [{"mousePos"}]
       89 GETIMPORT                        R8 K19 [Vector2.new]
       91 GETTABLEKS                       R9 R1 K20 ["Position"]
       93 GETTABLEKS                       R9 R9 K21 ["X"]
       95 GETTABLEKS                       R10 R1 K20 ["Position"]
       97 GETTABLEKS                       R10 R10 K22 ["Y"]
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R7 K3 ["mousePos"]
      102 NAMECALL                         R5 R5 K26 ["setState"]
      104 CALL                             R5 2 0
      105 RETURN                           R0 0

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
       21 JUMPIFNOTEQ                      R5 R6 ; [+31]
       23 GETTABLEKS                       R5 R3 K2 ["isDragging"]
       25 JUMPIF                           R5 ; [+4]
       26 GETTABLEKS                       R5 R3 K10 ["isDragStarting"]
       28 JUMPIF                           R5 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 0
       31 DUPTABLE                         R7 K13 [{["isDragging"] = False, ["isDragStarting"] = False, ["mouseStart"], ["mouseOffset"], ["mousePos"]}]
       32 GETIMPORT                        R8 K16 [Vector2.zero]
       34 SETTABLEKS                       R8 R7 K12 ["mouseStart"]
       36 GETIMPORT                        R8 K16 [Vector2.zero]
       38 SETTABLEKS                       R8 R7 K4 ["mouseOffset"]
       40 GETIMPORT                        R8 K16 [Vector2.zero]
       42 SETTABLEKS                       R8 R7 K3 ["mousePos"]
       44 NAMECALL                         R5 R5 K17 ["setState"]
       46 CALL                             R5 2 0
       47 GETTABLEKS                       R5 R2 K18 ["OnDragEnd"]
       49 GETTABLEKS                       R6 R2 K5 ["AbsolutePosition"]
       51 MOVE                             R7 R4
       52 CALL                             R5 2 0
       53 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K7 [{[1] = False, ["isDragging"] = False, ["isDragStarting"] = False, ["mouseStart"], ["mousePos"], ["mouseOffset"]}]
        1 GETIMPORT                        R2 K10 [Vector2.zero]
        3 SETTABLEKS                       R2 R1 K4 ["mouseStart"]
        5 GETIMPORT                        R2 K10 [Vector2.zero]
        7 SETTABLEKS                       R2 R1 K5 ["mousePos"]
        9 GETIMPORT                        R2 K10 [Vector2.zero]
       11 SETTABLEKS                       R2 R1 K6 ["mouseOffset"]
       13 SETTABLEKS                       R1 R0 K11 ["state"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K12 ["new"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K13 ["DoubleClickDetector"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K14 ["onMouseEnter"]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K15 ["onMouseLeave"]
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K16 ["onInputBegan"]
       33 NEWCLOSURE                       R1 P3
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K17 ["onInputEnded"]
       37 NEWCLOSURE                       R1 P4
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K18 ["onInputChanged"]
       41 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["isDragStarting"]
        6 JUMPIFNOT                        R3 ; [+21]
        7 GETTABLEKS                       R4 R2 K3 ["mouseStart"]
        9 GETTABLEKS                       R5 R2 K4 ["mousePos"]
       11 SUB                              R3 R4 R5
       12 GETTABLEKS                       R4 R3 K5 ["Magnitude"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["DragEpsilon"]
       17 JUMPIFNOTLT                      R5 R4 ; [+10]
       19 GETTABLEKS                       R4 R1 K7 ["OnDragStart"]
       21 GETTABLEKS                       R5 R2 K4 ["mousePos"]
       23 CALL                             R4 1 0
       24 DUPTABLE                         R6 K11 [{["isDragStarting"] = False, ["isDragging"] = True}]
       25 NAMECALL                         R4 R0 K12 ["setState"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

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
      114 JUMPIFEQKNIL                     R11 ; [+32]
      116 MOVE                             R14 R12
      117 GETUPVAL                         R15 3
      118 GETTABLEKS                       R15 R15 K29 ["createElement"]
      120 LOADK                            R16 K30 ["Frame"]
      121 DUPTABLE                         R17 K33 [{["BackgroundTransparency"] = 1, ["Size"]}]
      122 SETTABLEKS                       R10 R17 K15 ["Size"]
      124 NEWTABLE                         R18 0 1
      126 GETUPVAL                         R19 3
      127 GETTABLEKS                       R19 R19 K29 ["createElement"]
      129 LOADK                            R20 K34 ["UIStroke"]
      130 DUPTABLE                         R21 K37 [{"Thickness", "Color"}]
      131 GETTABLEKS                       R22 R3 K21 ["StrokeWidth"]
      133 SETTABLEKS                       R22 R21 K35 ["Thickness"]
      135 GETTABLEKS                       R22 R3 K38 ["StrokeColor"]
      137 SETTABLEKS                       R22 R21 K36 ["Color"]
      139 CALL                             R19 2 -1
      140 SETLIST                          R18 R19 -1 [1]
      142 CALL                             R15 3 -1
      143 FASTCALL                         TABLE_INSERT ; [+2]
      144 GETIMPORT                        R13 K41 [table.insert]
      146 CALL                             R13 -1 0
      147 GETTABLEKS                       R13 R3 K42 ["Padding"]
      149 MOVE                             R14 R10
      150 GETIMPORT                        R15 K44 [UDim2.new]
      152 LOADN                            R16 0
      153 GETTABLEKS                       R17 R7 K19 ["X"]
      155 LOADN                            R18 0
      156 GETTABLEKS                       R19 R7 K20 ["Y"]
      158 CALL                             R15 4 1
      159 JUMPIFEQKNIL                     R13 ; [+7]
      161 GETIMPORT                        R16 K18 [UDim2.fromOffset]
      163 MOVE                             R17 R13
      164 MOVE                             R18 R13
      165 CALL                             R16 2 1
      166 SUB                              R14 R10 R16
      167 GETTABLEKS                       R16 R3 K45 ["HasControlPointVisual"]
      169 JUMPIFNOT                        R16 ; [+18]
      170 LOADNIL                          R8
      171 MOVE                             R17 R12
      172 GETUPVAL                         R18 3
      173 GETTABLEKS                       R18 R18 K29 ["createElement"]
      175 GETUPVAL                         R19 4
      176 DUPTABLE                         R20 K48 [{"Style", "StyleModifier"}]
      177 GETTABLEKS                       R21 R1 K46 ["Style"]
      179 SETTABLEKS                       R21 R20 K46 ["Style"]
      181 SETTABLEKS                       R4 R20 K47 ["StyleModifier"]
      183 CALL                             R18 2 -1
      184 FASTCALL                         TABLE_INSERT ; [+2]
      185 GETIMPORT                        R16 K41 [table.insert]
      187 CALL                             R16 -1 0
      188 JUMPIFEQKNIL                     R8 ; [+43]
      190 JUMPIF                           R5 ; [+41]
      191 MOVE                             R17 R12
      192 GETUPVAL                         R18 3
      193 GETTABLEKS                       R18 R18 K29 ["createElement"]
      195 LOADK                            R19 K49 ["ImageLabel"]
      196 DUPTABLE                         R20 K55 [{"AnchorPoint", "Position", "Size", "Image", "BackgroundTransparency", "ImageTransparency", "ScaleType"}]
      197 GETIMPORT                        R21 K57 [Vector2.new]
      199 LOADK                            R22 K58 [0.5]
      200 LOADK                            R23 K58 [0.5]
      201 CALL                             R21 2 1
      202 SETTABLEKS                       R21 R20 K50 ["AnchorPoint"]
      204 GETIMPORT                        R21 K60 [UDim2.fromScale]
      206 LOADK                            R22 K58 [0.5]
      207 LOADK                            R23 K58 [0.5]
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K51 ["Position"]
      211 SETTABLEKS                       R14 R20 K15 ["Size"]
      213 SETTABLEKS                       R8 R20 K52 ["Image"]
      215 GETTABLEKS                       R21 R3 K31 ["BackgroundTransparency"]
      217 SETTABLEKS                       R21 R20 K31 ["BackgroundTransparency"]
      219 GETTABLEKS                       R21 R3 K53 ["ImageTransparency"]
      221 SETTABLEKS                       R21 R20 K53 ["ImageTransparency"]
      223 GETIMPORT                        R21 K63 [Enum.ScaleType.Crop]
      225 SETTABLEKS                       R21 R20 K54 ["ScaleType"]
      227 CALL                             R18 2 -1
      228 FASTCALL                         TABLE_INSERT ; [+2]
      229 GETIMPORT                        R16 K41 [table.insert]
      231 CALL                             R16 -1 0
      232 LOADNIL                          R16
      233 JUMPIFNOT                        R5 ; [+66]
      234 JUMPIF                           R8 ; [+27]
      235 GETUPVAL                         R17 3
      236 GETTABLEKS                       R17 R17 K29 ["createElement"]
      238 LOADK                            R18 K30 ["Frame"]
      239 DUPTABLE                         R19 K68 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["Active"] = True, ["ZIndex"], ["BackgroundTransparency"]}]
      240 GETTABLEKS                       R20 R3 K50 ["AnchorPoint"]
      242 SETTABLEKS                       R20 R19 K50 ["AnchorPoint"]
      244 SETTABLEKS                       R15 R19 K51 ["Position"]
      246 SETTABLEKS                       R10 R19 K15 ["Size"]
      248 SETTABLEKS                       R6 R19 K64 ["BackgroundColor3"]
      250 GETTABLEKS                       R20 R1 K67 ["ZIndex"]
      252 SETTABLEKS                       R20 R19 K67 ["ZIndex"]
      254 GETTABLEKS                       R20 R3 K31 ["BackgroundTransparency"]
      256 SETTABLEKS                       R20 R19 K31 ["BackgroundTransparency"]
      258 MOVE                             R20 R12
      259 CALL                             R17 3 1
      260 MOVE                             R16 R17
      261 RETURN                           R16 1
      262 GETUPVAL                         R17 3
      263 GETTABLEKS                       R17 R17 K29 ["createElement"]
      265 LOADK                            R18 K49 ["ImageLabel"]
      266 DUPTABLE                         R19 K69 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["Image"], ["Active"] = True, ["ZIndex"], ["BackgroundTransparency"], ["ImageTransparency"], ["ScaleType"]}]
      267 GETTABLEKS                       R20 R3 K50 ["AnchorPoint"]
      269 SETTABLEKS                       R20 R19 K50 ["AnchorPoint"]
      271 SETTABLEKS                       R15 R19 K51 ["Position"]
      273 OR                               R20 R14 R10
      274 SETTABLEKS                       R20 R19 K15 ["Size"]
      276 SETTABLEKS                       R6 R19 K64 ["BackgroundColor3"]
      278 SETTABLEKS                       R8 R19 K52 ["Image"]
      280 GETTABLEKS                       R20 R1 K67 ["ZIndex"]
      282 SETTABLEKS                       R20 R19 K67 ["ZIndex"]
      284 GETTABLEKS                       R20 R3 K31 ["BackgroundTransparency"]
      286 SETTABLEKS                       R20 R19 K31 ["BackgroundTransparency"]
      288 GETTABLEKS                       R20 R3 K53 ["ImageTransparency"]
      290 SETTABLEKS                       R20 R19 K53 ["ImageTransparency"]
      292 GETIMPORT                        R20 K63 [Enum.ScaleType.Crop]
      294 SETTABLEKS                       R20 R19 K54 ["ScaleType"]
      296 MOVE                             R20 R12
      297 CALL                             R17 3 1
      298 MOVE                             R16 R17
      299 RETURN                           R16 1
      300 GETUPVAL                         R17 3
      301 GETTABLEKS                       R17 R17 K29 ["createElement"]
      303 GETUPVAL                         R18 3
      304 GETTABLEKS                       R18 R18 K70 ["Fragment"]
      306 NEWTABLE                         R19 0 0
      308 DUPTABLE                         R20 K73 [{"Point", "InputListener"}]
      309 GETUPVAL                         R21 3
      310 GETTABLEKS                       R21 R21 K29 ["createElement"]
      312 LOADK                            R22 K74 ["ImageButton"]
      313 NEWTABLE                         R23 16 0
      315 GETTABLEKS                       R24 R3 K50 ["AnchorPoint"]
      317 SETTABLEKS                       R24 R23 K50 ["AnchorPoint"]
      319 SETTABLEKS                       R15 R23 K51 ["Position"]
      321 SETTABLEKS                       R10 R23 K15 ["Size"]
      323 SETTABLEKS                       R6 R23 K64 ["BackgroundColor3"]
      325 LOADB                            R24 1
      326 SETTABLEKS                       R24 R23 K65 ["Active"]
      328 GETTABLEKS                       R24 R1 K67 ["ZIndex"]
      330 SETTABLEKS                       R24 R23 K67 ["ZIndex"]
      332 GETTABLEKS                       R24 R3 K31 ["BackgroundTransparency"]
      334 SETTABLEKS                       R24 R23 K31 ["BackgroundTransparency"]
      336 GETUPVAL                         R24 3
      337 GETTABLEKS                       R24 R24 K75 ["Event"]
      339 GETTABLEKS                       R24 R24 K76 ["MouseEnter"]
      341 GETTABLEKS                       R25 R0 K77 ["onMouseEnter"]
      343 SETTABLE                         R25 R23 R24
      344 GETUPVAL                         R24 3
      345 GETTABLEKS                       R24 R24 K75 ["Event"]
      347 GETTABLEKS                       R24 R24 K78 ["MouseLeave"]
      349 GETTABLEKS                       R25 R0 K79 ["onMouseLeave"]
      351 SETTABLE                         R25 R23 R24
      352 GETUPVAL                         R24 3
      353 GETTABLEKS                       R24 R24 K75 ["Event"]
      355 GETTABLEKS                       R24 R24 K80 ["InputBegan"]
      357 GETTABLEKS                       R25 R0 K81 ["onInputBegan"]
      359 SETTABLE                         R25 R23 R24
      360 GETUPVAL                         R24 3
      361 GETTABLEKS                       R24 R24 K75 ["Event"]
      363 GETTABLEKS                       R24 R24 K82 ["InputEnded"]
      365 GETTABLEKS                       R25 R0 K83 ["onInputEnded"]
      367 SETTABLE                         R25 R23 R24
      368 MOVE                             R24 R12
      369 CALL                             R21 3 1
      370 SETTABLEKS                       R21 R20 K71 ["Point"]
      372 GETTABLEKS                       R22 R2 K3 ["isDragging"]
      374 JUMPIF                           R22 ; [+6]
      375 GETTABLEKS                       R22 R2 K84 ["isDragStarting"]
      377 JUMPIF                           R22 ; [+3]
      378 GETTABLEKS                       R21 R1 K85 ["OnHoverMoved"]
      380 JUMPIFNOT                        R21 ; [+15]
      381 GETUPVAL                         R21 3
      382 GETTABLEKS                       R21 R21 K29 ["createElement"]
      384 GETUPVAL                         R22 5
      385 DUPTABLE                         R23 K88 [{"signal", "callback"}]
      386 GETUPVAL                         R24 6
      387 GETTABLEKS                       R24 R24 K89 ["InputChanged"]
      389 SETTABLEKS                       R24 R23 K86 ["signal"]
      391 GETTABLEKS                       R24 R0 K90 ["onInputChanged"]
      393 SETTABLEKS                       R24 R23 K87 ["callback"]
      395 CALL                             R21 2 1
      396 SETTABLEKS                       R21 R20 K72 ["InputListener"]
      398 CALL                             R17 3 1
      399 MOVE                             R16 R17
      400 RETURN                           R16 1

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
       97 DUPTABLE                         R19 K49 [{["Style"] = "ControlPoint", ["ZIndex"] = 0, ["AbsolutePosition"], ["FollowCursorOnDrag"] = True, ["OnSelected"], ["OnMouse1Down"], ["OnHover"], ["OnHoverEnd"], ["OnDeselected"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnd"], ["OnDoubleClicked"], ["OnRightClicked"]}]
       98 GETIMPORT                        R20 K52 [Vector2.new]
      100 LOADN                            R21 0
      101 LOADN                            R22 0
      102 CALL                             R20 2 1
      103 SETTABLEKS                       R20 R19 K36 ["AbsolutePosition"]
      105 DUPCLOSURE                       R20 K53 [PROTO_0]
      106 SETTABLEKS                       R20 R19 K39 ["OnSelected"]
      108 DUPCLOSURE                       R20 K54 [PROTO_1]
      109 SETTABLEKS                       R20 R19 K40 ["OnMouse1Down"]
      111 DUPCLOSURE                       R20 K55 [PROTO_2]
      112 SETTABLEKS                       R20 R19 K41 ["OnHover"]
      114 DUPCLOSURE                       R20 K56 [PROTO_3]
      115 SETTABLEKS                       R20 R19 K42 ["OnHoverEnd"]
      117 DUPCLOSURE                       R20 K57 [PROTO_4]
      118 SETTABLEKS                       R20 R19 K43 ["OnDeselected"]
      120 DUPCLOSURE                       R20 K58 [PROTO_5]
      121 SETTABLEKS                       R20 R19 K44 ["OnDragStart"]
      123 DUPCLOSURE                       R20 K59 [PROTO_6]
      124 SETTABLEKS                       R20 R19 K45 ["OnDragMoved"]
      126 DUPCLOSURE                       R20 K60 [PROTO_7]
      127 SETTABLEKS                       R20 R19 K46 ["OnDragEnd"]
      129 DUPCLOSURE                       R20 K61 [PROTO_8]
      130 SETTABLEKS                       R20 R19 K47 ["OnDoubleClicked"]
      132 DUPCLOSURE                       R20 K62 [PROTO_9]
      133 SETTABLEKS                       R20 R19 K48 ["OnRightClicked"]
      135 SETTABLEKS                       R19 R18 K63 ["defaultProps"]
      137 DUPCLOSURE                       R19 K64 [PROTO_15]
      138 CAPTURE                          VAL R11
      139 SETTABLEKS                       R19 R18 K65 ["init"]
      141 DUPCLOSURE                       R19 K66 [PROTO_16]
      142 CAPTURE                          VAL R14
      143 SETTABLEKS                       R19 R18 K67 ["didUpdate"]
      145 DUPCLOSURE                       R19 K68 [PROTO_17]
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R0
      153 SETTABLEKS                       R19 R18 K69 ["render"]
      155 MOVE                             R19 R7
      156 DUPTABLE                         R20 K70 [{"Stylizer"}]
      157 SETTABLEKS                       R8 R20 K17 ["Stylizer"]
      159 CALL                             R19 1 1
      160 MOVE                             R20 R18
      161 CALL                             R19 1 1
      162 MOVE                             R18 R19
      163 GETTABLEKS                       R19 R3 K71 ["connect"]
      165 LOADNIL                          R20
      166 DUPCLOSURE                       R21 K72 [PROTO_19]
      167 CAPTURE                          VAL R9
      168 CALL                             R19 2 1
      169 MOVE                             R20 R18
      170 CALL                             R19 1 -1
      171 RETURN                           R19 -1
