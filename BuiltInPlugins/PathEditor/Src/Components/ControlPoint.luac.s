PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["tangentPoints"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 JUMPIFEQKS                       R1 K1 ["Left"] ; [+10]
        4 JUMPIFEQKS                       R1 K2 ["Right"] ; [+8]
        6 GETIMPORT                        R4 K4 [error]
        8 LOADK                            R6 K5 ["invalid tangent side: "]
        9 MOVE                             R7 R1
       10 CONCAT                           R5 R6 R7
       11 CALL                             R4 1 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R3 K6 ["showTangents"]
       15 JUMPIF                           R4 ; [+5]
       16 GETTABLEKS                       R4 R3 K7 ["showTangentsPhantom"]
       18 JUMPIF                           R4 ; [+2]
       19 LOADNIL                          R4
       20 RETURN                           R4 1
       21 GETTABLEKS                       R4 R3 K7 ["showTangentsPhantom"]
       23 GETUPVAL                         R5 0
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R9 R3 K8 ["point"]
       30 GETTABLE                         R8 R9 R5
       31 GETTABLEKS                       R9 R3 K9 ["SelectedObject"]
       33 GETTABLEKS                       R9 R9 K10 ["Parent"]
       35 CALL                             R7 2 1
       36 GETIMPORT                        R8 K13 [Vector2.new]
       38 CALL                             R8 0 1
       39 GETTABLEKS                       R9 R3 K14 ["ParentAbsRotation"]
       41 CALL                             R6 3 1
       42 GETIMPORT                        R7 K16 [Vector2.zero]
       44 JUMPIFNOTEQ                      R6 R7 ; [+3]
       46 LOADNIL                          R7
       47 RETURN                           R7 1
       48 MOVE                             R8 R5
       49 LOADK                            R9 K17 ["Point"]
       50 CONCAT                           R7 R8 R9
       51 MOVE                             R9 R5
       52 LOADK                            R10 K18 ["Line"]
       53 CONCAT                           R8 R9 R10
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K19 ["createElement"]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R10 R10 K20 ["Fragment"]
       60 NEWTABLE                         R11 0 0
       62 NEWTABLE                         R12 2 0
       64 GETUPVAL                         R13 3
       65 GETTABLEKS                       R13 R13 K19 ["createElement"]
       67 GETUPVAL                         R14 4
       68 DUPTABLE                         R15 K27 [{"index", "absolutePosition", "position", "side", "isPhantom", "Disabled"}]
       69 GETTABLEKS                       R16 R3 K21 ["index"]
       71 SETTABLEKS                       R16 R15 K21 ["index"]
       73 ADD                              R16 R2 R6
       74 SETTABLEKS                       R16 R15 K22 ["absolutePosition"]
       76 SETTABLEKS                       R6 R15 K23 ["position"]
       78 SETTABLEKS                       R1 R15 K24 ["side"]
       80 SETTABLEKS                       R4 R15 K25 ["isPhantom"]
       82 GETTABLEKS                       R16 R3 K26 ["Disabled"]
       84 SETTABLEKS                       R16 R15 K26 ["Disabled"]
       86 CALL                             R13 2 1
       87 SETTABLE                         R13 R12 R7
       88 GETUPVAL                         R13 3
       89 GETTABLEKS                       R13 R13 K19 ["createElement"]
       91 GETUPVAL                         R14 5
       92 DUPTABLE                         R15 K33 [{["ZIndex"] = -1, ["Style"], ["Position"], ["ControlPoints"]}]
       93 JUMPIFNOT                        R4 ; [+2]
       94 LOADK                            R16 K34 ["PhantomTangent"]
       95 JUMP                             ; [+1]
       96 LOADK                            R16 K35 ["Tangent"]
       97 SETTABLEKS                       R16 R15 K30 ["Style"]
       99 GETIMPORT                        R16 K38 [UDim2.fromOffset]
      101 GETTABLEKS                       R17 R2 K39 ["X"]
      103 GETTABLEKS                       R18 R2 K40 ["Y"]
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K31 ["Position"]
      108 NEWTABLE                         R16 0 2
      110 GETUPVAL                         R17 6
      111 GETIMPORT                        R18 K41 [UDim2.new]
      113 CALL                             R18 0 1
      114 GETIMPORT                        R19 K41 [UDim2.new]
      116 CALL                             R19 0 1
      117 GETIMPORT                        R20 K41 [UDim2.new]
      119 CALL                             R20 0 -1
      120 CALL                             R17 -1 1
      121 GETUPVAL                         R18 6
      122 GETIMPORT                        R19 K38 [UDim2.fromOffset]
      124 GETTABLEKS                       R20 R6 K39 ["X"]
      126 GETTABLEKS                       R21 R6 K40 ["Y"]
      128 CALL                             R19 2 1
      129 GETIMPORT                        R20 K41 [UDim2.new]
      131 CALL                             R20 0 1
      132 GETIMPORT                        R21 K41 [UDim2.new]
      134 CALL                             R21 0 -1
      135 CALL                             R18 -1 -1
      136 SETLIST                          R16 R17 -1 [1]
      138 SETTABLEKS                       R16 R15 K32 ["ControlPoints"]
      140 CALL                             R13 2 1
      141 SETTABLE                         R13 R12 R8
      142 CALL                             R9 3 -1
      143 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchRecordChangeHistory"]
        3 LOADK                            R1 K1 ["Move Control Point"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["dispatchLockSelectedControlPoint"]
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["Path2DToolMode"]
       13 JUMPIFNOTEQKS                    R0 K4 ["AddTangent"] ; [+67]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K5 ["ControlPoints"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K6 ["index"]
       21 LENGTH                           R3 R0
       22 JUMPIFNOTEQ                      R2 R3 ; [+3]
       24 LOADK                            R1 K7 ["Left"]
       25 JUMP                             ; [+1]
       26 LOADK                            R1 K8 ["Right"]
       27 JUMPIFNOTEQKS                    R1 K8 ["Right"] ; [+3]
       29 LOADK                            R2 K7 ["Left"]
       30 JUMP                             ; [+1]
       31 LOADK                            R2 K8 ["Right"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K6 ["index"]
       35 GETTABLE                         R3 R0 R4
       36 GETUPVAL                         R4 1
       37 MOVE                             R5 R1
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 1
       40 MOVE                             R6 R2
       41 CALL                             R5 1 1
       42 GETTABLE                         R7 R3 R4
       43 JUMPIFEQKNIL                     R7 ; [+3]
       45 GETTABLE                         R6 R3 R4
       46 JUMP                             ; [+3]
       47 GETIMPORT                        R6 K11 [UDim2.new]
       49 CALL                             R6 0 1
       50 GETTABLE                         R8 R3 R5
       51 JUMPIFEQKNIL                     R8 ; [+3]
       53 GETTABLE                         R7 R3 R5
       54 JUMP                             ; [+3]
       55 GETIMPORT                        R7 K11 [UDim2.new]
       57 CALL                             R7 0 1
       58 GETIMPORT                        R8 K11 [UDim2.new]
       60 CALL                             R8 0 1
       61 JUMPIFNOTEQ                      R6 R8 ; [+7]
       63 GETIMPORT                        R8 K11 [UDim2.new]
       65 CALL                             R8 0 1
       66 JUMPIFNOTEQ                      R7 R8 ; [+2]
       68 MOVE                             R1 R2
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K12 ["dispatchSelectControlPoint"]
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K6 ["index"]
       75 CALL                             R8 1 0
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K13 ["dispatchSelectTangentSide"]
       79 MOVE                             R9 R1
       80 CALL                             R8 1 0
       81 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchOnControlPointDoubleClicked"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["index"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchSelectControlPoint"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["index"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchSelectControlPoint"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dispatchOnControlPointDragged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["index"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dispatchLockSelectedControlPoint"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["dispatchRecordChangeHistory"]
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchSelectControlPoint"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["index"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["dispatchOpenContextMenu"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["PluginContext"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K4 ["Localization"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["point"]
        5 GETTABLEKS                       R3 R3 K2 ["Position"]
        7 GETTABLEKS                       R4 R1 K3 ["SelectedObject"]
        9 GETTABLEKS                       R4 R4 K4 ["Parent"]
       11 CALL                             R2 2 1
       12 LOADK                            R3 K5 ["ControlPoint"]
       13 GETTABLEKS                       R4 R1 K6 ["Path2DToolMode"]
       15 JUMPIFNOTEQKS                    R4 K7 ["AddPoint"] ; [+17]
       17 GETTABLEKS                       R4 R1 K8 ["AddPointSubMode"]
       19 JUMPIFNOTEQKS                    R4 K9 ["Unselected"] ; [+13]
       21 GETTABLEKS                       R4 R1 K10 ["index"]
       23 JUMPIFEQKN                       R4 K11 [1] ; [+9]
       25 GETTABLEKS                       R4 R1 K10 ["index"]
       27 GETTABLEKS                       R6 R1 K12 ["ControlPoints"]
       29 LENGTH                           R5 R6
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADK                            R3 K13 ["PhantomControlPoint"]
       33 GETTABLEKS                       R5 R1 K14 ["LockSelectedControlPoint"]
       35 JUMPIFNOT                        R5 ; [+2]
       36 LOADN                            R4 1
       37 JUMP                             ; [+9]
       38 GETTABLEKS                       R5 R1 K15 ["DeselectedControlPointIndex"]
       40 GETTABLEKS                       R6 R1 K10 ["index"]
       42 JUMPIFNOTEQ                      R5 R6 ; [+3]
       44 LOADN                            R4 -1
       45 JUMP                             ; [+1]
       46 LOADN                            R4 0
       47 NEWCLOSURE                       R5 P0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U1
       50 GETUPVAL                         R6 2
       51 GETTABLEKS                       R6 R6 K16 ["createElement"]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R7 R7 K17 ["Fragment"]
       56 NEWTABLE                         R8 0 0
       58 DUPTABLE                         R9 K21 [{"Point", "LeftTangent", "RightTangent"}]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K16 ["createElement"]
       62 GETUPVAL                         R11 3
       63 DUPTABLE                         R12 K36 [{["ZIndex"], ["AbsolutePosition"], ["Style"], ["IsSelected"], ["FollowCursorOnDrag"] = False, ["Disabled"], ["OnDoubleClicked"], ["OnSelected"], ["OnDeselected"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnd"], ["OnRightClicked"]}]
       64 SETTABLEKS                       R4 R12 K22 ["ZIndex"]
       66 SETTABLEKS                       R2 R12 K23 ["AbsolutePosition"]
       68 SETTABLEKS                       R3 R12 K24 ["Style"]
       70 GETTABLEKS                       R13 R1 K37 ["isSelected"]
       72 SETTABLEKS                       R13 R12 K25 ["IsSelected"]
       74 GETTABLEKS                       R13 R1 K28 ["Disabled"]
       76 SETTABLEKS                       R13 R12 K28 ["Disabled"]
       78 NEWCLOSURE                       R13 P1
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R13 R12 K29 ["OnDoubleClicked"]
       82 NEWCLOSURE                       R13 P2
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R13 R12 K30 ["OnSelected"]
       86 NEWCLOSURE                       R13 P3
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R13 R12 K31 ["OnDeselected"]
       90 SETTABLEKS                       R5 R12 K32 ["OnDragStart"]
       92 NEWCLOSURE                       R13 P4
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R13 R12 K33 ["OnDragMoved"]
       96 NEWCLOSURE                       R13 P5
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R13 R12 K34 ["OnDragEnd"]
      100 NEWCLOSURE                       R13 P6
      101 CAPTURE                          VAL R1
      102 SETTABLEKS                       R13 R12 K35 ["OnRightClicked"]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K18 ["Point"]
      107 LOADK                            R12 K38 ["Left"]
      108 MOVE                             R13 R2
      109 NAMECALL                         R10 R0 K39 ["renderTangent"]
      111 CALL                             R10 3 1
      112 SETTABLEKS                       R10 R9 K19 ["LeftTangent"]
      114 LOADK                            R12 K40 ["Right"]
      115 MOVE                             R13 R2
      116 NAMECALL                         R10 R0 K39 ["renderTangent"]
      118 CALL                             R10 3 1
      119 SETTABLEKS                       R10 R9 K20 ["RightTangent"]
      121 CALL                             R6 3 -1
      122 RETURN                           R6 -1

PROTO_10:
        0 DUPTABLE                         R2 K9 [{"Path2DToolMode", "AddPointSubMode", "ControlPoints", "SelectedObject", "ParentAbsPos", "ParentAbsSize", "ParentAbsRotation", "LockSelectedControlPoint", "DeselectedControlPointIndex"}]
        1 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["Path2DToolMode"]
        5 SETTABLEKS                       R3 R2 K0 ["Path2DToolMode"]
        7 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["AddPointSubMode"]
       11 SETTABLEKS                       R3 R2 K1 ["AddPointSubMode"]
       13 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
       15 GETTABLEKS                       R3 R3 K2 ["ControlPoints"]
       17 SETTABLEKS                       R3 R2 K2 ["ControlPoints"]
       19 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
       21 GETTABLEKS                       R3 R3 K3 ["SelectedObject"]
       23 SETTABLEKS                       R3 R2 K3 ["SelectedObject"]
       25 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
       27 GETTABLEKS                       R3 R3 K4 ["ParentAbsPos"]
       29 SETTABLEKS                       R3 R2 K4 ["ParentAbsPos"]
       31 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
       33 GETTABLEKS                       R3 R3 K5 ["ParentAbsSize"]
       35 SETTABLEKS                       R3 R2 K5 ["ParentAbsSize"]
       37 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
       39 GETTABLEKS                       R3 R3 K6 ["ParentAbsRotation"]
       41 SETTABLEKS                       R3 R2 K6 ["ParentAbsRotation"]
       43 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
       45 GETTABLEKS                       R3 R3 K7 ["LockSelectedControlPoint"]
       47 SETTABLEKS                       R3 R2 K7 ["LockSelectedControlPoint"]
       49 GETTABLEKS                       R3 R0 K10 ["PathReducer"]
       51 GETTABLEKS                       R3 R3 K8 ["DeselectedControlPointIndex"]
       53 SETTABLEKS                       R3 R2 K8 ["DeselectedControlPointIndex"]
       55 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADNIL                          R3
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K9 [{"dispatchOnControlPointDragged", "dispatchOnControlPointDoubleClicked", "dispatchRemoveControlPoint", "dispatchSelectControlPoint", "dispatchDeselectControlPoint", "dispatchSelectTangentSide", "dispatchLockSelectedControlPoint", "dispatchOpenContextMenu", "dispatchRecordChangeHistory"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchOnControlPointDragged"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchOnControlPointDoubleClicked"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchRemoveControlPoint"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 SETTABLEKS                       R2 R1 K3 ["dispatchSelectControlPoint"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U5
       25 SETTABLEKS                       R2 R1 K4 ["dispatchDeselectControlPoint"]
       27 NEWCLOSURE                       R2 P5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U4
       30 SETTABLEKS                       R2 R1 K5 ["dispatchSelectTangentSide"]
       32 NEWCLOSURE                       R2 P6
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U6
       35 SETTABLEKS                       R2 R1 K6 ["dispatchLockSelectedControlPoint"]
       37 NEWCLOSURE                       R2 P7
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U7
       40 SETTABLEKS                       R2 R1 K7 ["dispatchOpenContextMenu"]
       42 NEWCLOSURE                       R2 P8
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U8
       45 SETTABLEKS                       R2 R1 K8 ["dispatchRecordChangeHistory"]
       47 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Plugin"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R0 K5 ["Src"]
       47 GETTABLEKS                       R9 R9 K15 ["Actions"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R9 K16 ["DeselectControlPoint"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R12 R9 K17 ["LockSelectedControlPoint"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K4 [require]
       61 GETTABLEKS                       R13 R9 K18 ["SelectTangentSide"]
       63 CALL                             R12 1 1
       64 GETTABLEKS                       R13 R0 K5 ["Src"]
       66 GETTABLEKS                       R13 R13 K19 ["Thunks"]
       68 GETIMPORT                        R14 K4 [require]
       70 GETTABLEKS                       R15 R13 K20 ["OnControlPointDoubleClicked"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K4 [require]
       75 GETTABLEKS                       R16 R13 K21 ["OnControlPointDragged"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K4 [require]
       80 GETTABLEKS                       R17 R13 K22 ["OpenContextMenu"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K4 [require]
       85 GETTABLEKS                       R18 R13 K23 ["RecordChangeHistory"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K4 [require]
       90 GETTABLEKS                       R19 R13 K24 ["RemoveControlPoint"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K4 [require]
       95 GETTABLEKS                       R20 R13 K25 ["SelectControlPoint"]
       97 CALL                             R19 1 1
       98 GETTABLEKS                       R20 R0 K5 ["Src"]
      100 GETTABLEKS                       R20 R20 K26 ["Util"]
      102 GETIMPORT                        R21 K4 [require]
      104 GETTABLEKS                       R22 R20 K27 ["getAbsPosFromRelative"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K4 [require]
      109 GETTABLEKS                       R23 R20 K28 ["getTangentNameForSide"]
      111 CALL                             R22 1 1
      112 GETIMPORT                        R23 K4 [require]
      114 GETTABLEKS                       R24 R20 K29 ["getVector2FromUDim2Scale"]
      116 CALL                             R23 1 1
      117 GETIMPORT                        R24 K4 [require]
      119 GETTABLEKS                       R25 R20 K30 ["makeNewPath2DControlPoint"]
      121 CALL                             R24 1 1
      122 GETIMPORT                        R25 K4 [require]
      124 GETTABLEKS                       R26 R20 K31 ["rotatePoint"]
      126 CALL                             R25 1 1
      127 GETTABLEKS                       R26 R0 K5 ["Src"]
      129 GETTABLEKS                       R26 R26 K32 ["Components"]
      131 GETIMPORT                        R27 K4 [require]
      133 GETTABLEKS                       R28 R26 K33 ["DraggablePoint"]
      135 CALL                             R27 1 1
      136 GETIMPORT                        R28 K4 [require]
      138 GETTABLEKS                       R29 R26 K34 ["Line"]
      140 CALL                             R28 1 1
      141 GETIMPORT                        R29 K4 [require]
      143 GETTABLEKS                       R30 R26 K35 ["TangentPoint"]
      145 CALL                             R29 1 1
      146 GETTABLEKS                       R30 R2 K36 ["Component"]
      148 LOADK                            R32 K37 ["ControlPoint"]
      149 NAMECALL                         R30 R30 K38 ["extend"]
      151 CALL                             R30 2 1
      152 DUPCLOSURE                       R31 K39 [PROTO_0]
      153 SETTABLEKS                       R31 R30 K40 ["init"]
      155 DUPCLOSURE                       R31 K41 [PROTO_1]
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R29
      161 CAPTURE                          VAL R28
      162 CAPTURE                          VAL R24
      163 SETTABLEKS                       R31 R30 K42 ["renderTangent"]
      165 DUPCLOSURE                       R31 K43 [PROTO_9]
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R27
      170 SETTABLEKS                       R31 R30 K44 ["render"]
      172 MOVE                             R31 R6
      173 DUPTABLE                         R32 K46 [{"PluginContext", "Localization"}]
      174 SETTABLEKS                       R7 R32 K45 ["PluginContext"]
      176 SETTABLEKS                       R8 R32 K14 ["Localization"]
      178 CALL                             R31 1 1
      179 MOVE                             R32 R30
      180 CALL                             R31 1 1
      181 MOVE                             R30 R31
      182 GETTABLEKS                       R31 R3 K47 ["connect"]
      184 DUPCLOSURE                       R32 K48 [PROTO_10]
      185 DUPCLOSURE                       R33 K49 [PROTO_20]
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R17
      195 CALL                             R31 2 1
      196 MOVE                             R32 R30
      197 CALL                             R31 1 -1
      198 RETURN                           R31 -1
