PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_selectedObject"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADN                            R1 1
        4 RETURN                           R1 1
        5 LOADN                            R1 0
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"_selectedObject"}]
        1 SETTABLEKS                       R0 R2 K0 ["_selectedObject"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["new"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K5 ["SelectionChanged"]
       15 JUMPIFNOT                        R0 ; [+1]
       16 SETTABLEN                        R0 R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_selectedObject"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K0 ["_selectedObject"]
        5 GETTABLEKS                       R2 R2 K1 ["CFrame"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETTABLEKS                       R2 R0 K0 ["_selectedObject"]
       10 SETTABLEKS                       R1 R2 K1 ["CFrame"]
       12 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["SetTransform"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["SelectionChanged"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_selectedObject"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 NEWTABLE                         R1 0 1
        5 GETTABLEKS                       R2 R0 K0 ["_selectedObject"]
        7 SETLIST                          R1 R2 1 [1]
        9 JUMPIF                           R1 ; [+2]
       10 NEWTABLE                         R1 0 0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R3 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 8 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 SETTABLEKS                       R4 R3 K12 ["__len"]
       25 DUPCLOSURE                       R4 K13 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R3 K14 ["new"]
       30 DUPCLOSURE                       R4 K15 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K16 ["SetTransform"]
       33 DUPCLOSURE                       R4 K17 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K18 ["SetTransformSignal"]
       36 DUPCLOSURE                       R4 K19 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K20 ["Set"]
       39 DUPCLOSURE                       R4 K21 [PROTO_5]
       40 SETTABLEKS                       R4 R3 K22 ["Get"]
       42 RETURN                           R3 1
