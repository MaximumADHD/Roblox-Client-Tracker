PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SelectedObject"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R1 K1 ["SelectedObject"]
       10 GETTABLEKS                       R3 R3 K2 ["Parent"]
       12 CALL                             R2 1 1
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R1 K3 ["ControlPoints"]
       17 GETTABLEKS                       R5 R1 K4 ["Path2DToolMode"]
       19 JUMPIFNOTEQKS                    R5 K5 ["AddPoint"] ; [+37]
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K6 ["createElement"]
       28 GETUPVAL                         R11 2
       29 DUPTABLE                         R12 K13 [{["index"], ["point"], ["showTangentsPhantom"], ["isSelected"], ["Disabled"] = True}]
       30 SETTABLEKS                       R8 R12 K7 ["index"]
       32 SETTABLEKS                       R9 R12 K8 ["point"]
       34 GETTABLEKS                       R13 R1 K14 ["IsDraggingPoint"]
       36 JUMPIFNOT                        R13 ; [+6]
       37 GETTABLEKS                       R14 R1 K15 ["SelectedControlPointIndex"]
       39 JUMPIFEQ                         R14 R8 ; [+2]
       41 LOADB                            R13 0 +1
       42 LOADB                            R13 1
       43 SETTABLEKS                       R13 R12 K9 ["showTangentsPhantom"]
       45 GETTABLEKS                       R14 R1 K15 ["SelectedControlPointIndex"]
       47 JUMPIFEQ                         R14 R8 ; [+2]
       49 LOADB                            R13 0 +1
       50 LOADB                            R13 1
       51 SETTABLEKS                       R13 R12 K10 ["isSelected"]
       53 CALL                             R10 2 1
       54 SETTABLE                         R10 R3 R8
       55 FORGLOOP                         R5 2 ; [-31]
       57 GETTABLEKS                       R6 R1 K1 ["SelectedObject"]
       59 GETTABLEKS                       R6 R6 K16 ["Visible"]
       61 JUMPIFEQKB                       R6 FALSE ; [+2]
       63 LOADB                            R5 0 +1
       64 LOADB                            R5 1
       65 GETTABLEKS                       R7 R1 K4 ["Path2DToolMode"]
       67 JUMPIFNOTEQKS                    R7 K17 ["DoneEditing"] ; [+2]
       69 LOADB                            R6 0 +1
       70 LOADB                            R6 1
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K6 ["createElement"]
       74 GETUPVAL                         R8 3
       75 DUPTABLE                         R9 K20 [{["DisplayOrder"] = 1}]
       76 DUPTABLE                         R10 K24 [{"EmptySpaceInputBlocker", "LineFrame", "PointFrame"}]
       77 MOVE                             R11 R6
       78 JUMPIFNOT                        R11 ; [+16]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K6 ["createElement"]
       82 GETUPVAL                         R12 4
       83 DUPTABLE                         R13 K27 [{"Size", "OnClick"}]
       84 GETIMPORT                        R14 K30 [UDim2.fromScale]
       86 LOADN                            R15 1
       87 LOADN                            R16 1
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K25 ["Size"]
       91 DUPCLOSURE                       R14 K31 [PROTO_0]
       92 SETTABLEKS                       R14 R13 K26 ["OnClick"]
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K21 ["EmptySpaceInputBlocker"]
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R11 R11 K6 ["createElement"]
      100 LOADK                            R12 K32 ["Frame"]
      101 DUPTABLE                         R13 K35 [{["Size"], ["BackgroundTransparency"] = 1, ["Position"]}]
      102 GETIMPORT                        R14 K30 [UDim2.fromScale]
      104 LOADN                            R15 1
      105 LOADN                            R16 1
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K25 ["Size"]
      109 GETIMPORT                        R14 K37 [UDim2.fromOffset]
      111 GETTABLEKS                       R15 R2 K38 ["X"]
      113 GETTABLEKS                       R16 R2 K39 ["Y"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K34 ["Position"]
      118 DUPTABLE                         R14 K41 [{"Line"}]
      119 MOVE                             R15 R5
      120 JUMPIFNOT                        R15 ; [+10]
      121 GETUPVAL                         R15 1
      122 GETTABLEKS                       R15 R15 K6 ["createElement"]
      124 GETUPVAL                         R16 5
      125 DUPTABLE                         R17 K44 [{["Style"] = "Visualization", ["ControlPoints"]}]
      126 GETTABLEKS                       R18 R1 K3 ["ControlPoints"]
      128 SETTABLEKS                       R18 R17 K3 ["ControlPoints"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K40 ["Line"]
      133 CALL                             R11 3 1
      134 SETTABLEKS                       R11 R10 K22 ["LineFrame"]
      136 GETUPVAL                         R11 1
      137 GETTABLEKS                       R11 R11 K6 ["createElement"]
      139 LOADK                            R12 K32 ["Frame"]
      140 DUPTABLE                         R13 K45 [{["Size"], ["BackgroundTransparency"] = 1}]
      141 GETIMPORT                        R14 K30 [UDim2.fromScale]
      143 LOADN                            R15 1
      144 LOADN                            R16 1
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K25 ["Size"]
      148 MOVE                             R14 R3
      149 CALL                             R11 3 1
      150 SETTABLEKS                       R11 R10 K23 ["PointFrame"]
      152 CALL                             R7 3 -1
      153 RETURN                           R7 -1

PROTO_2:
        0 DUPTABLE                         R2 K6 [{"Refreshed", "SelectedObject", "Path2DToolMode", "ControlPoints", "SelectedControlPointIndex", "IsDraggingPoint"}]
        1 GETTABLEKS                       R3 R0 K7 ["PathReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["Refreshed"]
        5 SETTABLEKS                       R3 R2 K0 ["Refreshed"]
        7 GETTABLEKS                       R3 R0 K7 ["PathReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["SelectedObject"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedObject"]
       13 GETTABLEKS                       R3 R0 K7 ["PathReducer"]
       15 GETTABLEKS                       R3 R3 K2 ["Path2DToolMode"]
       17 SETTABLEKS                       R3 R2 K2 ["Path2DToolMode"]
       19 GETTABLEKS                       R3 R0 K7 ["PathReducer"]
       21 GETTABLEKS                       R3 R3 K3 ["ControlPoints"]
       23 SETTABLEKS                       R3 R2 K3 ["ControlPoints"]
       25 GETTABLEKS                       R3 R0 K7 ["PathReducer"]
       27 GETTABLEKS                       R3 R3 K4 ["SelectedControlPointIndex"]
       29 SETTABLEKS                       R3 R2 K4 ["SelectedControlPointIndex"]
       31 GETTABLEKS                       R3 R0 K7 ["PathReducer"]
       33 GETTABLEKS                       R3 R3 K5 ["IsDraggingPoint"]
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
       37 GETTABLEKS                       R5 R4 K11 ["UI"]
       39 GETTABLEKS                       R6 R5 K12 ["Pane"]
       41 GETTABLEKS                       R7 R4 K13 ["ContextServices"]
       43 GETTABLEKS                       R8 R7 K14 ["withContext"]
       45 GETTABLEKS                       R9 R0 K5 ["Src"]
       47 GETTABLEKS                       R9 R9 K15 ["Actions"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R9 K16 ["PathChanged"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R12 R9 K17 ["ToggleMoveTool"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K4 [require]
       61 GETTABLEKS                       R13 R0 K5 ["Src"]
       63 GETTABLEKS                       R13 R13 K18 ["Util"]
       65 GETTABLEKS                       R13 R13 K19 ["getAbsolutePosition"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R0 K5 ["Src"]
       70 GETTABLEKS                       R13 R13 K20 ["Components"]
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
