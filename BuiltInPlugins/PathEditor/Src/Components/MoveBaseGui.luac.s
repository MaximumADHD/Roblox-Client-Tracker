PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 1
        3 LOADK                            R6 K0 [0.5]
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R7 R7 K1 ["ParentAbsSize"]
        7 MUL                              R5 R6 R7
        8 ADD                              R3 R4 R5
        9 LOADN                            R5 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["ParentAbsRotation"]
       13 MUL                              R4 R5 R6
       14 CALL                             R1 3 1
       15 GETUPVAL                         R2 3
       16 DUPTABLE                         R4 K4 [{"startingParentPos"}]
       17 SETTABLEKS                       R1 R4 K3 ["startingParentPos"]
       19 NAMECALL                         R2 R2 K5 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["startingParentPos"]
        5 JUMPIFEQKNIL                     R2 ; [+11]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["dispatchSetPathPosition"]
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["state"]
       14 GETTABLEKS                       R4 R4 K1 ["startingParentPos"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["startingParentPos"]
        5 JUMPIFEQKNIL                     R2 ; [+12]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["dispatchSetPathPosition"]
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["state"]
       14 GETTABLEKS                       R4 R4 K1 ["startingParentPos"]
       16 LOADB                            R5 1
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchToggleMoveTool"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SelectedObject"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETTABLEKS                       R2 R1 K2 ["Path2DToolMode"]
        7 JUMPIFEQKS                       R2 K3 ["DoneEditing"] ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R3 R1 K1 ["SelectedObject"]
       14 GETTABLEKS                       R3 R3 K4 ["Parent"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K1 ["SelectedObject"]
       19 NAMECALL                         R3 R3 K5 ["GetBoundingRect"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R3 K6 ["Min"]
       24 GETIMPORT                        R5 K9 [Vector2.new]
       26 GETTABLEKS                       R6 R3 K10 ["Width"]
       28 GETTABLEKS                       R7 R3 K11 ["Height"]
       30 CALL                             R5 2 1
       31 NEWTABLE                         R6 0 0
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K12 ["createElement"]
       36 GETUPVAL                         R8 2
       37 DUPTABLE                         R9 K24 [{"AbsoluteSize", "AbsolutePosition", "Style", "FollowCursorOnDrag", "OnSelected", "OnHover", "OnDeselected", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnDoubleClicked"}]
       38 SETTABLEKS                       R5 R9 K13 ["AbsoluteSize"]
       40 SETTABLEKS                       R4 R9 K14 ["AbsolutePosition"]
       42 LOADK                            R10 K25 ["RubberBand"]
       43 SETTABLEKS                       R10 R9 K15 ["Style"]
       45 LOADB                            R10 0
       46 SETTABLEKS                       R10 R9 K16 ["FollowCursorOnDrag"]
       48 DUPCLOSURE                       R10 K26 [PROTO_0]
       49 SETTABLEKS                       R10 R9 K17 ["OnSelected"]
       51 DUPCLOSURE                       R10 K27 [PROTO_1]
       52 SETTABLEKS                       R10 R9 K18 ["OnHover"]
       54 DUPCLOSURE                       R10 K28 [PROTO_2]
       55 SETTABLEKS                       R10 R9 K19 ["OnDeselected"]
       57 NEWCLOSURE                       R10 P3
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R10 R9 K20 ["OnDragStart"]
       64 NEWCLOSURE                       R10 P4
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R10 R9 K21 ["OnDragMoved"]
       69 NEWCLOSURE                       R10 P5
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R10 R9 K22 ["OnDragEnd"]
       74 NEWCLOSURE                       R10 P6
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R10 R9 K23 ["OnDoubleClicked"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K29 ["RubberbandPane"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K12 ["createElement"]
       84 GETUPVAL                         R8 4
       85 DUPTABLE                         R9 K31 [{"DisplayOrder"}]
       86 LOADN                            R10 2
       87 SETTABLEKS                       R10 R9 K30 ["DisplayOrder"]
       89 MOVE                             R10 R6
       90 CALL                             R7 3 -1
       91 RETURN                           R7 -1

PROTO_8:
        0 DUPTABLE                         R2 K5 [{"Refreshed", "SelectedObject", "Path2DToolMode", "ParentAbsRotation", "ParentAbsSize"}]
        1 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["Refreshed"]
        5 SETTABLEKS                       R3 R2 K0 ["Refreshed"]
        7 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["SelectedObject"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedObject"]
       13 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
       15 GETTABLEKS                       R3 R3 K2 ["Path2DToolMode"]
       17 SETTABLEKS                       R3 R2 K2 ["Path2DToolMode"]
       19 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
       21 GETTABLEKS                       R3 R3 K3 ["ParentAbsRotation"]
       23 SETTABLEKS                       R3 R2 K3 ["ParentAbsRotation"]
       25 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
       27 GETTABLEKS                       R3 R3 K4 ["ParentAbsSize"]
       29 SETTABLEKS                       R3 R2 K4 ["ParentAbsSize"]
       31 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K3 [{"dispatchPathChanged", "dispatchToggleMoveTool", "dispatchSetPathPosition"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchPathChanged"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchToggleMoveTool"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchSetPathPosition"]
       16 RETURN                           R1 1

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
       41 GETTABLEKS                       R7 R0 K5 ["Src"]
       43 GETTABLEKS                       R7 R7 K13 ["Actions"]
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R7 K14 ["PathChanged"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K4 [require]
       52 GETTABLEKS                       R10 R7 K15 ["ToggleMoveTool"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R0 K5 ["Src"]
       57 GETTABLEKS                       R10 R10 K16 ["Thunks"]
       59 GETIMPORT                        R11 K4 [require]
       61 GETTABLEKS                       R12 R10 K17 ["SetPathPosition"]
       63 CALL                             R11 1 1
       64 GETTABLEKS                       R12 R0 K5 ["Src"]
       66 GETTABLEKS                       R12 R12 K18 ["Util"]
       68 GETIMPORT                        R13 K4 [require]
       70 GETTABLEKS                       R14 R12 K19 ["getAbsolutePosition"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K4 [require]
       75 GETTABLEKS                       R15 R12 K20 ["rotatePoint"]
       77 CALL                             R14 1 1
       78 GETTABLEKS                       R15 R0 K5 ["Src"]
       80 GETTABLEKS                       R15 R15 K21 ["Components"]
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R15 K22 ["DraggablePoint"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K4 [require]
       89 GETTABLEKS                       R18 R15 K23 ["GuiShim"]
       91 CALL                             R17 1 1
       92 GETTABLEKS                       R18 R2 K24 ["PureComponent"]
       94 LOADK                            R20 K25 ["MoveBaseGui"]
       95 NAMECALL                         R18 R18 K26 ["extend"]
       97 CALL                             R18 2 1
       98 DUPCLOSURE                       R19 K27 [PROTO_7]
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R17
      104 SETTABLEKS                       R19 R18 K28 ["render"]
      106 MOVE                             R19 R6
      107 NEWTABLE                         R20 0 0
      109 CALL                             R19 1 1
      110 MOVE                             R20 R18
      111 CALL                             R19 1 1
      112 MOVE                             R18 R19
      113 GETTABLEKS                       R19 R3 K29 ["connect"]
      115 DUPCLOSURE                       R20 K30 [PROTO_8]
      116 DUPCLOSURE                       R21 K31 [PROTO_12]
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R11
      120 CALL                             R19 2 1
      121 MOVE                             R20 R18
      122 CALL                             R19 1 -1
      123 RETURN                           R19 -1
