PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SelectedObject"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R4 R1 K1 ["SelectedObject"]
       10 GETTABLEKS                       R3 R4 K2 ["Parent"]
       12 CALL                             R2 1 1
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R1 K3 ["ControlPoints"]
       17 GETTABLEKS                       R5 R1 K4 ["Path2DToolMode"]
       19 JUMPIFNOTEQKS                    R5 K5 ["AddPoint"] ; [+40]
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R10 R11 K6 ["createElement"]
       28 GETUPVAL                         R11 2
       29 DUPTABLE                         R12 K12 [{"index", "point", "showTangentsPhantom", "isSelected", "Disabled"}]
       30 SETTABLEKS                       R8 R12 K7 ["index"]
       32 SETTABLEKS                       R9 R12 K8 ["point"]
       34 GETTABLEKS                       R13 R1 K13 ["IsDraggingPoint"]
       36 JUMPIFNOT                        R13 ; [+6]
       37 GETTABLEKS                       R14 R1 K14 ["SelectedControlPointIndex"]
       39 JUMPIFEQ                         R14 R8 ; [+2]
       41 LOADB                            R13 0 +1
       42 LOADB                            R13 1
       43 SETTABLEKS                       R13 R12 K9 ["showTangentsPhantom"]
       45 GETTABLEKS                       R14 R1 K14 ["SelectedControlPointIndex"]
       47 JUMPIFEQ                         R14 R8 ; [+2]
       49 LOADB                            R13 0 +1
       50 LOADB                            R13 1
       51 SETTABLEKS                       R13 R12 K10 ["isSelected"]
       53 LOADB                            R13 1
       54 SETTABLEKS                       R13 R12 K11 ["Disabled"]
       56 CALL                             R10 2 1
       57 SETTABLE                         R10 R3 R8
       58 FORGLOOP                         R5 2 ; [-34]
       60 GETTABLEKS                       R7 R1 K1 ["SelectedObject"]
       62 GETTABLEKS                       R6 R7 K15 ["Visible"]
       64 JUMPIFEQKB                       R6 FALSE ; [+2]
       66 LOADB                            R5 0 +1
       67 LOADB                            R5 1
       68 GETTABLEKS                       R7 R1 K4 ["Path2DToolMode"]
       70 JUMPIFNOTEQKS                    R7 K16 ["DoneEditing"] ; [+2]
       72 LOADB                            R6 0 +1
       73 LOADB                            R6 1
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R7 R8 K6 ["createElement"]
       77 GETUPVAL                         R8 3
       78 DUPTABLE                         R9 K18 [{"DisplayOrder"}]
       79 LOADN                            R10 1
       80 SETTABLEKS                       R10 R9 K17 ["DisplayOrder"]
       82 DUPTABLE                         R10 K22 [{"EmptySpaceInputBlocker", "LineFrame", "PointFrame"}]
       83 MOVE                             R11 R6
       84 JUMPIFNOT                        R11 ; [+16]
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R11 R12 K6 ["createElement"]
       88 GETUPVAL                         R12 4
       89 DUPTABLE                         R13 K25 [{"Size", "OnClick"}]
       90 GETIMPORT                        R14 K28 [UDim2.fromScale]
       92 LOADN                            R15 1
       93 LOADN                            R16 1
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K23 ["Size"]
       97 DUPCLOSURE                       R14 K29 [PROTO_0]
       98 SETTABLEKS                       R14 R13 K24 ["OnClick"]
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K19 ["EmptySpaceInputBlocker"]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R11 R12 K6 ["createElement"]
      106 LOADK                            R12 K30 ["Frame"]
      107 DUPTABLE                         R13 K33 [{"Size", "BackgroundTransparency", "Position"}]
      108 GETIMPORT                        R14 K28 [UDim2.fromScale]
      110 LOADN                            R15 1
      111 LOADN                            R16 1
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K23 ["Size"]
      115 LOADN                            R14 1
      116 SETTABLEKS                       R14 R13 K31 ["BackgroundTransparency"]
      118 GETIMPORT                        R14 K35 [UDim2.fromOffset]
      120 GETTABLEKS                       R15 R2 K36 ["X"]
      122 GETTABLEKS                       R16 R2 K37 ["Y"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K32 ["Position"]
      127 DUPTABLE                         R14 K39 [{"Line"}]
      128 MOVE                             R15 R5
      129 JUMPIFNOT                        R15 ; [+13]
      130 GETUPVAL                         R16 1
      131 GETTABLEKS                       R15 R16 K6 ["createElement"]
      133 GETUPVAL                         R16 5
      134 DUPTABLE                         R17 K41 [{"Style", "ControlPoints"}]
      135 LOADK                            R18 K42 ["Visualization"]
      136 SETTABLEKS                       R18 R17 K40 ["Style"]
      138 GETTABLEKS                       R18 R1 K3 ["ControlPoints"]
      140 SETTABLEKS                       R18 R17 K3 ["ControlPoints"]
      142 CALL                             R15 2 1
      143 SETTABLEKS                       R15 R14 K38 ["Line"]
      145 CALL                             R11 3 1
      146 SETTABLEKS                       R11 R10 K20 ["LineFrame"]
      148 GETUPVAL                         R12 1
      149 GETTABLEKS                       R11 R12 K6 ["createElement"]
      151 LOADK                            R12 K30 ["Frame"]
      152 DUPTABLE                         R13 K43 [{"Size", "BackgroundTransparency"}]
      153 GETIMPORT                        R14 K28 [UDim2.fromScale]
      155 LOADN                            R15 1
      156 LOADN                            R16 1
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K23 ["Size"]
      160 LOADN                            R14 1
      161 SETTABLEKS                       R14 R13 K31 ["BackgroundTransparency"]
      163 MOVE                             R14 R3
      164 CALL                             R11 3 1
      165 SETTABLEKS                       R11 R10 K21 ["PointFrame"]
      167 CALL                             R7 3 -1
      168 RETURN                           R7 -1

PROTO_2:
        0 DUPTABLE                         R2 K6 [{"Refreshed", "SelectedObject", "Path2DToolMode", "ControlPoints", "SelectedControlPointIndex", "IsDraggingPoint"}]
        1 GETTABLEKS                       R4 R0 K7 ["PathReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["Refreshed"]
        5 SETTABLEKS                       R3 R2 K0 ["Refreshed"]
        7 GETTABLEKS                       R4 R0 K7 ["PathReducer"]
        9 GETTABLEKS                       R3 R4 K1 ["SelectedObject"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedObject"]
       13 GETTABLEKS                       R4 R0 K7 ["PathReducer"]
       15 GETTABLEKS                       R3 R4 K2 ["Path2DToolMode"]
       17 SETTABLEKS                       R3 R2 K2 ["Path2DToolMode"]
       19 GETTABLEKS                       R4 R0 K7 ["PathReducer"]
       21 GETTABLEKS                       R3 R4 K3 ["ControlPoints"]
       23 SETTABLEKS                       R3 R2 K3 ["ControlPoints"]
       25 GETTABLEKS                       R4 R0 K7 ["PathReducer"]
       27 GETTABLEKS                       R3 R4 K4 ["SelectedControlPointIndex"]
       29 SETTABLEKS                       R3 R2 K4 ["SelectedControlPointIndex"]
       31 GETTABLEKS                       R4 R0 K7 ["PathReducer"]
       33 GETTABLEKS                       R3 R4 K5 ["IsDraggingPoint"]
       35 SETTABLEKS                       R3 R2 K5 ["IsDraggingPoint"]
       37 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"dispatchPathChanged", "dispatchToggleMoveTool"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchPathChanged"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchToggleMoveTool"]
       11 RETURN                           R1 1

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
       37 GETTABLEKS                       R5 R4 K11 ["UI"]
       39 GETTABLEKS                       R6 R5 K12 ["Pane"]
       41 GETTABLEKS                       R7 R4 K13 ["ContextServices"]
       43 GETTABLEKS                       R8 R7 K14 ["withContext"]
       45 GETTABLEKS                       R10 R0 K5 ["Src"]
       47 GETTABLEKS                       R9 R10 K15 ["Actions"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R9 K16 ["PathChanged"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R12 R9 K17 ["ToggleMoveTool"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K4 [require]
       61 GETTABLEKS                       R15 R0 K5 ["Src"]
       63 GETTABLEKS                       R14 R15 K18 ["Util"]
       65 GETTABLEKS                       R13 R14 K19 ["getAbsolutePosition"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R14 R0 K5 ["Src"]
       70 GETTABLEKS                       R13 R14 K20 ["Components"]
       72 GETIMPORT                        R14 K4 [require]
       74 GETTABLEKS                       R15 R13 K21 ["ControlPoint"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K4 [require]
       79 GETTABLEKS                       R16 R13 K22 ["GuiShim"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R13 K23 ["Line"]
       86 CALL                             R16 1 1
       87 GETTABLEKS                       R17 R2 K24 ["PureComponent"]
       89 LOADK                            R19 K25 ["VisualizationGui"]
       90 NAMECALL                         R17 R17 K26 ["extend"]
       92 CALL                             R17 2 1
       93 DUPCLOSURE                       R18 K27 [PROTO_1]
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R16
      100 SETTABLEKS                       R18 R17 K28 ["render"]
      102 MOVE                             R18 R8
      103 NEWTABLE                         R19 0 0
      105 CALL                             R18 1 1
      106 MOVE                             R19 R17
      107 CALL                             R18 1 1
      108 MOVE                             R17 R18
      109 GETTABLEKS                       R18 R3 K29 ["connect"]
      111 DUPCLOSURE                       R19 K30 [PROTO_2]
      112 DUPCLOSURE                       R20 K31 [PROTO_5]
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 CALL                             R18 2 1
      116 MOVE                             R19 R17
      117 CALL                             R18 1 -1
      118 RETURN                           R18 -1
