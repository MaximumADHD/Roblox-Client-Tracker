PROTO_0:
        0 DUPTABLE                         R3 K1 [{"_region"}]
        1 DUPTABLE                         R4 K3 [{"Region"}]
        2 DUPTABLE                         R5 K6 [{"transform", "size"}]
        3 SETTABLEKS                       R0 R5 K4 ["transform"]
        5 SETTABLEKS                       R1 R5 K5 ["size"]
        7 SETTABLEKS                       R5 R4 K2 ["Region"]
        9 SETTABLEKS                       R4 R3 K0 ["_region"]
       11 GETUPVAL                         R4 0
       12 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       14 GETIMPORT                        R2 K8 [setmetatable]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K9 ["new"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K10 ["SelectionChanged"]
       23 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_region"]
        2 DUPTABLE                         R3 K3 [{"size", "transform"}]
        3 GETTABLEKS                       R4 R1 K4 ["Size"]
        5 SETTABLEKS                       R4 R3 K1 ["size"]
        7 GETTABLEKS                       R4 R1 K5 ["Transform"]
        9 SETTABLEKS                       R4 R3 K2 ["transform"]
       11 SETTABLEKS                       R3 R2 K6 ["Region"]
       13 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["SetRegion"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["SelectionChanged"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["_region"]
        4 SETLIST                          R1 R2 1 [1]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R3 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 8 0
       27 SETTABLEKS                       R4 R4 K12 ["__index"]
       29 DUPCLOSURE                       R5 K13 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R5 R4 K14 ["new"]
       34 DUPCLOSURE                       R5 K15 [PROTO_1]
       35 SETTABLEKS                       R5 R4 K16 ["SetRegion"]
       37 DUPCLOSURE                       R5 K17 [PROTO_2]
       38 SETTABLEKS                       R5 R4 K18 ["SetRegionSignal"]
       40 DUPCLOSURE                       R5 K19 [PROTO_3]
       41 SETTABLEKS                       R5 R4 K20 ["Set"]
       43 DUPCLOSURE                       R5 K21 [PROTO_4]
       44 SETTABLEKS                       R5 R4 K22 ["Get"]
       46 RETURN                           R4 1
