PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_transform"}]
        1 DUPTABLE                         R3 K3 [{"Transform"}]
        2 SETTABLEKS                       R0 R3 K2 ["Transform"]
        4 SETTABLEKS                       R3 R2 K0 ["_transform"]
        6 GETUPVAL                         R3 0
        7 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        9 GETIMPORT                        R1 K5 [setmetatable]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K6 ["new"]
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R1 K7 ["SelectionChanged"]
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_transform"]
        2 SETTABLEKS                       R1 R2 K1 ["Transform"]
        4 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["SetTransform"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["SelectionChanged"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["_transform"]
        4 SETLIST                          R1 R2 1 [1]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R2 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R4 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 8 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K12 ["new"]
       27 DUPCLOSURE                       R4 K13 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K14 ["SetTransform"]
       30 DUPCLOSURE                       R4 K15 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K16 ["SetTransformSignal"]
       33 DUPCLOSURE                       R4 K17 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K18 ["Set"]
       36 DUPCLOSURE                       R4 K19 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K20 ["Get"]
       39 RETURN                           R3 1
