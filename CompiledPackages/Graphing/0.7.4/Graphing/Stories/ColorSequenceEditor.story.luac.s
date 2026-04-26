PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetDragged"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetDragged"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["XLocked"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["OnKeypointChanged"]
        8 GETIMPORT                        R2 K4 [ColorSequenceKeypoint.new]
       10 GETTABLEKS                       R3 R0 K5 ["X"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K6 ["Value"]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["XLocked"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["OnKeypointDeleted"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETTABLEKS                       R3 R0 K0 ["Keypoint"]
        4 GETTABLEKS                       R2 R3 K1 ["Value"]
        6 LOADK                            R6 K2 [0.2126]
        7 GETTABLEKS                       R7 R2 K3 ["R"]
        9 MUL                              R5 R6 R7
       10 LOADK                            R7 K4 [0.7152]
       11 GETTABLEKS                       R8 R2 K5 ["G"]
       13 MUL                              R6 R7 R8
       14 ADD                              R4 R5 R6
       15 LOADK                            R6 K6 [0.0722]
       16 GETTABLEKS                       R7 R2 K7 ["B"]
       18 MUL                              R5 R6 R7
       19 ADD                              R3 R4 R5
       20 LOADK                            R5 K8 [0.5]
       21 JUMPIFNOTLT                      R3 R5 ; [+8]
       23 GETIMPORT                        R4 K11 [Color3.fromRGB]
       25 LOADN                            R5 255
       26 LOADN                            R6 255
       27 LOADN                            R7 255
       28 CALL                             R4 3 1
       29 JUMP                             ; [+6]
       30 GETIMPORT                        R4 K11 [Color3.fromRGB]
       32 LOADN                            R5 0
       33 LOADN                            R6 0
       34 LOADN                            R7 0
       35 CALL                             R4 3 1
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R0
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          VAL R0
       42 NEWCLOSURE                       R8 P3
       43 CAPTURE                          VAL R0
       44 NEWCLOSURE                       R9 P4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 NEWCLOSURE                       R10 P5
       48 CAPTURE                          VAL R0
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K12 ["createElement"]
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R12 R13 K13 ["Fragment"]
       55 NEWTABLE                         R13 0 0
       57 DUPTABLE                         R14 K16 [{"Triangle", "Line"}]
       58 GETUPVAL                         R16 0
       59 GETTABLEKS                       R15 R16 K12 ["createElement"]
       61 GETUPVAL                         R16 1
       62 DUPTABLE                         R17 K20 [{"Side", "Position", "ZIndex"}]
       63 LOADK                            R18 K21 ["Bottom"]
       64 SETTABLEKS                       R18 R17 K17 ["Side"]
       66 GETTABLEKS                       R18 R1 K22 ["Time"]
       68 SETTABLEKS                       R18 R17 K18 ["Position"]
       70 GETTABLEKS                       R19 R0 K23 ["IsDragged"]
       72 JUMPIFNOT                        R19 ; [+2]
       73 LOADN                            R18 11
       74 JUMP                             ; [+1]
       75 LOADN                            R18 10
       76 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
       78 DUPTABLE                         R18 K25 [{"TriangleVisual"}]
       79 GETUPVAL                         R20 0
       80 GETTABLEKS                       R19 R20 K12 ["createElement"]
       82 LOADK                            R20 K26 ["ImageButton"]
       83 DUPTABLE                         R21 K33 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ImageColor3", "Image"}]
       84 GETIMPORT                        R22 K36 [Vector2.new]
       86 LOADK                            R23 K8 [0.5]
       87 LOADN                            R24 0
       88 CALL                             R22 2 1
       89 SETTABLEKS                       R22 R21 K27 ["AnchorPoint"]
       91 GETIMPORT                        R22 K39 [UDim2.fromScale]
       93 LOADK                            R23 K8 [0.5]
       94 LOADK                            R24 K8 [0.5]
       95 CALL                             R22 2 1
       96 SETTABLEKS                       R22 R21 K18 ["Position"]
       98 GETTABLEKS                       R23 R0 K40 ["IsSelected"]
      100 JUMPIFNOT                        R23 ; [+6]
      101 GETIMPORT                        R22 K42 [UDim2.fromOffset]
      103 LOADN                            R23 14
      104 LOADN                            R24 14
      105 CALL                             R22 2 1
      106 JUMP                             ; [+5]
      107 GETIMPORT                        R22 K42 [UDim2.fromOffset]
      109 LOADN                            R23 10
      110 LOADN                            R24 10
      111 CALL                             R22 2 1
      112 SETTABLEKS                       R22 R21 K28 ["Size"]
      114 LOADN                            R22 1
      115 SETTABLEKS                       R22 R21 K29 ["BackgroundTransparency"]
      117 LOADN                            R22 0
      118 SETTABLEKS                       R22 R21 K30 ["BorderSizePixel"]
      120 GETTABLEKS                       R23 R0 K40 ["IsSelected"]
      122 JUMPIFNOT                        R23 ; [+7]
      123 GETIMPORT                        R22 K11 [Color3.fromRGB]
      125 LOADN                            R23 255
      126 LOADN                            R24 255
      127 LOADN                            R25 100
      128 CALL                             R22 3 1
      129 JUMP                             ; [+6]
      130 GETIMPORT                        R22 K11 [Color3.fromRGB]
      132 LOADN                            R23 255
      133 LOADN                            R24 255
      134 LOADN                            R25 255
      135 CALL                             R22 3 1
      136 SETTABLEKS                       R22 R21 K31 ["ImageColor3"]
      138 LOADK                            R22 K43 ["rbxasset://textures/smallTriangle.png"]
      139 SETTABLEKS                       R22 R21 K32 ["Image"]
      141 DUPTABLE                         R22 K45 [{"Input"}]
      142 GETUPVAL                         R24 0
      143 GETTABLEKS                       R23 R24 K12 ["createElement"]
      145 GETUPVAL                         R24 2
      146 DUPTABLE                         R25 K54 [{"Inflate", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnRightClick"}]
      147 LOADN                            R26 2
      148 SETTABLEKS                       R26 R25 K46 ["Inflate"]
      150 SETTABLEKS                       R5 R25 K47 ["OnHoverStart"]
      152 SETTABLEKS                       R5 R25 K48 ["OnHoverMoved"]
      154 SETTABLEKS                       R6 R25 K49 ["OnHoverEnded"]
      156 SETTABLEKS                       R7 R25 K50 ["OnDragStart"]
      158 SETTABLEKS                       R9 R25 K51 ["OnDragMoved"]
      160 SETTABLEKS                       R8 R25 K52 ["OnDragEnded"]
      162 SETTABLEKS                       R10 R25 K53 ["OnRightClick"]
      164 CALL                             R23 2 1
      165 SETTABLEKS                       R23 R22 K44 ["Input"]
      167 CALL                             R19 3 1
      168 SETTABLEKS                       R19 R18 K24 ["TriangleVisual"]
      170 CALL                             R15 3 1
      171 SETTABLEKS                       R15 R14 K14 ["Triangle"]
      173 GETUPVAL                         R16 0
      174 GETTABLEKS                       R15 R16 K12 ["createElement"]
      176 GETUPVAL                         R16 3
      177 DUPTABLE                         R17 K58 [{"Orientation", "Position", "Color3", "Thickness", "Transparency", "ZIndex"}]
      178 LOADK                            R18 K59 ["Vertical"]
      179 SETTABLEKS                       R18 R17 K55 ["Orientation"]
      181 GETTABLEKS                       R18 R1 K22 ["Time"]
      183 SETTABLEKS                       R18 R17 K18 ["Position"]
      185 SETTABLEKS                       R4 R17 K9 ["Color3"]
      187 LOADN                            R18 2
      188 SETTABLEKS                       R18 R17 K56 ["Thickness"]
      190 GETTABLEKS                       R19 R0 K60 ["IsHovered"]
      192 JUMPIF                           R19 ; [+3]
      193 GETTABLEKS                       R19 R0 K23 ["IsDragged"]
      195 JUMPIFNOT                        R19 ; [+2]
      196 LOADN                            R18 0
      197 JUMP                             ; [+1]
      198 LOADN                            R18 1
      199 SETTABLEKS                       R18 R17 K57 ["Transparency"]
      201 LOADN                            R18 255
      202 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      204 DUPTABLE                         R18 K45 [{"Input"}]
      205 GETUPVAL                         R20 0
      206 GETTABLEKS                       R19 R20 K12 ["createElement"]
      208 GETUPVAL                         R20 2
      209 DUPTABLE                         R21 K61 [{"Inflate", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      210 LOADN                            R22 5
      211 SETTABLEKS                       R22 R21 K46 ["Inflate"]
      213 SETTABLEKS                       R5 R21 K47 ["OnHoverStart"]
      215 SETTABLEKS                       R5 R21 K48 ["OnHoverMoved"]
      217 SETTABLEKS                       R6 R21 K49 ["OnHoverEnded"]
      219 SETTABLEKS                       R7 R21 K50 ["OnDragStart"]
      221 SETTABLEKS                       R9 R21 K51 ["OnDragMoved"]
      223 SETTABLEKS                       R8 R21 K52 ["OnDragEnded"]
      225 CALL                             R19 2 1
      226 SETTABLEKS                       R19 R18 K44 ["Input"]
      228 CALL                             R15 3 1
      229 SETTABLEKS                       R15 R14 K15 ["Line"]
      231 CALL                             R11 3 -1
      232 RETURN                           R11 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["X"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["X"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K1 ["OnAddKeypoint"]
       10 GETIMPORT                        R1 K4 [ColorSequenceKeypoint.new]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K5 ["Keypoints"]
       16 GETUPVAL                         R6 2
       17 GETTABLE                         R4 R5 R6
       18 GETTABLEKS                       R3 R4 K6 ["Value"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 2
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 LOADN                            R3 1
        6 JUMPIFNOT                        R1 ; [+32]
        7 GETTABLEKS                       R5 R0 K1 ["Keypoints"]
        9 LENGTH                           R4 R5
       10 JUMPIFNOTLE                      R3 R4 ; [+28]
       12 ADD                              R7 R3 R4
       13 DIVK                             R6 R7 K2 [2]
       14 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       15 GETIMPORT                        R5 K5 [math.floor]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R8 R0 K1 ["Keypoints"]
       20 GETTABLE                         R7 R8 R5
       21 GETTABLEKS                       R6 R7 K6 ["Time"]
       23 JUMPIFNOTLT                      R6 R1 ; [+3]
       25 ADDK                             R3 R5 K7 [1]
       26 JUMP                             ; [+11]
       27 GETTABLEKS                       R8 R0 K1 ["Keypoints"]
       29 GETTABLE                         R7 R8 R5
       30 GETTABLEKS                       R6 R7 K6 ["Time"]
       32 JUMPIFNOTLT                      R1 R6 ; [+3]
       34 SUBK                             R4 R5 K7 [1]
       35 JUMP                             ; [+2]
       36 MOVE                             R3 R5
       37 SUBK                             R4 R5 K7 [1]
       38 JUMPBACK                         ; [-29]
       39 LOADN                            R5 2
       40 FASTCALL2                        MATH_MAX R5 R3 ; [+4]
       42 MOVE                             R6 R3
       43 GETIMPORT                        R4 K9 [math.max]
       45 CALL                             R4 2 1
       46 MOVE                             R3 R4
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K10 ["createElement"]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R5 R6 K11 ["Fragment"]
       53 NEWTABLE                         R6 0 0
       55 DUPTABLE                         R7 K14 [{"Input", "GhostLine"}]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R8 R9 K10 ["createElement"]
       59 GETUPVAL                         R9 1
       60 DUPTABLE                         R10 K20 [{"ZIndex", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnPress"}]
       61 LOADN                            R11 2
       62 SETTABLEKS                       R11 R10 K15 ["ZIndex"]
       64 NEWCLOSURE                       R11 P0
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R11 R10 K16 ["OnHoverStart"]
       68 NEWCLOSURE                       R11 P1
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R11 R10 K17 ["OnHoverMoved"]
       72 NEWCLOSURE                       R11 P2
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R11 R10 K18 ["OnHoverEnded"]
       76 NEWCLOSURE                       R11 P3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          REF R3
       80 SETTABLEKS                       R11 R10 K19 ["OnPress"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K12 ["Input"]
       85 GETTABLEKS                       R8 R0 K21 ["Enabled"]
       87 JUMPIFNOT                        R8 ; [+30]
       88 MOVE                             R8 R1
       89 JUMPIFNOT                        R8 ; [+28]
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R8 R9 K10 ["createElement"]
       93 GETUPVAL                         R9 2
       94 DUPTABLE                         R10 K27 [{"Orientation", "Position", "Color3", "Thickness", "Transparency", "ZIndex"}]
       95 LOADK                            R11 K28 ["Vertical"]
       96 SETTABLEKS                       R11 R10 K22 ["Orientation"]
       98 SETTABLEKS                       R1 R10 K23 ["Position"]
      100 GETIMPORT                        R11 K30 [Color3.fromRGB]
      102 LOADN                            R12 155
      103 LOADN                            R13 155
      104 LOADN                            R14 155
      105 CALL                             R11 3 1
      106 SETTABLEKS                       R11 R10 K24 ["Color3"]
      108 LOADN                            R11 1
      109 SETTABLEKS                       R11 R10 K25 ["Thickness"]
      111 LOADN                            R11 0
      112 SETTABLEKS                       R11 R10 K26 ["Transparency"]
      114 LOADN                            R11 255
      115 SETTABLEKS                       R11 R10 K15 ["ZIndex"]
      117 CALL                             R8 2 1
      118 SETTABLEKS                       R8 R7 K13 ["GhostLine"]
      120 CALL                             R4 3 -1
      121 CLOSEUPVALS                      R3
      122 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Keypoints"]
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 1
        6 LOADN                            R3 1
        7 JUMPIFNOTLT                      R3 R2 ; [+18]
        9 GETTABLE                         R4 R1 R2
       10 GETTABLEKS                       R3 R4 K1 ["Time"]
       12 SUBK                             R6 R2 K2 [1]
       13 GETTABLE                         R5 R1 R6
       14 GETTABLEKS                       R4 R5 K1 ["Time"]
       16 JUMPIFNOTLT                      R3 R4 ; [+9]
       18 GETTABLE                         R3 R1 R2
       19 SUBK                             R5 R2 K2 [1]
       20 GETTABLE                         R4 R1 R5
       21 SETTABLE                         R4 R1 R2
       22 SUBK                             R4 R2 K2 [1]
       23 SETTABLE                         R3 R1 R4
       24 SUBK                             R2 R2 K2 [1]
       25 JUMPBACK                         ; [-20]
       26 GETUPVAL                         R3 1
       27 JUMPIFNOTLT                      R2 R3 ; [+4]
       29 GETUPVAL                         R3 2
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 1
       33 LENGTH                           R4 R1
       34 JUMPIFNOTLT                      R3 R4 ; [+18]
       36 GETTABLE                         R5 R1 R3
       37 GETTABLEKS                       R4 R5 K1 ["Time"]
       39 ADDK                             R7 R3 K2 [1]
       40 GETTABLE                         R6 R1 R7
       41 GETTABLEKS                       R5 R6 K1 ["Time"]
       43 JUMPIFNOTLT                      R5 R4 ; [+9]
       45 GETTABLE                         R4 R1 R3
       46 ADDK                             R6 R3 K2 [1]
       47 GETTABLE                         R5 R1 R6
       48 SETTABLE                         R5 R1 R3
       49 ADDK                             R5 R3 K2 [1]
       50 SETTABLE                         R4 R1 R5
       51 ADDK                             R3 R3 K2 [1]
       52 JUMPBACK                         ; [-20]
       53 GETUPVAL                         R4 1
       54 JUMPIFNOTLT                      R4 R3 ; [+4]
       56 GETUPVAL                         R4 2
       57 MOVE                             R5 R3
       58 CALL                             R4 1 0
       59 GETUPVAL                         R4 3
       60 GETIMPORT                        R5 K5 [ColorSequence.new]
       62 MOVE                             R6 R1
       63 CALL                             R5 1 -1
       64 CALL                             R4 -1 0
       65 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Keypoints"]
        3 GETIMPORT                        R1 K3 [table.remove]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 2
        9 GETIMPORT                        R2 K6 [ColorSequence.new]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R2 1
        3 JUMP                             ; [+1]
        4 LOADN                            R2 255
        5 CALL                             R1 1 0
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 0
        7 JUMP                             ; [+10]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 4
       12 GETUPVAL                         R2 5
       13 JUMPIFNOTEQ                      R1 R2 ; [+4]
       15 GETUPVAL                         R1 0
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 6
       19 JUMPIFNOT                        R0 ; [+2]
       20 GETUPVAL                         R2 1
       21 JUMP                             ; [+1]
       22 LOADN                            R2 255
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 7
       25 JUMPIFNOT                        R0 ; [+2]
       26 GETUPVAL                         R2 1
       27 JUMP                             ; [+1]
       28 LOADN                            R2 255
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Keypoints"]
        3 FASTCALL3                        TABLE_INSERT R2 R1 R0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 MOVE                             R6 R0
        8 GETIMPORT                        R3 K3 [table.insert]
       10 CALL                             R3 3 0
       11 GETUPVAL                         R3 1
       12 GETIMPORT                        R4 K6 [ColorSequence.new]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 0
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [ColorSequence.new]
        5 NEWTABLE                         R3 0 4
        7 GETIMPORT                        R4 K5 [ColorSequenceKeypoint.new]
        9 LOADN                            R5 0
       10 GETIMPORT                        R6 K8 [Color3.fromRGB]
       12 LOADN                            R7 255
       13 LOADN                            R8 100
       14 LOADN                            R9 100
       15 CALL                             R6 3 -1
       16 CALL                             R4 -1 1
       17 GETIMPORT                        R5 K5 [ColorSequenceKeypoint.new]
       19 LOADK                            R6 K9 [0.4]
       20 GETIMPORT                        R7 K8 [Color3.fromRGB]
       22 LOADN                            R8 255
       23 LOADN                            R9 255
       24 LOADN                            R10 255
       25 CALL                             R7 3 -1
       26 CALL                             R5 -1 1
       27 GETIMPORT                        R6 K5 [ColorSequenceKeypoint.new]
       29 LOADK                            R7 K10 [0.5]
       30 GETIMPORT                        R8 K8 [Color3.fromRGB]
       32 LOADN                            R9 100
       33 LOADN                            R10 255
       34 LOADN                            R11 100
       35 CALL                             R8 3 -1
       36 CALL                             R6 -1 1
       37 GETIMPORT                        R7 K5 [ColorSequenceKeypoint.new]
       39 LOADN                            R8 1
       40 GETIMPORT                        R9 K8 [Color3.fromRGB]
       42 LOADN                            R10 20
       43 LOADN                            R11 50
       44 LOADN                            R12 20
       45 CALL                             R9 3 -1
       46 CALL                             R7 -1 -1
       47 SETLIST                          R3 R4 -1 [1]
       49 CALL                             R2 1 -1
       50 CALL                             R1 -1 2
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K0 ["useState"]
       54 LOADN                            R4 255
       55 CALL                             R3 1 2
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K0 ["useState"]
       59 LOADN                            R6 255
       60 CALL                             R5 1 2
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R7 R8 K0 ["useState"]
       64 LOADN                            R8 255
       65 CALL                             R7 1 2
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R9 R10 K0 ["useState"]
       69 LOADN                            R10 255
       70 CALL                             R9 1 2
       71 DUPTABLE                         R11 K12 [{"Gradient"}]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R12 R13 K13 ["createElement"]
       75 LOADK                            R13 K14 ["Frame"]
       76 DUPTABLE                         R14 K18 [{"BackgroundColor3", "Size", "ZIndex"}]
       77 GETIMPORT                        R15 K8 [Color3.fromRGB]
       79 LOADN                            R16 255
       80 LOADN                            R17 255
       81 LOADN                            R18 255
       82 CALL                             R15 3 1
       83 SETTABLEKS                       R15 R14 K15 ["BackgroundColor3"]
       85 GETIMPORT                        R15 K21 [UDim2.fromScale]
       87 LOADN                            R16 1
       88 LOADN                            R17 1
       89 CALL                             R15 2 1
       90 SETTABLEKS                       R15 R14 K16 ["Size"]
       92 LOADN                            R15 246
       93 SETTABLEKS                       R15 R14 K17 ["ZIndex"]
       95 DUPTABLE                         R15 K23 [{"UIGradient"}]
       96 GETUPVAL                         R17 0
       97 GETTABLEKS                       R16 R17 K13 ["createElement"]
       99 LOADK                            R17 K22 ["UIGradient"]
      100 DUPTABLE                         R18 K25 [{"Color"}]
      101 SETTABLEKS                       R1 R18 K24 ["Color"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K22 ["UIGradient"]
      106 CALL                             R12 3 1
      107 SETTABLEKS                       R12 R11 K11 ["Gradient"]
      109 DUPTABLE                         R12 K27 [{"XScale"}]
      110 GETUPVAL                         R14 0
      111 GETTABLEKS                       R13 R14 K13 ["createElement"]
      113 GETUPVAL                         R14 1
      114 DUPTABLE                         R15 K31 [{"Side", "Schema", "TickThickness"}]
      115 LOADK                            R16 K32 ["Top"]
      116 SETTABLEKS                       R16 R15 K28 ["Side"]
      118 DUPTABLE                         R16 K35 [{"Type", "Unit"}]
      119 LOADK                            R17 K36 ["Uniform"]
      120 SETTABLEKS                       R17 R16 K33 ["Type"]
      122 LOADK                            R17 K37 [0.1]
      123 SETTABLEKS                       R17 R16 K34 ["Unit"]
      125 SETTABLEKS                       R16 R15 K29 ["Schema"]
      127 LOADN                            R16 1
      128 SETTABLEKS                       R16 R15 K30 ["TickThickness"]
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K26 ["XScale"]
      133 GETTABLEKS                       R13 R1 K38 ["Keypoints"]
      135 LOADNIL                          R14
      136 LOADNIL                          R15
      137 FORGPREP                         R13
      138 MOVE                             R18 R16
      139 LOADN                            R19 0
      140 JUMPIFNOTLT                      R19 R9 ; [+18]
      142 JUMPIFEQ                         R9 R7 ; [+16]
      144 JUMPIFNOTEQ                      R18 R9 ; [+3]
      146 MOVE                             R18 R7
      147 JUMP                             ; [+11]
      148 JUMPIFNOTLT                      R9 R18 ; [+5]
      150 JUMPIFNOTLE                      R18 R7 ; [+3]
      152 SUBK                             R18 R18 K39 [1]
      153 JUMP                             ; [+5]
      154 JUMPIFNOTLT                      R18 R9 ; [+4]
      156 JUMPIFNOTLE                      R7 R18 ; [+2]
      158 ADDK                             R18 R18 K39 [1]
      159 NEWCLOSURE                       R19 P0
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R2
      164 NEWCLOSURE                       R20 P1
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R2
      168 NEWCLOSURE                       R21 P2
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R4
      172 NEWCLOSURE                       R22 P3
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R10
      181 LOADK                            R24 K40 ["Keypoint"]
      182 MOVE                             R25 R18
      183 CONCAT                           R23 R24 R25
      184 GETUPVAL                         R25 0
      185 GETTABLEKS                       R24 R25 K13 ["createElement"]
      187 GETUPVAL                         R25 2
      188 DUPTABLE                         R26 K49 [{"Keypoint", "XLocked", "OnKeypointChanged", "OnKeypointDeleted", "IsHovered", "IsSelected", "IsDragged", "SetHovered", "SetDragged"}]
      189 SETTABLEKS                       R17 R26 K40 ["Keypoint"]
      191 LOADB                            R27 1
      192 JUMPIFEQKN                       R18 K39 [1] ; [+8]
      194 GETTABLEKS                       R29 R1 K38 ["Keypoints"]
      196 LENGTH                           R28 R29
      197 JUMPIFEQ                         R18 R28 ; [+2]
      199 LOADB                            R27 0 +1
      200 LOADB                            R27 1
      201 SETTABLEKS                       R27 R26 K41 ["XLocked"]
      203 SETTABLEKS                       R19 R26 K42 ["OnKeypointChanged"]
      205 SETTABLEKS                       R20 R26 K43 ["OnKeypointDeleted"]
      207 JUMPIFEQ                         R5 R18 ; [+2]
      209 LOADB                            R27 0 +1
      210 LOADB                            R27 1
      211 SETTABLEKS                       R27 R26 K44 ["IsHovered"]
      213 JUMPIFEQ                         R3 R18 ; [+2]
      215 LOADB                            R27 0 +1
      216 LOADB                            R27 1
      217 SETTABLEKS                       R27 R26 K45 ["IsSelected"]
      219 JUMPIFEQ                         R7 R18 ; [+2]
      221 LOADB                            R27 0 +1
      222 LOADB                            R27 1
      223 SETTABLEKS                       R27 R26 K46 ["IsDragged"]
      225 SETTABLEKS                       R21 R26 K47 ["SetHovered"]
      227 SETTABLEKS                       R22 R26 K48 ["SetDragged"]
      229 CALL                             R24 2 1
      230 SETTABLE                         R24 R12 R23
      231 FORGLOOP                         R13 2 ; [-94]
      233 GETUPVAL                         R14 0
      234 GETTABLEKS                       R13 R14 K13 ["createElement"]
      236 GETUPVAL                         R14 3
      237 DUPTABLE                         R15 K52 [{"Enabled", "Keypoints", "OnAddKeypoint"}]
      238 LOADB                            R16 0
      239 GETTABLEKS                       R18 R1 K38 ["Keypoints"]
      241 LENGTH                           R17 R18
      242 LOADN                            R18 20
      243 JUMPIFNOTLT                      R17 R18 ; [+10]
      245 LOADB                            R16 0
      246 LOADN                            R17 0
      247 JUMPIFNOTLT                      R5 R17 ; [+6]
      249 LOADN                            R17 0
      250 JUMPIFLT                         R7 R17 ; [+2]
      252 LOADB                            R16 0 +1
      253 LOADB                            R16 1
      254 SETTABLEKS                       R16 R15 K50 ["Enabled"]
      256 GETTABLEKS                       R16 R1 K38 ["Keypoints"]
      258 SETTABLEKS                       R16 R15 K38 ["Keypoints"]
      260 NEWCLOSURE                       R16 P4
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R2
      263 CAPTURE                          VAL R4
      264 SETTABLEKS                       R16 R15 K51 ["OnAddKeypoint"]
      266 CALL                             R13 2 1
      267 SETTABLEKS                       R13 R11 K53 ["Add"]
      269 GETUPVAL                         R14 0
      270 GETTABLEKS                       R13 R14 K13 ["createElement"]
      272 GETUPVAL                         R14 4
      273 DUPTABLE                         R15 K57 [{"GraphRect", "children", "childrenUnclipped"}]
      274 GETIMPORT                        R16 K59 [Rect.new]
      276 LOADN                            R17 0
      277 LOADN                            R18 0
      278 LOADN                            R19 1
      279 LOADN                            R20 1
      280 CALL                             R16 4 1
      281 SETTABLEKS                       R16 R15 K54 ["GraphRect"]
      283 SETTABLEKS                       R11 R15 K55 ["children"]
      285 SETTABLEKS                       R12 R15 K56 ["childrenUnclipped"]
      287 CALL                             R13 2 -1
      288 RETURN                           R13 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K4 [{"Size", "BackgroundTransparency"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 100
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 LOADN                            R4 1
       15 SETTABLEKS                       R4 R3 K3 ["BackgroundTransparency"]
       17 DUPTABLE                         R4 K9 [{"Editor"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["createElement"]
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R0
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K8 ["Editor"]
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Canvas"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["GridLine"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["InputDetector"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K12 ["SidePositioner"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R9 K13 ["Scale"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K14 [PROTO_6]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R9 K15 [PROTO_11]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 DUPCLOSURE                       R10 K16 [PROTO_17]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R3
       64 DUPTABLE                         R11 K20 [{"summary", "story", "controls"}]
       65 LOADK                            R12 K21 ["An editor for a ColorSequence object, such as the value of the property UIGradient.Color."]
       66 SETTABLEKS                       R12 R11 K17 ["summary"]
       68 DUPCLOSURE                       R12 K22 [PROTO_18]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R10
       71 SETTABLEKS                       R12 R11 K18 ["story"]
       73 NEWTABLE                         R12 0 0
       75 SETTABLEKS                       R12 R11 K19 ["controls"]
       77 RETURN                           R11 1
