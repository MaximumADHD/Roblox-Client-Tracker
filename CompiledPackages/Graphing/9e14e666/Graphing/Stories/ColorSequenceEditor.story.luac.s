PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetDragged"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetDragged"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["XLocked"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["OnKeypointChanged"]
        8 GETIMPORT                        R2 K4 [ColorSequenceKeypoint.new]
       10 GETTABLEKS                       R3 R0 K5 ["X"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K6 ["Value"]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["XLocked"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["OnKeypointDeleted"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETTABLEKS                       R2 R0 K0 ["Keypoint"]
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
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
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K12 ["createElement"]
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R12 R12 K13 ["Fragment"]
       55 NEWTABLE                         R13 0 0
       57 DUPTABLE                         R14 K16 [{"Triangle", "Line"}]
       58 GETUPVAL                         R15 0
       59 GETTABLEKS                       R15 R15 K12 ["createElement"]
       61 GETUPVAL                         R16 1
       62 DUPTABLE                         R17 K21 [{["Position"], ["Image"] = "", ["ZIndex"]}]
       63 GETIMPORT                        R18 K24 [Vector2.new]
       65 GETTABLEKS                       R19 R1 K25 ["Time"]
       67 LOADN                            R20 0
       68 CALL                             R18 2 1
       69 SETTABLEKS                       R18 R17 K17 ["Position"]
       71 GETTABLEKS                       R19 R0 K26 ["IsDragged"]
       73 JUMPIFNOT                        R19 ; [+2]
       74 LOADN                            R18 11
       75 JUMP                             ; [+1]
       76 LOADN                            R18 10
       77 SETTABLEKS                       R18 R17 K20 ["ZIndex"]
       79 DUPTABLE                         R18 K28 [{"TriangleVisual"}]
       80 GETUPVAL                         R19 0
       81 GETTABLEKS                       R19 R19 K12 ["createElement"]
       83 LOADK                            R20 K29 ["ImageButton"]
       84 DUPTABLE                         R21 K38 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ImageColor3"], ["Image"] = "rbxasset://textures/smallTriangle.png"}]
       85 GETIMPORT                        R22 K24 [Vector2.new]
       87 LOADK                            R23 K8 [0.5]
       88 LOADN                            R24 0
       89 CALL                             R22 2 1
       90 SETTABLEKS                       R22 R21 K30 ["AnchorPoint"]
       92 GETIMPORT                        R22 K41 [UDim2.fromScale]
       94 LOADK                            R23 K8 [0.5]
       95 LOADK                            R24 K8 [0.5]
       96 CALL                             R22 2 1
       97 SETTABLEKS                       R22 R21 K17 ["Position"]
       99 GETTABLEKS                       R23 R0 K42 ["IsSelected"]
      101 JUMPIFNOT                        R23 ; [+6]
      102 GETIMPORT                        R22 K44 [UDim2.fromOffset]
      104 LOADN                            R23 14
      105 LOADN                            R24 14
      106 CALL                             R22 2 1
      107 JUMP                             ; [+5]
      108 GETIMPORT                        R22 K44 [UDim2.fromOffset]
      110 LOADN                            R23 10
      111 LOADN                            R24 10
      112 CALL                             R22 2 1
      113 SETTABLEKS                       R22 R21 K31 ["Size"]
      115 GETTABLEKS                       R23 R0 K42 ["IsSelected"]
      117 JUMPIFNOT                        R23 ; [+7]
      118 GETIMPORT                        R22 K11 [Color3.fromRGB]
      120 LOADN                            R23 255
      121 LOADN                            R24 255
      122 LOADN                            R25 100
      123 CALL                             R22 3 1
      124 JUMP                             ; [+6]
      125 GETIMPORT                        R22 K11 [Color3.fromRGB]
      127 LOADN                            R23 255
      128 LOADN                            R24 255
      129 LOADN                            R25 255
      130 CALL                             R22 3 1
      131 SETTABLEKS                       R22 R21 K36 ["ImageColor3"]
      133 DUPTABLE                         R22 K46 [{"Input"}]
      134 GETUPVAL                         R23 0
      135 GETTABLEKS                       R23 R23 K12 ["createElement"]
      137 GETUPVAL                         R24 2
      138 DUPTABLE                         R25 K56 [{["Inflate"] = 2, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["OnRightClick"]}]
      139 SETTABLEKS                       R5 R25 K49 ["OnHoverStart"]
      141 SETTABLEKS                       R5 R25 K50 ["OnHoverMoved"]
      143 SETTABLEKS                       R6 R25 K51 ["OnHoverEnded"]
      145 SETTABLEKS                       R7 R25 K52 ["OnDragStart"]
      147 SETTABLEKS                       R9 R25 K53 ["OnDragMoved"]
      149 SETTABLEKS                       R8 R25 K54 ["OnDragEnded"]
      151 SETTABLEKS                       R10 R25 K55 ["OnRightClick"]
      153 CALL                             R23 2 1
      154 SETTABLEKS                       R23 R22 K45 ["Input"]
      156 CALL                             R19 3 1
      157 SETTABLEKS                       R19 R18 K27 ["TriangleVisual"]
      159 CALL                             R15 3 1
      160 SETTABLEKS                       R15 R14 K14 ["Triangle"]
      162 GETUPVAL                         R15 0
      163 GETTABLEKS                       R15 R15 K12 ["createElement"]
      165 GETUPVAL                         R16 3
      166 DUPTABLE                         R17 K62 [{["Orientation"] = "Vertical", ["Value"], ["Color3"], ["Thickness"] = 2, ["Transparency"], ["ZIndex"] = -1}]
      167 GETTABLEKS                       R18 R1 K25 ["Time"]
      169 SETTABLEKS                       R18 R17 K1 ["Value"]
      171 SETTABLEKS                       R4 R17 K9 ["Color3"]
      173 GETTABLEKS                       R19 R0 K63 ["IsHovered"]
      175 JUMPIF                           R19 ; [+3]
      176 GETTABLEKS                       R19 R0 K26 ["IsDragged"]
      178 JUMPIFNOT                        R19 ; [+2]
      179 LOADN                            R18 0
      180 JUMP                             ; [+1]
      181 LOADN                            R18 1
      182 SETTABLEKS                       R18 R17 K60 ["Transparency"]
      184 DUPTABLE                         R18 K46 [{"Input"}]
      185 GETUPVAL                         R19 0
      186 GETTABLEKS                       R19 R19 K12 ["createElement"]
      188 GETUPVAL                         R20 2
      189 DUPTABLE                         R21 K65 [{["Inflate"] = 5, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"]}]
      190 SETTABLEKS                       R5 R21 K49 ["OnHoverStart"]
      192 SETTABLEKS                       R5 R21 K50 ["OnHoverMoved"]
      194 SETTABLEKS                       R6 R21 K51 ["OnHoverEnded"]
      196 SETTABLEKS                       R7 R21 K52 ["OnDragStart"]
      198 SETTABLEKS                       R9 R21 K53 ["OnDragMoved"]
      200 SETTABLEKS                       R8 R21 K54 ["OnDragEnded"]
      202 CALL                             R19 2 1
      203 SETTABLEKS                       R19 R18 K45 ["Input"]
      205 CALL                             R15 3 1
      206 SETTABLEKS                       R15 R14 K15 ["Line"]
      208 CALL                             R11 3 -1
      209 RETURN                           R11 -1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["OnAddKeypoint"]
       10 GETIMPORT                        R1 K4 [ColorSequenceKeypoint.new]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K5 ["Keypoints"]
       16 GETUPVAL                         R5 2
       17 GETTABLE                         R3 R4 R5
       18 GETTABLEKS                       R3 R3 K6 ["Value"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 2
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
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
       18 GETTABLEKS                       R7 R0 K1 ["Keypoints"]
       20 GETTABLE                         R6 R7 R5
       21 GETTABLEKS                       R6 R6 K6 ["Time"]
       23 JUMPIFNOTLT                      R6 R1 ; [+3]
       25 ADDK                             R3 R5 K7 [1]
       26 JUMP                             ; [+11]
       27 GETTABLEKS                       R7 R0 K1 ["Keypoints"]
       29 GETTABLE                         R6 R7 R5
       30 GETTABLEKS                       R6 R6 K6 ["Time"]
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
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K10 ["createElement"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K11 ["Fragment"]
       53 NEWTABLE                         R6 0 0
       55 DUPTABLE                         R7 K14 [{"Input", "GhostLine"}]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K10 ["createElement"]
       59 GETUPVAL                         R9 1
       60 DUPTABLE                         R10 K20 [{["ZIndex"] = 2, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnPress"]}]
       61 NEWCLOSURE                       R11 P0
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R11 R10 K16 ["OnHoverStart"]
       65 NEWCLOSURE                       R11 P1
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R11 R10 K17 ["OnHoverMoved"]
       69 NEWCLOSURE                       R11 P2
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R11 R10 K18 ["OnHoverEnded"]
       73 NEWCLOSURE                       R11 P3
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R1
       76 CAPTURE                          REF R3
       77 SETTABLEKS                       R11 R10 K19 ["OnPress"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K12 ["Input"]
       82 GETTABLEKS                       R8 R0 K21 ["Enabled"]
       84 JUMPIFNOT                        R8 ; [+18]
       85 MOVE                             R8 R1
       86 JUMPIFNOT                        R8 ; [+16]
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R8 R8 K10 ["createElement"]
       90 GETUPVAL                         R9 2
       91 DUPTABLE                         R10 K30 [{["Orientation"] = "Vertical", ["Value"], ["Color3"], ["Thickness"] = 1, ["Transparency"] = 0, ["ZIndex"] = -1}]
       92 SETTABLEKS                       R1 R10 K24 ["Value"]
       94 GETIMPORT                        R11 K32 [Color3.fromRGB]
       96 LOADN                            R12 155
       97 LOADN                            R13 155
       98 LOADN                            R14 155
       99 CALL                             R11 3 1
      100 SETTABLEKS                       R11 R10 K25 ["Color3"]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K13 ["GhostLine"]
      105 CALL                             R4 3 -1
      106 CLOSEUPVALS                      R3
      107 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Keypoints"]
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 1
        6 LOADN                            R3 1
        7 JUMPIFNOTLT                      R3 R2 ; [+18]
        9 GETTABLE                         R3 R1 R2
       10 GETTABLEKS                       R3 R3 K1 ["Time"]
       12 SUBK                             R5 R2 K2 [1]
       13 GETTABLE                         R4 R1 R5
       14 GETTABLEKS                       R4 R4 K1 ["Time"]
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
       36 GETTABLE                         R4 R1 R3
       37 GETTABLEKS                       R4 R4 K1 ["Time"]
       39 ADDK                             R6 R3 K2 [1]
       40 GETTABLE                         R5 R1 R6
       41 GETTABLEKS                       R5 R5 K1 ["Time"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Keypoints"]
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
        4 LOADN                            R2 -1
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
       22 LOADN                            R2 -1
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 7
       25 JUMPIFNOT                        R0 ; [+2]
       26 GETUPVAL                         R2 1
       27 JUMP                             ; [+1]
       28 LOADN                            R2 -1
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Keypoints"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
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
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K0 ["useState"]
       54 LOADN                            R4 -1
       55 CALL                             R3 1 2
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K0 ["useState"]
       59 LOADN                            R6 -1
       60 CALL                             R5 1 2
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K0 ["useState"]
       64 LOADN                            R8 -1
       65 CALL                             R7 1 2
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K0 ["useState"]
       69 LOADN                            R10 -1
       70 CALL                             R9 1 2
       71 DUPTABLE                         R11 K12 [{"Gradient"}]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K13 ["createElement"]
       75 LOADK                            R13 K14 ["Frame"]
       76 DUPTABLE                         R14 K19 [{["BackgroundColor3"], ["Size"], ["ZIndex"] = -10}]
       77 GETIMPORT                        R15 K8 [Color3.fromRGB]
       79 LOADN                            R16 255
       80 LOADN                            R17 255
       81 LOADN                            R18 255
       82 CALL                             R15 3 1
       83 SETTABLEKS                       R15 R14 K15 ["BackgroundColor3"]
       85 GETIMPORT                        R15 K22 [UDim2.fromScale]
       87 LOADN                            R16 1
       88 LOADN                            R17 1
       89 CALL                             R15 2 1
       90 SETTABLEKS                       R15 R14 K16 ["Size"]
       92 DUPTABLE                         R15 K24 [{"UIGradient"}]
       93 GETUPVAL                         R16 0
       94 GETTABLEKS                       R16 R16 K13 ["createElement"]
       96 LOADK                            R17 K23 ["UIGradient"]
       97 DUPTABLE                         R18 K26 [{"Color"}]
       98 SETTABLEKS                       R1 R18 K25 ["Color"]
      100 CALL                             R16 2 1
      101 SETTABLEKS                       R16 R15 K23 ["UIGradient"]
      103 CALL                             R12 3 1
      104 SETTABLEKS                       R12 R11 K11 ["Gradient"]
      106 DUPTABLE                         R12 K28 [{"XScale"}]
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R13 R13 K13 ["createElement"]
      110 GETUPVAL                         R14 1
      111 DUPTABLE                         R15 K34 [{["Side"] = "Top", ["Schema"], ["TickThickness"] = 1}]
      112 DUPTABLE                         R16 K39 [{["Type"] = "Uniform", ["Unit"] = 0.1}]
      113 SETTABLEKS                       R16 R15 K31 ["Schema"]
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K27 ["XScale"]
      118 GETTABLEKS                       R13 R1 K40 ["Keypoints"]
      120 LOADNIL                          R14
      121 LOADNIL                          R15
      122 FORGPREP                         R13
      123 MOVE                             R18 R16
      124 LOADN                            R19 0
      125 JUMPIFNOTLT                      R19 R9 ; [+18]
      127 JUMPIFEQ                         R9 R7 ; [+16]
      129 JUMPIFNOTEQ                      R18 R9 ; [+3]
      131 MOVE                             R18 R7
      132 JUMP                             ; [+11]
      133 JUMPIFNOTLT                      R9 R18 ; [+5]
      135 JUMPIFNOTLE                      R18 R7 ; [+3]
      137 SUBK                             R18 R18 K33 [1]
      138 JUMP                             ; [+5]
      139 JUMPIFNOTLT                      R18 R9 ; [+4]
      141 JUMPIFNOTLE                      R7 R18 ; [+2]
      143 ADDK                             R18 R18 K33 [1]
      144 NEWCLOSURE                       R19 P0
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R2
      149 NEWCLOSURE                       R20 P1
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R2
      153 NEWCLOSURE                       R21 P2
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R4
      157 NEWCLOSURE                       R22 P3
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R10
      166 LOADK                            R24 K41 ["Keypoint"]
      167 MOVE                             R25 R18
      168 CONCAT                           R23 R24 R25
      169 GETUPVAL                         R24 0
      170 GETTABLEKS                       R24 R24 K13 ["createElement"]
      172 GETUPVAL                         R25 2
      173 DUPTABLE                         R26 K50 [{"Keypoint", "XLocked", "OnKeypointChanged", "OnKeypointDeleted", "IsHovered", "IsSelected", "IsDragged", "SetHovered", "SetDragged"}]
      174 SETTABLEKS                       R17 R26 K41 ["Keypoint"]
      176 LOADB                            R27 1
      177 JUMPIFEQKN                       R18 K33 [1] ; [+8]
      179 GETTABLEKS                       R29 R1 K40 ["Keypoints"]
      181 LENGTH                           R28 R29
      182 JUMPIFEQ                         R18 R28 ; [+2]
      184 LOADB                            R27 0 +1
      185 LOADB                            R27 1
      186 SETTABLEKS                       R27 R26 K42 ["XLocked"]
      188 SETTABLEKS                       R19 R26 K43 ["OnKeypointChanged"]
      190 SETTABLEKS                       R20 R26 K44 ["OnKeypointDeleted"]
      192 JUMPIFEQ                         R5 R18 ; [+2]
      194 LOADB                            R27 0 +1
      195 LOADB                            R27 1
      196 SETTABLEKS                       R27 R26 K45 ["IsHovered"]
      198 JUMPIFEQ                         R3 R18 ; [+2]
      200 LOADB                            R27 0 +1
      201 LOADB                            R27 1
      202 SETTABLEKS                       R27 R26 K46 ["IsSelected"]
      204 JUMPIFEQ                         R7 R18 ; [+2]
      206 LOADB                            R27 0 +1
      207 LOADB                            R27 1
      208 SETTABLEKS                       R27 R26 K47 ["IsDragged"]
      210 SETTABLEKS                       R21 R26 K48 ["SetHovered"]
      212 SETTABLEKS                       R22 R26 K49 ["SetDragged"]
      214 CALL                             R24 2 1
      215 SETTABLE                         R24 R12 R23
      216 FORGLOOP                         R13 2 ; [-94]
      218 GETUPVAL                         R13 0
      219 GETTABLEKS                       R13 R13 K13 ["createElement"]
      221 GETUPVAL                         R14 3
      222 DUPTABLE                         R15 K53 [{"Enabled", "Keypoints", "OnAddKeypoint"}]
      223 LOADB                            R16 0
      224 GETTABLEKS                       R18 R1 K40 ["Keypoints"]
      226 LENGTH                           R17 R18
      227 LOADN                            R18 20
      228 JUMPIFNOTLT                      R17 R18 ; [+10]
      230 LOADB                            R16 0
      231 LOADN                            R17 0
      232 JUMPIFNOTLT                      R5 R17 ; [+6]
      234 LOADN                            R17 0
      235 JUMPIFLT                         R7 R17 ; [+2]
      237 LOADB                            R16 0 +1
      238 LOADB                            R16 1
      239 SETTABLEKS                       R16 R15 K51 ["Enabled"]
      241 GETTABLEKS                       R16 R1 K40 ["Keypoints"]
      243 SETTABLEKS                       R16 R15 K40 ["Keypoints"]
      245 NEWCLOSURE                       R16 P4
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R4
      249 SETTABLEKS                       R16 R15 K52 ["OnAddKeypoint"]
      251 CALL                             R13 2 1
      252 SETTABLEKS                       R13 R11 K54 ["Add"]
      254 GETUPVAL                         R13 0
      255 GETTABLEKS                       R13 R13 K13 ["createElement"]
      257 GETUPVAL                         R14 4
      258 DUPTABLE                         R15 K58 [{"GraphRect", "children", "childrenUnclipped"}]
      259 GETIMPORT                        R16 K60 [Rect.new]
      261 LOADN                            R17 0
      262 LOADN                            R18 0
      263 LOADN                            R19 1
      264 LOADN                            R20 1
      265 CALL                             R16 4 1
      266 SETTABLEKS                       R16 R15 K55 ["GraphRect"]
      268 SETTABLEKS                       R11 R15 K56 ["children"]
      270 SETTABLEKS                       R12 R15 K57 ["childrenUnclipped"]
      272 CALL                             R13 2 -1
      273 RETURN                           R13 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{["Size"], ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R4 K8 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 100
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 DUPTABLE                         R4 K10 [{"Editor"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R0
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K9 ["Editor"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Canvas"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["GridLine"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["InputDetector"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Point"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Scale"]
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
       64 DUPTABLE                         R11 K21 [{["summary"] = "ColorSequence Editor Widget", ["story"], ["controls"]}]
       65 DUPCLOSURE                       R12 K22 [PROTO_18]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R10
       68 SETTABLEKS                       R12 R11 K19 ["story"]
       70 NEWTABLE                         R12 0 0
       72 SETTABLEKS                       R12 R11 K20 ["controls"]
       74 RETURN                           R11 1
