PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Envelope"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["SetDragged"]
        8 LOADB                            R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["XLocked"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["Time"]
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
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K11 ["MaxY"]
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
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K12 ["OnKeypointChanged"]
       47 GETIMPORT                        R3 K14 [NumberSequenceKeypoint.new]
       49 GETTABLEKS                       R4 R0 K15 ["X"]
       51 GETTABLEKS                       R5 R0 K5 ["Y"]
       53 MOVE                             R6 R1
       54 CALL                             R3 3 -1
       55 CALL                             R2 -1 0
       56 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["XLocked"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["OnKeypointDeleted"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADN                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
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
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K2 ["createElement"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 LOADN                            R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["Direction"]
        4 GETTABLEKS                       R6 R0 K1 ["Y"]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K2 ["Value"]
        9 SUB                              R5 R6 R7
       10 MUL                              R3 R4 R5
       11 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       13 GETIMPORT                        R1 K5 [math.max]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["Value"]
       19 FASTCALL1                        MATH_ABS R5 ; [+2]
       20 GETIMPORT                        R4 K7 [math.abs]
       22 CALL                             R4 1 1
       23 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K9 [math.min]
       28 CALL                             R2 2 1
       29 MOVE                             R1 R2
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K10 ["MaxY"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K2 ["Value"]
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
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K14 ["Time"]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K2 ["Value"]
       56 MOVE                             R5 R1
       57 CALL                             R2 3 1
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K15 ["OnKeypointChanged"]
       61 MOVE                             R4 R2
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
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
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K9 ["createElement"]
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
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K9 ["createElement"]
       46 LOADK                            R9 K16 ["Frame"]
       47 DUPTABLE                         R10 K22 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       48 SETTABLEKS                       R3 R10 K17 ["AnchorPoint"]
       50 GETIMPORT                        R11 K25 [UDim2.fromScale]
       52 LOADK                            R12 K8 [0.5]
       53 LOADK                            R13 K8 [0.5]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K10 ["Position"]
       57 GETTABLEKS                       R12 R0 K26 ["IsHovered"]
       59 JUMPIF                           R12 ; [+3]
       60 GETTABLEKS                       R12 R0 K13 ["IsDragged"]
       62 JUMPIFNOT                        R12 ; [+6]
       63 GETIMPORT                        R11 K28 [UDim2.fromOffset]
       65 LOADN                            R12 5
       66 LOADN                            R13 20
       67 CALL                             R11 2 1
       68 JUMP                             ; [+5]
       69 GETIMPORT                        R11 K28 [UDim2.fromOffset]
       71 LOADN                            R12 2
       72 LOADN                            R13 15
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K18 ["Size"]
       76 GETIMPORT                        R11 K31 [Color3.fromRGB]
       78 LOADN                            R12 255
       79 LOADN                            R13 255
       80 LOADN                            R14 255
       81 CALL                             R11 3 1
       82 SETTABLEKS                       R11 R10 K19 ["BackgroundColor3"]
       84 DUPTABLE                         R11 K33 [{"Input"}]
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R12 R12 K9 ["createElement"]
       88 GETUPVAL                         R13 2
       89 DUPTABLE                         R14 K42 [{["Inflate"] = 5, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"]}]
       90 NEWCLOSURE                       R15 P0
       91 CAPTURE                          VAL R0
       92 SETTABLEKS                       R15 R14 K36 ["OnHoverStart"]
       94 NEWCLOSURE                       R15 P1
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R15 R14 K37 ["OnHoverMoved"]
       98 NEWCLOSURE                       R15 P2
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R15 R14 K38 ["OnHoverEnded"]
      102 NEWCLOSURE                       R15 P3
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R15 R14 K39 ["OnDragStart"]
      106 NEWCLOSURE                       R15 P4
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R1
      109 SETTABLEKS                       R15 R14 K40 ["OnDragMoved"]
      111 NEWCLOSURE                       R15 P5
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R15 R14 K41 ["OnDragEnded"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K32 ["Input"]
      118 CALL                             R8 3 1
      119 SETTABLEKS                       R8 R7 K14 ["LineVisual"]
      121 CALL                             R4 3 -1
      122 RETURN                           R4 -1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["OnAddKeypoint"]
       10 GETIMPORT                        R1 K4 [NumberSequenceKeypoint.new]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["X"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K6 ["Y"]
       18 LOADN                            R4 0
       19 CALL                             R1 3 1
       20 GETUPVAL                         R2 2
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
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
       18 GETTABLEKS                       R7 R0 K1 ["Keypoints"]
       20 GETTABLE                         R6 R7 R5
       21 GETTABLEKS                       R6 R6 K6 ["Time"]
       23 GETTABLEKS                       R7 R1 K7 ["X"]
       25 JUMPIFNOTLT                      R6 R7 ; [+3]
       27 ADDK                             R3 R5 K8 [1]
       28 JUMP                             ; [+13]
       29 GETTABLEKS                       R7 R0 K1 ["Keypoints"]
       31 GETTABLE                         R6 R7 R5
       32 GETTABLEKS                       R6 R6 K6 ["Time"]
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
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K11 ["createElement"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K12 ["Fragment"]
       57 NEWTABLE                         R6 0 0
       59 DUPTABLE                         R7 K16 [{"Input", "GhostPoint", "GhostCurve"}]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K11 ["createElement"]
       63 GETUPVAL                         R9 1
       64 DUPTABLE                         R10 K22 [{["ZIndex"] = 2, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnPress"]}]
       65 NEWCLOSURE                       R11 P0
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R11 R10 K18 ["OnHoverStart"]
       69 NEWCLOSURE                       R11 P1
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R11 R10 K19 ["OnHoverMoved"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R11 R10 K20 ["OnHoverEnded"]
       77 NEWCLOSURE                       R11 P3
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R1
       80 CAPTURE                          REF R3
       81 SETTABLEKS                       R11 R10 K21 ["OnPress"]
       83 CALL                             R8 2 1
       84 SETTABLEKS                       R8 R7 K13 ["Input"]
       86 GETTABLEKS                       R8 R0 K23 ["Enabled"]
       88 JUMPIFNOT                        R8 ; [+18]
       89 MOVE                             R8 R1
       90 JUMPIFNOT                        R8 ; [+16]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K11 ["createElement"]
       94 GETUPVAL                         R9 2
       95 DUPTABLE                         R10 K29 [{["Position"], ["Color3"], ["Size"] = 5, ["ZIndex"] = -1}]
       96 SETTABLEKS                       R1 R10 K24 ["Position"]
       98 GETIMPORT                        R11 K31 [Color3.fromRGB]
      100 LOADN                            R12 155
      101 LOADN                            R13 155
      102 LOADN                            R14 155
      103 CALL                             R11 3 1
      104 SETTABLEKS                       R11 R10 K25 ["Color3"]
      106 CALL                             R8 2 1
      107 SETTABLEKS                       R8 R7 K14 ["GhostPoint"]
      109 GETTABLEKS                       R8 R0 K23 ["Enabled"]
      111 JUMPIFNOT                        R8 ; [+59]
      112 MOVE                             R8 R1
      113 JUMPIFNOT                        R8 ; [+57]
      114 GETUPVAL                         R8 0
      115 GETTABLEKS                       R8 R8 K11 ["createElement"]
      117 GETUPVAL                         R9 3
      118 DUPTABLE                         R10 K34 [{["Points"], ["Color3"], ["Thickness"] = 1, ["ZIndex"] = -1}]
      119 NEWTABLE                         R11 0 3
      121 DUPTABLE                         R12 K35 [{"Position"}]
      122 GETIMPORT                        R13 K38 [Vector2.new]
      124 GETTABLEKS                       R15 R0 K1 ["Keypoints"]
      126 SUBK                             R16 R3 K8 [1]
      127 GETTABLE                         R14 R15 R16
      128 GETTABLEKS                       R14 R14 K6 ["Time"]
      130 GETTABLEKS                       R16 R0 K1 ["Keypoints"]
      132 SUBK                             R17 R3 K8 [1]
      133 GETTABLE                         R15 R16 R17
      134 GETTABLEKS                       R15 R15 K39 ["Value"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K24 ["Position"]
      139 DUPTABLE                         R13 K35 [{"Position"}]
      140 SETTABLEKS                       R1 R13 K24 ["Position"]
      142 DUPTABLE                         R14 K35 [{"Position"}]
      143 GETIMPORT                        R15 K38 [Vector2.new]
      145 GETTABLEKS                       R17 R0 K1 ["Keypoints"]
      147 GETTABLE                         R16 R17 R3
      148 GETTABLEKS                       R16 R16 K6 ["Time"]
      150 GETTABLEKS                       R18 R0 K1 ["Keypoints"]
      152 GETTABLE                         R17 R18 R3
      153 GETTABLEKS                       R17 R17 K39 ["Value"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K24 ["Position"]
      158 SETLIST                          R11 R12 3 [1]
      160 SETTABLEKS                       R11 R10 K32 ["Points"]
      162 GETIMPORT                        R11 K31 [Color3.fromRGB]
      164 LOADN                            R12 155
      165 LOADN                            R13 155
      166 LOADN                            R14 155
      167 CALL                             R11 3 1
      168 SETTABLEKS                       R11 R10 K25 ["Color3"]
      170 CALL                             R8 2 1
      171 SETTABLEKS                       R8 R7 K15 ["GhostCurve"]
      173 CALL                             R4 3 -1
      174 CLOSEUPVALS                      R3
      175 RETURN                           R4 -1

PROTO_20:
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
       60 GETIMPORT                        R5 K5 [NumberSequence.new]
       62 MOVE                             R6 R1
       63 CALL                             R5 1 -1
       64 CALL                             R4 -1 0
       65 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Keypoints"]
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
        4 LOADN                            R2 -1
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
       22 LOADN                            R2 -1
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 7
       25 JUMPIFNOT                        R0 ; [+2]
       26 GETUPVAL                         R2 1
       27 JUMP                             ; [+1]
       28 LOADN                            R2 -1
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Keypoints"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
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
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K0 ["useState"]
       37 LOADN                            R4 -1
       38 CALL                             R3 1 2
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K0 ["useState"]
       42 LOADN                            R6 -1
       43 CALL                             R5 1 2
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K0 ["useState"]
       47 LOADN                            R8 -1
       48 CALL                             R7 1 2
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K0 ["useState"]
       52 LOADN                            R10 -1
       53 CALL                             R9 1 2
       54 DUPTABLE                         R11 K9 [{"Grid"}]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K10 ["createElement"]
       58 GETUPVAL                         R13 1
       59 DUPTABLE                         R14 K15 [{"XAxis", "XAxisMinor", "YAxis", "YAxisMinor"}]
       60 DUPTABLE                         R15 K20 [{["Type"] = "Uniform", ["Unit"] = 0.2}]
       61 SETTABLEKS                       R15 R14 K11 ["XAxis"]
       63 DUPTABLE                         R15 K22 [{["Type"] = "Uniform", ["Unit"] = 0.1}]
       64 SETTABLEKS                       R15 R14 K12 ["XAxisMinor"]
       66 DUPTABLE                         R15 K24 [{["Type"] = "Uniform", ["Unit"] = 2}]
       67 SETTABLEKS                       R15 R14 K13 ["YAxis"]
       69 DUPTABLE                         R15 K26 [{["Type"] = "Uniform", ["Unit"] = 1}]
       70 SETTABLEKS                       R15 R14 K14 ["YAxisMinor"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K8 ["Grid"]
       75 DUPTABLE                         R12 K29 [{"XScale", "YScale"}]
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R13 R13 K10 ["createElement"]
       79 GETUPVAL                         R14 2
       80 DUPTABLE                         R15 K35 [{["Side"] = "Bottom", ["Schema"], ["TickLength"] = 0}]
       81 DUPTABLE                         R16 K22 [{["Type"] = "Uniform", ["Unit"] = 0.1}]
       82 SETTABLEKS                       R16 R15 K32 ["Schema"]
       84 CALL                             R13 2 1
       85 SETTABLEKS                       R13 R12 K27 ["XScale"]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K10 ["createElement"]
       90 GETUPVAL                         R14 2
       91 DUPTABLE                         R15 K37 [{["Side"] = "Left", ["Schema"], ["TickLength"] = 0}]
       92 DUPTABLE                         R16 K26 [{["Type"] = "Uniform", ["Unit"] = 1}]
       93 SETTABLEKS                       R16 R15 K32 ["Schema"]
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K28 ["YScale"]
       98 NEWTABLE                         R13 0 0
      100 NEWTABLE                         R14 0 0
      102 NEWTABLE                         R15 0 0
      104 GETTABLEKS                       R16 R1 K38 ["Keypoints"]
      106 LOADNIL                          R17
      107 LOADNIL                          R18
      108 FORGPREP                         R16
      109 MOVE                             R21 R19
      110 LOADN                            R22 0
      111 JUMPIFNOTLT                      R22 R9 ; [+18]
      113 JUMPIFEQ                         R9 R7 ; [+16]
      115 JUMPIFNOTEQ                      R21 R9 ; [+3]
      117 MOVE                             R21 R7
      118 JUMP                             ; [+11]
      119 JUMPIFNOTLT                      R9 R21 ; [+5]
      121 JUMPIFNOTLE                      R21 R7 ; [+3]
      123 SUBK                             R21 R21 K25 [1]
      124 JUMP                             ; [+5]
      125 JUMPIFNOTLT                      R21 R9 ; [+4]
      127 JUMPIFNOTLE                      R7 R21 ; [+2]
      129 ADDK                             R21 R21 K25 [1]
      130 GETIMPORT                        R22 K40 [Vector2.new]
      132 GETTABLEKS                       R23 R20 K41 ["Time"]
      134 GETTABLEKS                       R24 R20 K42 ["Value"]
      136 CALL                             R22 2 1
      137 GETIMPORT                        R23 K40 [Vector2.new]
      139 GETTABLEKS                       R24 R20 K41 ["Time"]
      141 GETTABLEKS                       R26 R20 K42 ["Value"]
      143 GETTABLEKS                       R27 R20 K43 ["Envelope"]
      145 ADD                              R25 R26 R27
      146 CALL                             R23 2 1
      147 GETIMPORT                        R24 K40 [Vector2.new]
      149 GETTABLEKS                       R25 R20 K41 ["Time"]
      151 GETTABLEKS                       R27 R20 K42 ["Value"]
      153 GETTABLEKS                       R28 R20 K43 ["Envelope"]
      155 SUB                              R26 R27 R28
      156 CALL                             R24 2 1
      157 DUPTABLE                         R25 K45 [{"Position"}]
      158 SETTABLEKS                       R22 R25 K44 ["Position"]
      160 SETTABLE                         R25 R13 R19
      161 DUPTABLE                         R25 K45 [{"Position"}]
      162 SETTABLEKS                       R23 R25 K44 ["Position"]
      164 SETTABLE                         R25 R14 R19
      165 DUPTABLE                         R25 K45 [{"Position"}]
      166 SETTABLEKS                       R24 R25 K44 ["Position"]
      168 SETTABLE                         R25 R15 R19
      169 NEWCLOSURE                       R25 P0
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R2
      174 NEWCLOSURE                       R26 P1
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R2
      178 NEWCLOSURE                       R27 P2
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R4
      182 NEWCLOSURE                       R28 P3
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R10
      191 LOADK                            R30 K46 ["Keypoint"]
      192 MOVE                             R31 R21
      193 CONCAT                           R29 R30 R31
      194 GETUPVAL                         R30 0
      195 GETTABLEKS                       R30 R30 K10 ["createElement"]
      197 GETUPVAL                         R31 3
      198 DUPTABLE                         R32 K57 [{["Keypoint"], ["MaxY"] = 10, ["XLocked"], ["OnKeypointChanged"], ["OnKeypointDeleted"], ["IsSelected"], ["IsHovered"], ["IsDragged"], ["SetHovered"], ["SetDragged"]}]
      199 SETTABLEKS                       R20 R32 K46 ["Keypoint"]
      201 LOADB                            R33 1
      202 JUMPIFEQKN                       R21 K25 [1] ; [+8]
      204 GETTABLEKS                       R35 R1 K38 ["Keypoints"]
      206 LENGTH                           R34 R35
      207 JUMPIFEQ                         R21 R34 ; [+2]
      209 LOADB                            R33 0 +1
      210 LOADB                            R33 1
      211 SETTABLEKS                       R33 R32 K49 ["XLocked"]
      213 SETTABLEKS                       R25 R32 K50 ["OnKeypointChanged"]
      215 SETTABLEKS                       R26 R32 K51 ["OnKeypointDeleted"]
      217 JUMPIFEQ                         R3 R21 ; [+2]
      219 LOADB                            R33 0 +1
      220 LOADB                            R33 1
      221 SETTABLEKS                       R33 R32 K52 ["IsSelected"]
      223 JUMPIFEQ                         R5 R21 ; [+2]
      225 LOADB                            R33 0 +1
      226 LOADB                            R33 1
      227 SETTABLEKS                       R33 R32 K53 ["IsHovered"]
      229 JUMPIFEQ                         R7 R21 ; [+2]
      231 LOADB                            R33 0 +1
      232 LOADB                            R33 1
      233 SETTABLEKS                       R33 R32 K54 ["IsDragged"]
      235 SETTABLEKS                       R27 R32 K55 ["SetHovered"]
      237 SETTABLEKS                       R28 R32 K56 ["SetDragged"]
      239 CALL                             R30 2 1
      240 SETTABLE                         R30 R11 R29
      241 LOADK                            R30 K58 ["EnvelopeTop"]
      242 MOVE                             R31 R21
      243 CONCAT                           R29 R30 R31
      244 GETUPVAL                         R30 0
      245 GETTABLEKS                       R30 R30 K10 ["createElement"]
      247 GETUPVAL                         R31 4
      248 DUPTABLE                         R32 K60 [{["Keypoint"], ["Direction"] = 1, ["MaxY"] = 10, ["OnKeypointChanged"], ["IsHovered"], ["IsDragged"], ["SetHovered"], ["SetDragged"]}]
      249 SETTABLEKS                       R20 R32 K46 ["Keypoint"]
      251 SETTABLEKS                       R25 R32 K50 ["OnKeypointChanged"]
      253 JUMPIFEQ                         R5 R21 ; [+2]
      255 LOADB                            R33 0 +1
      256 LOADB                            R33 1
      257 SETTABLEKS                       R33 R32 K53 ["IsHovered"]
      259 JUMPIFEQ                         R7 R21 ; [+2]
      261 LOADB                            R33 0 +1
      262 LOADB                            R33 1
      263 SETTABLEKS                       R33 R32 K54 ["IsDragged"]
      265 SETTABLEKS                       R27 R32 K55 ["SetHovered"]
      267 SETTABLEKS                       R28 R32 K56 ["SetDragged"]
      269 CALL                             R30 2 1
      270 SETTABLE                         R30 R11 R29
      271 LOADK                            R30 K61 ["EnvelopeBottom"]
      272 MOVE                             R31 R21
      273 CONCAT                           R29 R30 R31
      274 GETUPVAL                         R30 0
      275 GETTABLEKS                       R30 R30 K10 ["createElement"]
      277 GETUPVAL                         R31 4
      278 DUPTABLE                         R32 K63 [{["Keypoint"], ["Direction"] = -1, ["MaxY"] = 10, ["OnKeypointChanged"], ["IsHovered"], ["IsDragged"], ["SetHovered"], ["SetDragged"]}]
      279 SETTABLEKS                       R20 R32 K46 ["Keypoint"]
      281 SETTABLEKS                       R25 R32 K50 ["OnKeypointChanged"]
      283 JUMPIFEQ                         R5 R21 ; [+2]
      285 LOADB                            R33 0 +1
      286 LOADB                            R33 1
      287 SETTABLEKS                       R33 R32 K53 ["IsHovered"]
      289 JUMPIFEQ                         R7 R21 ; [+2]
      291 LOADB                            R33 0 +1
      292 LOADB                            R33 1
      293 SETTABLEKS                       R33 R32 K54 ["IsDragged"]
      295 SETTABLEKS                       R27 R32 K55 ["SetHovered"]
      297 SETTABLEKS                       R28 R32 K56 ["SetDragged"]
      299 CALL                             R30 2 1
      300 SETTABLE                         R30 R11 R29
      301 FORGLOOP                         R16 2 ; [-193]
      303 GETUPVAL                         R16 0
      304 GETTABLEKS                       R16 R16 K10 ["createElement"]
      306 GETUPVAL                         R17 5
      307 DUPTABLE                         R18 K65 [{"Points"}]
      308 SETTABLEKS                       R13 R18 K64 ["Points"]
      310 CALL                             R16 2 1
      311 SETTABLEKS                       R16 R11 K66 ["Curve"]
      313 GETUPVAL                         R16 0
      314 GETTABLEKS                       R16 R16 K10 ["createElement"]
      316 GETUPVAL                         R17 5
      317 DUPTABLE                         R18 K65 [{"Points"}]
      318 SETTABLEKS                       R14 R18 K64 ["Points"]
      320 CALL                             R16 2 1
      321 SETTABLEKS                       R16 R11 K67 ["TopCurve"]
      323 GETUPVAL                         R16 0
      324 GETTABLEKS                       R16 R16 K10 ["createElement"]
      326 GETUPVAL                         R17 5
      327 DUPTABLE                         R18 K65 [{"Points"}]
      328 SETTABLEKS                       R15 R18 K64 ["Points"]
      330 CALL                             R16 2 1
      331 SETTABLEKS                       R16 R11 K68 ["BottomCurve"]
      333 GETUPVAL                         R16 0
      334 GETTABLEKS                       R16 R16 K10 ["createElement"]
      336 GETUPVAL                         R17 6
      337 DUPTABLE                         R18 K71 [{"Enabled", "Keypoints", "OnAddKeypoint"}]
      338 LOADB                            R19 0
      339 GETTABLEKS                       R21 R1 K38 ["Keypoints"]
      341 LENGTH                           R20 R21
      342 LOADN                            R21 20
      343 JUMPIFNOTLT                      R20 R21 ; [+10]
      345 LOADB                            R19 0
      346 LOADN                            R20 0
      347 JUMPIFNOTLT                      R5 R20 ; [+6]
      349 LOADN                            R20 0
      350 JUMPIFLT                         R7 R20 ; [+2]
      352 LOADB                            R19 0 +1
      353 LOADB                            R19 1
      354 SETTABLEKS                       R19 R18 K69 ["Enabled"]
      356 GETTABLEKS                       R19 R1 K38 ["Keypoints"]
      358 SETTABLEKS                       R19 R18 K38 ["Keypoints"]
      360 NEWCLOSURE                       R19 P4
      361 CAPTURE                          VAL R1
      362 CAPTURE                          VAL R2
      363 CAPTURE                          VAL R4
      364 SETTABLEKS                       R19 R18 K70 ["OnAddKeypoint"]
      366 CALL                             R16 2 1
      367 SETTABLEKS                       R16 R11 K72 ["Add"]
      369 GETUPVAL                         R16 0
      370 GETTABLEKS                       R16 R16 K10 ["createElement"]
      372 GETUPVAL                         R17 7
      373 DUPTABLE                         R18 K76 [{"GraphRect", "children", "childrenUnclipped"}]
      374 GETIMPORT                        R19 K78 [Rect.new]
      376 LOADN                            R20 0
      377 LOADN                            R21 0
      378 LOADN                            R22 1
      379 LOADN                            R23 10
      380 CALL                             R19 4 1
      381 SETTABLEKS                       R19 R18 K73 ["GraphRect"]
      383 SETTABLEKS                       R11 R18 K74 ["children"]
      385 SETTABLEKS                       R12 R18 K75 ["childrenUnclipped"]
      387 CALL                             R16 2 -1
      388 RETURN                           R16 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{["Size"], ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R4 K8 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 300
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
       25 GETTABLEKS                       R5 R5 K10 ["Curve"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Grid"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["InputDetector"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Point"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K14 ["Positioner"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K15 ["Scale"]
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
       85 DUPTABLE                         R14 K24 [{["summary"] = "An editor for a NumberSequence object, such as the value of the property ParticleEmitter.Size.", ["story"], ["controls"]}]
       86 DUPCLOSURE                       R15 K25 [PROTO_26]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R13
       89 SETTABLEKS                       R15 R14 K22 ["story"]
       91 NEWTABLE                         R15 0 0
       93 SETTABLEKS                       R15 R14 K23 ["controls"]
       95 RETURN                           R14 1
