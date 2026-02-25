PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Position", "LeftTangent", "RightTangent"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Start"]
        4 SETTABLEKS                       R1 R0 K0 ["Position"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K1 ["LeftTangent"]
        9 GETIMPORT                        R1 K7 [Vector2.new]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K8 ["TangentSpacing"]
       14 LOADN                            R3 0
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K2 ["RightTangent"]
       18 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Position", "LeftTangent", "RightTangent"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Finish"]
        4 SETTABLEKS                       R1 R0 K0 ["Position"]
        6 GETIMPORT                        R1 K7 [Vector2.new]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K8 ["TangentSpacing"]
       11 MINUS                            R2 R3
       12 LOADN                            R3 0
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K1 ["LeftTangent"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K2 ["RightTangent"]
       19 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [table.insert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R3 1
       10 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K2 [table.insert]
       15 CALL                             R1 2 0
       16 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["Start"]
        9 GETTABLEKS                       R5 R0 K2 ["TangentSpacing"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R4 0 2
       21 GETTABLEKS                       R5 R0 K3 ["Finish"]
       23 GETTABLEKS                       R6 R0 K2 ["TangentSpacing"]
       25 SETLIST                          R4 R5 2 [1]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["useMemo"]
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R5 0 2
       36 MOVE                             R6 R1
       37 MOVE                             R7 R2
       38 SETLIST                          R5 R6 2 [1]
       40 CALL                             R3 2 1
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K4 ["createElement"]
       44 GETUPVAL                         R5 1
       45 DUPTABLE                         R6 K9 [{"Points", "ZIndex", "Color3", "Thickness"}]
       46 SETTABLEKS                       R3 R6 K5 ["Points"]
       48 GETTABLEKS                       R7 R0 K6 ["ZIndex"]
       50 SETTABLEKS                       R7 R6 K6 ["ZIndex"]
       52 GETTABLEKS                       R7 R0 K7 ["Color3"]
       54 SETTABLEKS                       R7 R6 K7 ["Color3"]
       56 GETTABLEKS                       R9 R0 K12 ["Scale"]
       58 ORK                              R8 R9 K11 [1]
       59 MULK                             R7 R8 K10 [3]
       60 SETTABLEKS                       R7 R6 K8 ["Thickness"]
       62 CALL                             R4 2 -1
       63 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Graphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R5 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K10 ["memo"]
       28 GETTABLEKS                       R5 R1 K11 ["Curve"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K12 [PROTO_3]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 GETTABLEKS                       R6 R3 K10 ["memo"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
