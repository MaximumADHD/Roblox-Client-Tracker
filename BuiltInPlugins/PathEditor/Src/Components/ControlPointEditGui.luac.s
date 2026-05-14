PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R1 K1 ["SelectedObject"]
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETTABLEKS                       R3 R1 K2 ["Path2DToolMode"]
        9 JUMPIFEQKS                       R3 K3 ["DoneEditing"] ; [+5]
       11 GETTABLEKS                       R3 R1 K2 ["Path2DToolMode"]
       13 JUMPIFNOTEQKS                    R3 K4 ["AddPoint"] ; [+3]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 GETIMPORT                        R3 K6 [pairs]
       19 GETTABLEKS                       R4 R1 K7 ["ControlPoints"]
       21 CALL                             R3 1 3
       22 FORGPREP_NEXT                    R3
       23 GETTABLEKS                       R9 R1 K8 ["SelectedControlPointIndex"]
       25 JUMPIFEQ                         R9 R6 ; [+2]
       27 LOADB                            R8 0 +1
       28 LOADB                            R8 1
       29 LOADB                            R9 0
       30 GETTABLEKS                       R10 R1 K8 ["SelectedControlPointIndex"]
       32 LOADN                            R11 0
       33 JUMPIFNOTLT                      R11 R10 ; [+10]
       35 GETTABLEKS                       R10 R1 K8 ["SelectedControlPointIndex"]
       37 GETTABLEKS                       R12 R1 K7 ["ControlPoints"]
       39 LENGTH                           R11 R12
       40 JUMPIFLE                         R10 R11 ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 MOVE                             R10 R9
       45 JUMPIFNOT                        R10 ; [+13]
       46 LOADB                            R10 1
       47 GETTABLEKS                       R12 R1 K8 ["SelectedControlPointIndex"]
       49 SUBK                             R11 R12 K9 [1]
       50 JUMPIFEQ                         R11 R6 ; [+8]
       52 GETTABLEKS                       R12 R1 K8 ["SelectedControlPointIndex"]
       54 ADDK                             R11 R12 K9 [1]
       55 JUMPIFEQ                         R11 R6 ; [+2]
       57 LOADB                            R10 0 +1
       58 LOADB                            R10 1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K10 ["createElement"]
       62 GETUPVAL                         R12 1
       63 DUPTABLE                         R13 K16 [{"index", "point", "showTangents", "showTangentsPhantom", "isSelected"}]
       64 SETTABLEKS                       R6 R13 K11 ["index"]
       66 SETTABLEKS                       R7 R13 K12 ["point"]
       68 SETTABLEKS                       R8 R13 K13 ["showTangents"]
       70 SETTABLEKS                       R10 R13 K14 ["showTangentsPhantom"]
       72 GETTABLEKS                       R15 R1 K8 ["SelectedControlPointIndex"]
       74 JUMPIFEQ                         R15 R6 ; [+2]
       76 LOADB                            R14 0 +1
       77 LOADB                            R14 1
       78 SETTABLEKS                       R14 R13 K15 ["isSelected"]
       80 CALL                             R11 2 1
       81 SETTABLE                         R11 R2 R6
       82 FORGLOOP                         R3 2 ; [-60]
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R3 R3 K10 ["createElement"]
       87 GETUPVAL                         R4 2
       88 DUPTABLE                         R5 K19 [{"DisplayOrder", "ZIndexBehavior"}]
       89 LOADN                            R6 2
       90 SETTABLEKS                       R6 R5 K17 ["DisplayOrder"]
       92 GETIMPORT                        R6 K22 [Enum.ZIndexBehavior.Sibling]
       94 SETTABLEKS                       R6 R5 K18 ["ZIndexBehavior"]
       96 MOVE                             R6 R2
       97 CALL                             R3 3 -1
       98 RETURN                           R3 -1

PROTO_1:
        0 DUPTABLE                         R2 K5 [{"Refreshed", "SelectedObject", "Path2DToolMode", "ControlPoints", "SelectedControlPointIndex"}]
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
       21 GETTABLEKS                       R3 R3 K3 ["ControlPoints"]
       23 SETTABLEKS                       R3 R2 K3 ["ControlPoints"]
       25 GETTABLEKS                       R3 R0 K6 ["PathReducer"]
       27 GETTABLEKS                       R3 R3 K4 ["SelectedControlPointIndex"]
       29 SETTABLEKS                       R3 R2 K4 ["SelectedControlPointIndex"]
       31 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"dispatchAddControlPoint"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchAddControlPoint"]
        6 RETURN                           R1 1

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
       43 GETTABLEKS                       R7 R7 K13 ["Thunks"]
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R7 K14 ["AddControlPoint"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R0 K5 ["Src"]
       52 GETTABLEKS                       R9 R9 K15 ["Components"]
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R11 R9 K16 ["ControlPoint"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K4 [require]
       61 GETTABLEKS                       R12 R9 K17 ["GuiShim"]
       63 CALL                             R11 1 1
       64 GETTABLEKS                       R12 R2 K18 ["PureComponent"]
       66 LOADK                            R14 K19 ["ControlPointEditGui"]
       67 NAMECALL                         R12 R12 K20 ["extend"]
       69 CALL                             R12 2 1
       70 DUPCLOSURE                       R13 K21 [PROTO_0]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R11
       74 SETTABLEKS                       R13 R12 K22 ["render"]
       76 MOVE                             R13 R6
       77 NEWTABLE                         R14 0 0
       79 CALL                             R13 1 1
       80 MOVE                             R14 R12
       81 CALL                             R13 1 1
       82 MOVE                             R12 R13
       83 GETTABLEKS                       R13 R3 K23 ["connect"]
       85 DUPCLOSURE                       R14 K24 [PROTO_1]
       86 DUPCLOSURE                       R15 K25 [PROTO_3]
       87 CAPTURE                          VAL R8
       88 CALL                             R13 2 1
       89 MOVE                             R14 R12
       90 CALL                             R13 1 -1
       91 RETURN                           R13 -1
