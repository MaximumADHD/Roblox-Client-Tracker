PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETTABLEKS                       R3 R1 K1 ["relativeTo"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["Active"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+4]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["ActiveInstance"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["createElement"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["Portal"]
       19 DUPTABLE                         R5 K7 [{"target"}]
       20 GETUPVAL                         R6 3
       21 SETTABLEKS                       R6 R5 K6 ["target"]
       23 DUPTABLE                         R6 K9 [{"AlignToolPreviewUI"}]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K4 ["createElement"]
       27 LOADK                            R8 K10 ["Folder"]
       28 NEWTABLE                         R9 0 0
       30 DUPTABLE                         R10 K12 [{"Elements"}]
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R12 R1 K13 ["objects"]
       34 GETTABLEKS                       R13 R1 K14 ["space"]
       36 GETTABLEKS                       R14 R1 K15 ["axes"]
       38 GETTABLEKS                       R15 R1 K16 ["mode"]
       40 MOVE                             R16 R2
       41 CALL                             R11 5 1
       42 SETTABLEKS                       R11 R10 K11 ["Elements"]
       44 CALL                             R7 3 1
       45 SETTABLEKS                       R7 R6 K8 ["AlignToolPreviewUI"]
       47 CALL                             R3 3 -1
       48 RETURN                           R3 -1

PROTO_1:
        0 DUPTABLE                         R2 K6 [{"objects", "mode", "space", "axes", "relativeTo", "alignEnabled"}]
        1 GETTABLEKS                       R3 R0 K7 ["alignableObjects"]
        3 SETTABLEKS                       R3 R2 K0 ["objects"]
        5 GETTABLEKS                       R3 R0 K8 ["alignmentMode"]
        7 SETTABLEKS                       R3 R2 K1 ["mode"]
        9 GETTABLEKS                       R3 R0 K9 ["alignmentSpace"]
       11 SETTABLEKS                       R3 R2 K2 ["space"]
       13 GETTABLEKS                       R3 R0 K10 ["enabledAxes"]
       15 SETTABLEKS                       R3 R2 K3 ["axes"]
       17 GETTABLEKS                       R3 R0 K4 ["relativeTo"]
       19 SETTABLEKS                       R3 R2 K4 ["relativeTo"]
       21 GETTABLEKS                       R3 R0 K5 ["alignEnabled"]
       23 SETTABLEKS                       R3 R2 K5 ["alignEnabled"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["Selection"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["CoreGui"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Src"]
       39 GETTABLEKS                       R6 R6 K14 ["Utility"]
       41 GETTABLEKS                       R6 R6 K15 ["renderAlignObjectsPreview"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K9 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Utility"]
       50 GETTABLEKS                       R7 R7 K16 ["RelativeTo"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K17 ["PureComponent"]
       55 LOADK                            R9 K18 ["AlignObjectsPreview"]
       56 NAMECALL                         R7 R7 K19 ["extend"]
       58 CALL                             R7 2 1
       59 DUPCLOSURE                       R8 K20 [PROTO_0]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R8 R7 K21 ["render"]
       67 DUPCLOSURE                       R8 K22 [PROTO_1]
       68 GETTABLEKS                       R9 R4 K23 ["connect"]
       70 MOVE                             R10 R8
       71 LOADNIL                          R11
       72 CALL                             R9 2 1
       73 MOVE                             R10 R7
       74 CALL                             R9 1 -1
       75 RETURN                           R9 -1
