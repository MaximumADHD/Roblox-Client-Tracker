PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dispatchSelectControlPoint"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["index"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K2 ["dispatchSelectTangentSide"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["side"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dispatchClearControlPointTangent"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["index"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["side"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dispatchRecordChangeHistory"]
        3 LOADK                            R1 K1 ["Move Tangent"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["dispatchSelectControlPoint"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["index"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K4 ["dispatchLockSelectedControlPoint"]
       15 LOADB                            R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R2 R2 K0 ["IsKeyDown"]
        4 CALL                             R2 2 1
        5 SUB                              R3 R1 R0
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K1 ["position"]
        9 ADD                              R4 R5 R3
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["dispatchSetControlPointTangent"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K3 ["index"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K4 ["side"]
       19 MOVE                             R8 R4
       20 LOADB                            R9 0
       21 MOVE                             R10 R2
       22 CALL                             R5 5 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["dispatchLockSelectedControlPoint"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["dispatchRecordChangeHistory"]
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dispatchSelectControlPoint"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["index"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K2 ["dispatchSelectTangentSide"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["side"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K4 ["dispatchOpenContextMenu"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K5 ["PluginContext"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K6 ["Localization"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADK                            R2 K1 ["Tangent"]
        3 GETTABLEKS                       R3 R1 K2 ["isPhantom"]
        5 JUMPIFNOT                        R3 ; [+1]
        6 LOADK                            R2 K3 ["PhantomTangent"]
        7 GETTABLEKS                       R4 R1 K4 ["SelectedTangentSide"]
        9 GETTABLEKS                       R5 R1 K5 ["side"]
       11 JUMPIFEQ                         R4 R5 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K6 ["createElement"]
       18 GETUPVAL                         R5 1
       19 DUPTABLE                         R6 K18 [{"ZIndex", "AbsolutePosition", "FollowCursorOnDrag", "Style", "IsSelected", "OnSelected", "OnDoubleClicked", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnRightClicked"}]
       20 LOADN                            R7 1
       21 SETTABLEKS                       R7 R6 K7 ["ZIndex"]
       23 GETTABLEKS                       R7 R1 K19 ["absolutePosition"]
       25 SETTABLEKS                       R7 R6 K8 ["AbsolutePosition"]
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K9 ["FollowCursorOnDrag"]
       30 SETTABLEKS                       R2 R6 K10 ["Style"]
       32 SETTABLEKS                       R3 R6 K11 ["IsSelected"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R7 R6 K12 ["OnSelected"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R7 R6 K13 ["OnDoubleClicked"]
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R7 R6 K14 ["OnDragStart"]
       46 NEWCLOSURE                       R7 P3
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R7 R6 K15 ["OnDragMoved"]
       52 NEWCLOSURE                       R7 P4
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R7 R6 K16 ["OnDragEnd"]
       56 NEWCLOSURE                       R7 P5
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R7 R6 K17 ["OnRightClicked"]
       60 CALL                             R4 2 -1
       61 RETURN                           R4 -1

PROTO_7:
        0 DUPTABLE                         R2 K2 [{"LockSelectedControlPoint", "SelectedTangentSide"}]
        1 GETTABLEKS                       R4 R0 K3 ["PathReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["LockSelectedControlPoint"]
        5 SETTABLEKS                       R3 R2 K0 ["LockSelectedControlPoint"]
        7 GETTABLEKS                       R4 R0 K3 ["PathReducer"]
        9 GETTABLEKS                       R3 R4 K1 ["SelectedTangentSide"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedTangentSide"]
       13 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K7 [{"dispatchRecordChangeHistory", "dispatchClearControlPointTangent", "dispatchSelectControlPoint", "dispatchSelectTangentSide", "dispatchSetControlPointTangent", "dispatchLockSelectedControlPoint", "dispatchOpenContextMenu"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchRecordChangeHistory"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchClearControlPointTangent"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchSelectControlPoint"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["dispatchSelectTangentSide"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["dispatchSetControlPointTangent"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["dispatchLockSelectedControlPoint"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["dispatchOpenContextMenu"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R6 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K12 [game]
       39 LOADK                            R7 K13 ["UserInputService"]
       40 NAMECALL                         R5 R5 K14 ["GetService"]
       42 CALL                             R5 2 1
       43 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K16 ["withContext"]
       47 GETTABLEKS                       R8 R6 K17 ["Plugin"]
       49 GETTABLEKS                       R9 R6 K18 ["Localization"]
       51 GETTABLEKS                       R11 R0 K5 ["Src"]
       53 GETTABLEKS                       R10 R11 K19 ["Actions"]
       55 GETIMPORT                        R11 K4 [require]
       57 GETTABLEKS                       R12 R10 K20 ["LockSelectedControlPoint"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K4 [require]
       62 GETTABLEKS                       R13 R10 K21 ["SelectTangentSide"]
       64 CALL                             R12 1 1
       65 GETTABLEKS                       R14 R0 K5 ["Src"]
       67 GETTABLEKS                       R13 R14 K22 ["Thunks"]
       69 GETIMPORT                        R14 K4 [require]
       71 GETTABLEKS                       R15 R13 K23 ["RecordChangeHistory"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K4 [require]
       76 GETTABLEKS                       R16 R13 K24 ["SelectControlPoint"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K4 [require]
       81 GETTABLEKS                       R17 R13 K25 ["ClearControlPointTangent"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K4 [require]
       86 GETTABLEKS                       R18 R13 K26 ["SetControlPointTangent"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K4 [require]
       91 GETTABLEKS                       R19 R13 K27 ["OpenContextMenu"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K4 [require]
       96 GETTABLEKS                       R22 R0 K5 ["Src"]
       98 GETTABLEKS                       R21 R22 K28 ["Resources"]
      100 GETTABLEKS                       R20 R21 K29 ["Constants"]
      102 CALL                             R19 1 1
      103 GETTABLEKS                       R21 R0 K5 ["Src"]
      105 GETTABLEKS                       R20 R21 K30 ["Components"]
      107 GETIMPORT                        R21 K4 [require]
      109 GETTABLEKS                       R22 R20 K31 ["DraggablePoint"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K35 [Enum.KeyCode.LeftShift]
      114 GETIMPORT                        R23 K37 [Enum.KeyCode.LeftControl]
      116 GETTABLEKS                       R24 R2 K38 ["Component"]
      118 LOADK                            R26 K39 ["TangentPoint"]
      119 NAMECALL                         R24 R24 K40 ["extend"]
      121 CALL                             R24 2 1
      122 DUPCLOSURE                       R25 K41 [PROTO_6]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R21
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R22
      127 SETTABLEKS                       R25 R24 K42 ["render"]
      129 MOVE                             R25 R7
      130 DUPTABLE                         R26 K44 [{"PluginContext", "Localization"}]
      131 SETTABLEKS                       R8 R26 K43 ["PluginContext"]
      133 SETTABLEKS                       R9 R26 K18 ["Localization"]
      135 CALL                             R25 1 1
      136 MOVE                             R26 R24
      137 CALL                             R25 1 1
      138 MOVE                             R24 R25
      139 GETTABLEKS                       R25 R3 K45 ["connect"]
      141 DUPCLOSURE                       R26 K46 [PROTO_7]
      142 DUPCLOSURE                       R27 K47 [PROTO_15]
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R18
      150 CALL                             R25 2 1
      151 MOVE                             R26 R24
      152 CALL                             R25 1 -1
      153 RETURN                           R25 -1
