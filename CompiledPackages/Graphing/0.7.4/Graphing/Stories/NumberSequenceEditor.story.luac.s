PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Envelope"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["SetDragged"]
        8 LOADB                            R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["XLocked"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K4 ["Time"]
        9 GETTABLEKS                       R3 R0 K5 ["Y"]
       11 CALL                             R1 2 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R5 R0 K5 ["Y"]
       16 FASTCALL1                        MATH_ABS R5 ; [+2]
       17 GETIMPORT                        R4 K8 [math.abs]
       19 CALL                             R4 1 1
       20 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K10 [math.min]
       25 CALL                             R2 2 1
       26 MOVE                             R1 R2
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K11 ["MaxY"]
       30 GETTABLEKS                       R7 R0 K5 ["Y"]
       32 SUB                              R5 R6 R7
       33 FASTCALL1                        MATH_ABS R5 ; [+2]
       34 GETIMPORT                        R4 K8 [math.abs]
       36 CALL                             R4 1 1
       37 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K10 [math.min]
       42 CALL                             R2 2 1
       43 MOVE                             R1 R2
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R2 R3 K12 ["OnKeypointChanged"]
       47 GETIMPORT                        R3 K14 [NumberSequenceKeypoint.new]
       49 GETTABLEKS                       R4 R0 K15 ["X"]
       51 GETTABLEKS                       R5 R0 K5 ["Y"]
       53 MOVE                             R6 R1
       54 CALL                             R3 3 -1
       55 CALL                             R2 -1 0
       56 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetDragged"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["XLocked"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["OnKeypointDeleted"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADN                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 DUPTABLE                         R6 K6 [{"Position", "OutlineThickness", "ZIndex"}]
       12 GETIMPORT                        R7 K9 [Vector2.new]
       14 GETTABLEKS                       R8 R1 K10 ["Time"]
       16 GETTABLEKS                       R9 R1 K11 ["Value"]
       18 CALL                             R7 2 1
       19 SETTABLEKS                       R7 R6 K3 ["Position"]
       21 GETTABLEKS                       R8 R0 K12 ["IsSelected"]
       23 JUMPIFNOT                        R8 ; [+2]
       24 LOADN                            R7 2
       25 JUMP                             ; [+1]
       26 LOADN                            R7 0
       27 SETTABLEKS                       R7 R6 K4 ["OutlineThickness"]
       29 GETTABLEKS                       R8 R0 K13 ["IsDragged"]
       31 JUMPIFNOT                        R8 ; [+2]
       32 LOADN                            R7 15
       33 JUMP                             ; [+1]
       34 LOADN                            R7 10
       35 SETTABLEKS                       R7 R6 K5 ["ZIndex"]
       37 DUPTABLE                         R7 K15 [{"Input"}]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R8 R9 K2 ["createElement"]
       41 GETUPVAL                         R9 2
       42 DUPTABLE                         R10 K23 [{"OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnRightClick"}]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R11 R10 K16 ["OnHoverStart"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R11 R10 K17 ["OnHoverMoved"]
       51 NEWCLOSURE                       R11 P2
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R11 R10 K18 ["OnHoverEnded"]
       55 NEWCLOSURE                       R11 P3
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R11 R10 K19 ["OnDragStart"]
       61 NEWCLOSURE                       R11 P4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R11 R10 K20 ["OnDragMoved"]
       67 NEWCLOSURE                       R11 P5
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R11 R10 K21 ["OnDragEnded"]
       71 NEWCLOSURE                       R11 P6
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R11 R10 K22 ["OnRightClick"]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K14 ["Input"]
       78 CALL                             R4 3 -1
       79 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetHovered"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetDragged"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 LOADN                            R2 0
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["Direction"]
        4 GETTABLEKS                       R6 R0 K1 ["Y"]
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K2 ["Value"]
        9 SUB                              R5 R6 R7
       10 MUL                              R3 R4 R5
       11 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       13 GETIMPORT                        R1 K5 [math.max]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K2 ["Value"]
       19 FASTCALL1                        MATH_ABS R5 ; [+2]
       20 GETIMPORT                        R4 K7 [math.abs]
       22 CALL                             R4 1 1
       23 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K9 [math.min]
       28 CALL                             R2 2 1
       29 MOVE                             R1 R2
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K10 ["MaxY"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K2 ["Value"]
       36 SUB                              R5 R6 R7
       37 FASTCALL1                        MATH_ABS R5 ; [+2]
       38 GETIMPORT                        R4 K7 [math.abs]
       40 CALL                             R4 1 1
       41 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
       43 MOVE                             R3 R1
       44 GETIMPORT                        R2 K9 [math.min]
       46 CALL                             R2 2 1
       47 MOVE                             R1 R2
       48 GETIMPORT                        R2 K13 [NumberSequenceKeypoint.new]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R3 R4 K14 ["Time"]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K2 ["Value"]
       56 MOVE                             R5 R1
       57 CALL                             R2 3 1
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K15 ["OnKeypointChanged"]
       61 MOVE                             R4 R2
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetDragged"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETIMPORT                        R2 K3 [Vector2.new]
        4 GETTABLEKS                       R3 R1 K4 ["Time"]
        6 GETTABLEKS                       R5 R1 K5 ["Value"]
        8 GETTABLEKS                       R7 R0 K6 ["Direction"]
       10 GETTABLEKS                       R8 R1 K7 ["Envelope"]
       12 MUL                              R6 R7 R8
       13 ADD                              R4 R5 R6
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K3 [Vector2.new]
       17 LOADK                            R4 K8 [0.5]
       18 GETTABLEKS                       R6 R0 K6 ["Direction"]
       20 LOADN                            R7 0
       21 JUMPIFNOTLT                      R7 R6 ; [+3]
       23 LOADN                            R5 1
       24 JUMP                             ; [+1]
       25 LOADN                            R5 0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K9 ["createElement"]
       30 GETUPVAL                         R5 1
       31 DUPTABLE                         R6 K12 [{"Position", "ZIndex"}]
       32 SETTABLEKS                       R2 R6 K10 ["Position"]
       34 GETTABLEKS                       R8 R0 K13 ["IsDragged"]
       36 JUMPIFNOT                        R8 ; [+2]
       37 LOADN                            R7 14
       38 JUMP                             ; [+1]
       39 LOADN                            R7 9
       40 SETTABLEKS                       R7 R6 K11 ["ZIndex"]
       42 DUPTABLE                         R7 K15 [{"LineVisual"}]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K9 ["createElement"]
       46 LOADK                            R9 K16 ["Frame"]
       47 DUPTABLE                         R10 K21 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
       48 SETTABLEKS                       R3 R10 K17 ["AnchorPoint"]
       50 GETIMPORT                        R11 K24 [UDim2.fromScale]
       52 LOADK                            R12 K8 [0.5]
       53 LOADK                            R13 K8 [0.5]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K10 ["Position"]
       57 GETTABLEKS                       R12 R0 K25 ["IsHovered"]
       59 JUMPIF                           R12 ; [+3]
       60 GETTABLEKS                       R12 R0 K13 ["IsDragged"]
       62 JUMPIFNOT                        R12 ; [+6]
       63 GETIMPORT                        R11 K27 [UDim2.fromOffset]
       65 LOADN                            R12 5
       66 LOADN                            R13 20
       67 CALL                             R11 2 1
       68 JUMP                             ; [+5]
       69 GETIMPORT                        R11 K27 [UDim2.fromOffset]
       71 LOADN                            R12 2
       72 LOADN                            R13 15
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K18 ["Size"]
       76 GETIMPORT                        R11 K30 [Color3.fromRGB]
       78 LOADN                            R12 255
       79 LOADN                            R13 255
       80 LOADN                            R14 255
       81 CALL                             R11 3 1
       82 SETTABLEKS                       R11 R10 K19 ["BackgroundColor3"]
       84 LOADN                            R11 0
       85 SETTABLEKS                       R11 R10 K20 ["BorderSizePixel"]
       87 DUPTABLE                         R11 K32 [{"Input"}]
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R12 R13 K9 ["createElement"]
       91 GETUPVAL                         R13 2
       92 DUPTABLE                         R14 K40 [{"Inflate", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
       93 LOADN                            R15 5
       94 SETTABLEKS                       R15 R14 K33 ["Inflate"]
       96 NEWCLOSURE                       R15 P0
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R15 R14 K34 ["OnHoverStart"]
      100 NEWCLOSURE                       R15 P1
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R15 R14 K35 ["OnHoverMoved"]
      104 NEWCLOSURE                       R15 P2
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R15 R14 K36 ["OnHoverEnded"]
      108 NEWCLOSURE                       R15 P3
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R15 R14 K37 ["OnDragStart"]
      112 NEWCLOSURE                       R15 P4
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R15 R14 K38 ["OnDragMoved"]
      117 NEWCLOSURE                       R15 P5
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R15 R14 K39 ["OnDragEnded"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K31 ["Input"]
      124 CALL                             R8 3 1
      125 SETTABLEKS                       R8 R7 K14 ["LineVisual"]
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K1 ["OnAddKeypoint"]
       10 GETIMPORT                        R1 K4 [NumberSequenceKeypoint.new]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K5 ["X"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K6 ["Y"]
       18 LOADN                            R4 0
       19 CALL                             R1 3 1
       20 GETUPVAL                         R2 2
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 LOADN                            R3 1
        6 JUMPIFNOT                        R1 ; [+36]
        7 GETTABLEKS                       R5 R0 K1 ["Keypoints"]
        9 LENGTH                           R4 R5
       10 JUMPIFNOTLE                      R3 R4 ; [+32]
       12 ADD                              R7 R3 R4
       13 DIVK                             R6 R7 K2 [2]
       14 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       15 GETIMPORT                        R5 K5 [math.floor]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R8 R0 K1 ["Keypoints"]
       20 GETTABLE                         R7 R8 R5
       21 GETTABLEKS                       R6 R7 K6 ["Time"]
       23 GETTABLEKS                       R7 R1 K7 ["X"]
       25 JUMPIFNOTLT                      R6 R7 ; [+3]
       27 ADDK                             R3 R5 K8 [1]
       28 JUMP                             ; [+13]
       29 GETTABLEKS                       R8 R0 K1 ["Keypoints"]
       31 GETTABLE                         R7 R8 R5
       32 GETTABLEKS                       R6 R7 K6 ["Time"]
       34 GETTABLEKS                       R7 R1 K7 ["X"]
       36 JUMPIFNOTLT                      R7 R6 ; [+3]
       38 SUBK                             R4 R5 K8 [1]
       39 JUMP                             ; [+2]
       40 MOVE                             R3 R5
       41 SUBK                             R4 R5 K8 [1]
       42 JUMPBACK                         ; [-33]
       43 LOADN                            R5 2
       44 FASTCALL2                        MATH_MAX R5 R3 ; [+4]
       46 MOVE                             R6 R3
       47 GETIMPORT                        R4 K10 [math.max]
       49 CALL                             R4 2 1
       50 MOVE                             R3 R4
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K11 ["createElement"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K12 ["Fragment"]
       57 NEWTABLE                         R6 0 0
       59 DUPTABLE                         R7 K16 [{"Input", "GhostPoint", "GhostCurve"}]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K11 ["createElement"]
       63 GETUPVAL                         R9 1
       64 DUPTABLE                         R10 K22 [{"ZIndex", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnPress"}]
       65 LOADN                            R11 2
       66 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
       68 NEWCLOSURE                       R11 P0
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R11 R10 K18 ["OnHoverStart"]
       72 NEWCLOSURE                       R11 P1
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R11 R10 K19 ["OnHoverMoved"]
       76 NEWCLOSURE                       R11 P2
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R11 R10 K20 ["OnHoverEnded"]
       80 NEWCLOSURE                       R11 P3
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R1
       83 CAPTURE                          REF R3
       84 SETTABLEKS                       R11 R10 K21 ["OnPress"]
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K13 ["Input"]
       89 GETTABLEKS                       R8 R0 K23 ["Enabled"]
       91 JUMPIFNOT                        R8 ; [+24]
       92 MOVE                             R8 R1
       93 JUMPIFNOT                        R8 ; [+22]
       94 GETUPVAL                         R9 0
       95 GETTABLEKS                       R8 R9 K11 ["createElement"]
       97 GETUPVAL                         R9 2
       98 DUPTABLE                         R10 K27 [{"Position", "Color3", "Size", "ZIndex"}]
       99 SETTABLEKS                       R1 R10 K24 ["Position"]
      101 GETIMPORT                        R11 K29 [Color3.fromRGB]
      103 LOADN                            R12 155
      104 LOADN                            R13 155
      105 LOADN                            R14 155
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K25 ["Color3"]
      109 LOADN                            R11 5
      110 SETTABLEKS                       R11 R10 K26 ["Size"]
      112 LOADN                            R11 255
      113 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
      115 CALL                             R8 2 1
      116 SETTABLEKS                       R8 R7 K14 ["GhostPoint"]
      118 GETTABLEKS                       R8 R0 K23 ["Enabled"]
      120 JUMPIFNOT                        R8 ; [+65]
      121 MOVE                             R8 R1
      122 JUMPIFNOT                        R8 ; [+63]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R8 R9 K11 ["createElement"]
      126 GETUPVAL                         R9 3
      127 DUPTABLE                         R10 K32 [{"Points", "Color3", "Thickness", "ZIndex"}]
      128 NEWTABLE                         R11 0 3
      130 DUPTABLE                         R12 K33 [{"Position"}]
      131 GETIMPORT                        R13 K36 [Vector2.new]
      133 GETTABLEKS                       R16 R0 K1 ["Keypoints"]
      135 SUBK                             R17 R3 K8 [1]
      136 GETTABLE                         R15 R16 R17
      137 GETTABLEKS                       R14 R15 K6 ["Time"]
      139 GETTABLEKS                       R17 R0 K1 ["Keypoints"]
      141 SUBK                             R18 R3 K8 [1]
      142 GETTABLE                         R16 R17 R18
      143 GETTABLEKS                       R15 R16 K37 ["Value"]
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K24 ["Position"]
      148 DUPTABLE                         R13 K33 [{"Position"}]
      149 SETTABLEKS                       R1 R13 K24 ["Position"]
      151 DUPTABLE                         R14 K33 [{"Position"}]
      152 GETIMPORT                        R15 K36 [Vector2.new]
      154 GETTABLEKS                       R18 R0 K1 ["Keypoints"]
      156 GETTABLE                         R17 R18 R3
      157 GETTABLEKS                       R16 R17 K6 ["Time"]
      159 GETTABLEKS                       R19 R0 K1 ["Keypoints"]
      161 GETTABLE                         R18 R19 R3
      162 GETTABLEKS                       R17 R18 K37 ["Value"]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K24 ["Position"]
      167 SETLIST                          R11 R12 3 [1]
      169 SETTABLEKS                       R11 R10 K30 ["Points"]
      171 GETIMPORT                        R11 K29 [Color3.fromRGB]
      173 LOADN                            R12 155
      174 LOADN                            R13 155
      175 LOADN                            R14 155
      176 CALL                             R11 3 1
      177 SETTABLEKS                       R11 R10 K25 ["Color3"]
      179 LOADN                            R11 1
      180 SETTABLEKS                       R11 R10 K31 ["Thickness"]
      182 LOADN                            R11 255
      183 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
      185 CALL                             R8 2 1
      186 SETTABLEKS                       R8 R7 K15 ["GhostCurve"]
      188 CALL                             R4 3 -1
      189 CLOSEUPVALS                      R3
      190 RETURN                           R4 -1

PROTO_20:
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
       60 GETIMPORT                        R5 K5 [NumberSequence.new]
       62 MOVE                             R6 R1
       63 CALL                             R5 1 -1
       64 CALL                             R4 -1 0
       65 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Keypoints"]
        3 GETIMPORT                        R1 K3 [table.remove]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 2
        9 GETIMPORT                        R2 K6 [NumberSequence.new]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Keypoints"]
        3 FASTCALL3                        TABLE_INSERT R2 R1 R0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 MOVE                             R6 R0
        8 GETIMPORT                        R3 K3 [table.insert]
       10 CALL                             R3 3 0
       11 GETUPVAL                         R3 1
       12 GETIMPORT                        R4 K6 [NumberSequence.new]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 0
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [NumberSequence.new]
        5 NEWTABLE                         R3 0 4
        7 GETIMPORT                        R4 K5 [NumberSequenceKeypoint.new]
        9 LOADN                            R5 0
       10 LOADN                            R6 5
       11 CALL                             R4 2 1
       12 GETIMPORT                        R5 K5 [NumberSequenceKeypoint.new]
       14 LOADK                            R6 K6 [0.3]
       15 LOADN                            R7 8
       16 LOADN                            R8 2
       17 CALL                             R5 3 1
       18 GETIMPORT                        R6 K5 [NumberSequenceKeypoint.new]
       20 LOADK                            R7 K7 [0.4]
       21 LOADN                            R8 7
       22 LOADN                            R9 3
       23 CALL                             R6 3 1
       24 GETIMPORT                        R7 K5 [NumberSequenceKeypoint.new]
       26 LOADN                            R8 1
       27 LOADN                            R9 2
       28 LOADN                            R10 1
       29 CALL                             R7 3 -1
       30 SETLIST                          R3 R4 -1 [1]
       32 CALL                             R2 1 -1
       33 CALL                             R1 -1 2
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K0 ["useState"]
       37 LOADN                            R4 255
       38 CALL                             R3 1 2
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K0 ["useState"]
       42 LOADN                            R6 255
       43 CALL                             R5 1 2
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K0 ["useState"]
       47 LOADN                            R8 255
       48 CALL                             R7 1 2
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K0 ["useState"]
       52 LOADN                            R10 255
       53 CALL                             R9 1 2
       54 DUPTABLE                         R11 K9 [{"Grid"}]
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R12 R13 K10 ["createElement"]
       58 GETUPVAL                         R13 1
       59 DUPTABLE                         R14 K15 [{"XAxis", "XAxisMinor", "YAxis", "YAxisMinor"}]
       60 DUPTABLE                         R15 K18 [{"Type", "Unit"}]
       61 LOADK                            R16 K19 ["Uniform"]
       62 SETTABLEKS                       R16 R15 K16 ["Type"]
       64 LOADK                            R16 K20 [0.2]
       65 SETTABLEKS                       R16 R15 K17 ["Unit"]
       67 SETTABLEKS                       R15 R14 K11 ["XAxis"]
       69 DUPTABLE                         R15 K18 [{"Type", "Unit"}]
       70 LOADK                            R16 K19 ["Uniform"]
       71 SETTABLEKS                       R16 R15 K16 ["Type"]
       73 LOADK                            R16 K21 [0.1]
       74 SETTABLEKS                       R16 R15 K17 ["Unit"]
       76 SETTABLEKS                       R15 R14 K12 ["XAxisMinor"]
       78 DUPTABLE                         R15 K18 [{"Type", "Unit"}]
       79 LOADK                            R16 K19 ["Uniform"]
       80 SETTABLEKS                       R16 R15 K16 ["Type"]
       82 LOADN                            R16 2
       83 SETTABLEKS                       R16 R15 K17 ["Unit"]
       85 SETTABLEKS                       R15 R14 K13 ["YAxis"]
       87 DUPTABLE                         R15 K18 [{"Type", "Unit"}]
       88 LOADK                            R16 K19 ["Uniform"]
       89 SETTABLEKS                       R16 R15 K16 ["Type"]
       91 LOADN                            R16 1
       92 SETTABLEKS                       R16 R15 K17 ["Unit"]
       94 SETTABLEKS                       R15 R14 K14 ["YAxisMinor"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K8 ["Grid"]
       99 DUPTABLE                         R12 K24 [{"XScale", "YScale"}]
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R13 R14 K10 ["createElement"]
      103 GETUPVAL                         R14 2
      104 DUPTABLE                         R15 K28 [{"Side", "Schema", "TickLength"}]
      105 LOADK                            R16 K29 ["Bottom"]
      106 SETTABLEKS                       R16 R15 K25 ["Side"]
      108 DUPTABLE                         R16 K18 [{"Type", "Unit"}]
      109 LOADK                            R17 K19 ["Uniform"]
      110 SETTABLEKS                       R17 R16 K16 ["Type"]
      112 LOADK                            R17 K21 [0.1]
      113 SETTABLEKS                       R17 R16 K17 ["Unit"]
      115 SETTABLEKS                       R16 R15 K26 ["Schema"]
      117 LOADN                            R16 0
      118 SETTABLEKS                       R16 R15 K27 ["TickLength"]
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K22 ["XScale"]
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R13 R14 K10 ["createElement"]
      126 GETUPVAL                         R14 2
      127 DUPTABLE                         R15 K28 [{"Side", "Schema", "TickLength"}]
      128 LOADK                            R16 K30 ["Left"]
      129 SETTABLEKS                       R16 R15 K25 ["Side"]
      131 DUPTABLE                         R16 K18 [{"Type", "Unit"}]
      132 LOADK                            R17 K19 ["Uniform"]
      133 SETTABLEKS                       R17 R16 K16 ["Type"]
      135 LOADN                            R17 1
      136 SETTABLEKS                       R17 R16 K17 ["Unit"]
      138 SETTABLEKS                       R16 R15 K26 ["Schema"]
      140 LOADN                            R16 0
      141 SETTABLEKS                       R16 R15 K27 ["TickLength"]
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K23 ["YScale"]
      146 NEWTABLE                         R13 0 0
      148 NEWTABLE                         R14 0 0
      150 NEWTABLE                         R15 0 0
      152 GETTABLEKS                       R16 R1 K31 ["Keypoints"]
      154 LOADNIL                          R17
      155 LOADNIL                          R18
      156 FORGPREP                         R16
      157 MOVE                             R21 R19
      158 LOADN                            R22 0
      159 JUMPIFNOTLT                      R22 R9 ; [+18]
      161 JUMPIFEQ                         R9 R7 ; [+16]
      163 JUMPIFNOTEQ                      R21 R9 ; [+3]
      165 MOVE                             R21 R7
      166 JUMP                             ; [+11]
      167 JUMPIFNOTLT                      R9 R21 ; [+5]
      169 JUMPIFNOTLE                      R21 R7 ; [+3]
      171 SUBK                             R21 R21 K32 [1]
      172 JUMP                             ; [+5]
      173 JUMPIFNOTLT                      R21 R9 ; [+4]
      175 JUMPIFNOTLE                      R7 R21 ; [+2]
      177 ADDK                             R21 R21 K32 [1]
      178 GETIMPORT                        R22 K34 [Vector2.new]
      180 GETTABLEKS                       R23 R20 K35 ["Time"]
      182 GETTABLEKS                       R24 R20 K36 ["Value"]
      184 CALL                             R22 2 1
      185 GETIMPORT                        R23 K34 [Vector2.new]
      187 GETTABLEKS                       R24 R20 K35 ["Time"]
      189 GETTABLEKS                       R26 R20 K36 ["Value"]
      191 GETTABLEKS                       R27 R20 K37 ["Envelope"]
      193 ADD                              R25 R26 R27
      194 CALL                             R23 2 1
      195 GETIMPORT                        R24 K34 [Vector2.new]
      197 GETTABLEKS                       R25 R20 K35 ["Time"]
      199 GETTABLEKS                       R27 R20 K36 ["Value"]
      201 GETTABLEKS                       R28 R20 K37 ["Envelope"]
      203 SUB                              R26 R27 R28
      204 CALL                             R24 2 1
      205 DUPTABLE                         R25 K39 [{"Position"}]
      206 SETTABLEKS                       R22 R25 K38 ["Position"]
      208 SETTABLE                         R25 R13 R19
      209 DUPTABLE                         R25 K39 [{"Position"}]
      210 SETTABLEKS                       R23 R25 K38 ["Position"]
      212 SETTABLE                         R25 R14 R19
      213 DUPTABLE                         R25 K39 [{"Position"}]
      214 SETTABLEKS                       R24 R25 K38 ["Position"]
      216 SETTABLE                         R25 R15 R19
      217 NEWCLOSURE                       R25 P0
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R2
      222 NEWCLOSURE                       R26 P1
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R19
      225 CAPTURE                          VAL R2
      226 NEWCLOSURE                       R27 P2
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R4
      230 NEWCLOSURE                       R28 P3
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R19
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R10
      239 LOADK                            R30 K40 ["Keypoint"]
      240 MOVE                             R31 R21
      241 CONCAT                           R29 R30 R31
      242 GETUPVAL                         R31 0
      243 GETTABLEKS                       R30 R31 K10 ["createElement"]
      245 GETUPVAL                         R31 3
      246 DUPTABLE                         R32 K50 [{"Keypoint", "MaxY", "XLocked", "OnKeypointChanged", "OnKeypointDeleted", "IsSelected", "IsHovered", "IsDragged", "SetHovered", "SetDragged"}]
      247 SETTABLEKS                       R20 R32 K40 ["Keypoint"]
      249 LOADN                            R33 10
      250 SETTABLEKS                       R33 R32 K41 ["MaxY"]
      252 LOADB                            R33 1
      253 JUMPIFEQKN                       R21 K32 [1] ; [+8]
      255 GETTABLEKS                       R35 R1 K31 ["Keypoints"]
      257 LENGTH                           R34 R35
      258 JUMPIFEQ                         R21 R34 ; [+2]
      260 LOADB                            R33 0 +1
      261 LOADB                            R33 1
      262 SETTABLEKS                       R33 R32 K42 ["XLocked"]
      264 SETTABLEKS                       R25 R32 K43 ["OnKeypointChanged"]
      266 SETTABLEKS                       R26 R32 K44 ["OnKeypointDeleted"]
      268 JUMPIFEQ                         R3 R21 ; [+2]
      270 LOADB                            R33 0 +1
      271 LOADB                            R33 1
      272 SETTABLEKS                       R33 R32 K45 ["IsSelected"]
      274 JUMPIFEQ                         R5 R21 ; [+2]
      276 LOADB                            R33 0 +1
      277 LOADB                            R33 1
      278 SETTABLEKS                       R33 R32 K46 ["IsHovered"]
      280 JUMPIFEQ                         R7 R21 ; [+2]
      282 LOADB                            R33 0 +1
      283 LOADB                            R33 1
      284 SETTABLEKS                       R33 R32 K47 ["IsDragged"]
      286 SETTABLEKS                       R27 R32 K48 ["SetHovered"]
      288 SETTABLEKS                       R28 R32 K49 ["SetDragged"]
      290 CALL                             R30 2 1
      291 SETTABLE                         R30 R11 R29
      292 LOADK                            R30 K51 ["EnvelopeTop"]
      293 MOVE                             R31 R21
      294 CONCAT                           R29 R30 R31
      295 GETUPVAL                         R31 0
      296 GETTABLEKS                       R30 R31 K10 ["createElement"]
      298 GETUPVAL                         R31 4
      299 DUPTABLE                         R32 K53 [{"Keypoint", "Direction", "MaxY", "OnKeypointChanged", "IsHovered", "IsDragged", "SetHovered", "SetDragged"}]
      300 SETTABLEKS                       R20 R32 K40 ["Keypoint"]
      302 LOADN                            R33 1
      303 SETTABLEKS                       R33 R32 K52 ["Direction"]
      305 LOADN                            R33 10
      306 SETTABLEKS                       R33 R32 K41 ["MaxY"]
      308 SETTABLEKS                       R25 R32 K43 ["OnKeypointChanged"]
      310 JUMPIFEQ                         R5 R21 ; [+2]
      312 LOADB                            R33 0 +1
      313 LOADB                            R33 1
      314 SETTABLEKS                       R33 R32 K46 ["IsHovered"]
      316 JUMPIFEQ                         R7 R21 ; [+2]
      318 LOADB                            R33 0 +1
      319 LOADB                            R33 1
      320 SETTABLEKS                       R33 R32 K47 ["IsDragged"]
      322 SETTABLEKS                       R27 R32 K48 ["SetHovered"]
      324 SETTABLEKS                       R28 R32 K49 ["SetDragged"]
      326 CALL                             R30 2 1
      327 SETTABLE                         R30 R11 R29
      328 LOADK                            R30 K54 ["EnvelopeBottom"]
      329 MOVE                             R31 R21
      330 CONCAT                           R29 R30 R31
      331 GETUPVAL                         R31 0
      332 GETTABLEKS                       R30 R31 K10 ["createElement"]
      334 GETUPVAL                         R31 4
      335 DUPTABLE                         R32 K53 [{"Keypoint", "Direction", "MaxY", "OnKeypointChanged", "IsHovered", "IsDragged", "SetHovered", "SetDragged"}]
      336 SETTABLEKS                       R20 R32 K40 ["Keypoint"]
      338 LOADN                            R33 255
      339 SETTABLEKS                       R33 R32 K52 ["Direction"]
      341 LOADN                            R33 10
      342 SETTABLEKS                       R33 R32 K41 ["MaxY"]
      344 SETTABLEKS                       R25 R32 K43 ["OnKeypointChanged"]
      346 JUMPIFEQ                         R5 R21 ; [+2]
      348 LOADB                            R33 0 +1
      349 LOADB                            R33 1
      350 SETTABLEKS                       R33 R32 K46 ["IsHovered"]
      352 JUMPIFEQ                         R7 R21 ; [+2]
      354 LOADB                            R33 0 +1
      355 LOADB                            R33 1
      356 SETTABLEKS                       R33 R32 K47 ["IsDragged"]
      358 SETTABLEKS                       R27 R32 K48 ["SetHovered"]
      360 SETTABLEKS                       R28 R32 K49 ["SetDragged"]
      362 CALL                             R30 2 1
      363 SETTABLE                         R30 R11 R29
      364 FORGLOOP                         R16 2 ; [-208]
      366 GETUPVAL                         R17 0
      367 GETTABLEKS                       R16 R17 K10 ["createElement"]
      369 GETUPVAL                         R17 5
      370 DUPTABLE                         R18 K56 [{"Points"}]
      371 SETTABLEKS                       R13 R18 K55 ["Points"]
      373 CALL                             R16 2 1
      374 SETTABLEKS                       R16 R11 K57 ["Curve"]
      376 GETUPVAL                         R17 0
      377 GETTABLEKS                       R16 R17 K10 ["createElement"]
      379 GETUPVAL                         R17 5
      380 DUPTABLE                         R18 K56 [{"Points"}]
      381 SETTABLEKS                       R14 R18 K55 ["Points"]
      383 CALL                             R16 2 1
      384 SETTABLEKS                       R16 R11 K58 ["TopCurve"]
      386 GETUPVAL                         R17 0
      387 GETTABLEKS                       R16 R17 K10 ["createElement"]
      389 GETUPVAL                         R17 5
      390 DUPTABLE                         R18 K56 [{"Points"}]
      391 SETTABLEKS                       R15 R18 K55 ["Points"]
      393 CALL                             R16 2 1
      394 SETTABLEKS                       R16 R11 K59 ["BottomCurve"]
      396 GETUPVAL                         R17 0
      397 GETTABLEKS                       R16 R17 K10 ["createElement"]
      399 GETUPVAL                         R17 6
      400 DUPTABLE                         R18 K62 [{"Enabled", "Keypoints", "OnAddKeypoint"}]
      401 LOADB                            R19 0
      402 GETTABLEKS                       R21 R1 K31 ["Keypoints"]
      404 LENGTH                           R20 R21
      405 LOADN                            R21 20
      406 JUMPIFNOTLT                      R20 R21 ; [+10]
      408 LOADB                            R19 0
      409 LOADN                            R20 0
      410 JUMPIFNOTLT                      R5 R20 ; [+6]
      412 LOADN                            R20 0
      413 JUMPIFLT                         R7 R20 ; [+2]
      415 LOADB                            R19 0 +1
      416 LOADB                            R19 1
      417 SETTABLEKS                       R19 R18 K60 ["Enabled"]
      419 GETTABLEKS                       R19 R1 K31 ["Keypoints"]
      421 SETTABLEKS                       R19 R18 K31 ["Keypoints"]
      423 NEWCLOSURE                       R19 P4
      424 CAPTURE                          VAL R1
      425 CAPTURE                          VAL R2
      426 CAPTURE                          VAL R4
      427 SETTABLEKS                       R19 R18 K61 ["OnAddKeypoint"]
      429 CALL                             R16 2 1
      430 SETTABLEKS                       R16 R11 K63 ["Add"]
      432 GETUPVAL                         R17 0
      433 GETTABLEKS                       R16 R17 K10 ["createElement"]
      435 GETUPVAL                         R17 7
      436 DUPTABLE                         R18 K67 [{"GraphRect", "children", "childrenUnclipped"}]
      437 GETIMPORT                        R19 K69 [Rect.new]
      439 LOADN                            R20 0
      440 LOADN                            R21 0
      441 LOADN                            R22 1
      442 LOADN                            R23 10
      443 CALL                             R19 4 1
      444 SETTABLEKS                       R19 R18 K64 ["GraphRect"]
      446 SETTABLEKS                       R11 R18 K65 ["children"]
      448 SETTABLEKS                       R12 R18 K66 ["childrenUnclipped"]
      450 CALL                             R16 2 -1
      451 RETURN                           R16 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K4 [{"Size", "BackgroundTransparency"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 44
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
       25 GETTABLEKS                       R5 R6 K10 ["Curve"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Grid"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K12 ["InputDetector"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R9 K13 ["Point"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R10 K14 ["Positioner"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R11 K15 ["Scale"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K16 [PROTO_7]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R11 K17 [PROTO_14]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R6
       71 DUPCLOSURE                       R12 K18 [PROTO_19]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R4
       76 DUPCLOSURE                       R13 K19 [PROTO_25]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R3
       85 DUPTABLE                         R14 K23 [{"summary", "story", "controls"}]
       86 LOADK                            R15 K24 ["An editor for a NumberSequence object, such as the value of the property ParticleEmitter.Size."]
       87 SETTABLEKS                       R15 R14 K20 ["summary"]
       89 DUPCLOSURE                       R15 K25 [PROTO_26]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R13
       92 SETTABLEKS                       R15 R14 K21 ["story"]
       94 NEWTABLE                         R15 0 0
       96 SETTABLEKS                       R15 R14 K22 ["controls"]
       98 RETURN                           R14 1
