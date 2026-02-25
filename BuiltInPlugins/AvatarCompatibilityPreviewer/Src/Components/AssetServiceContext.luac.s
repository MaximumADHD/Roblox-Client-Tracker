PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateEditableMeshAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CanEditAssetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["CreateAssetAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 DUPTABLE                         R3 K15 [{"createEditableMeshAsync", "canEditAssetAsync", "createAssetAsync"}]
       21 DUPCLOSURE                       R4 K16 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R3 K12 ["createEditableMeshAsync"]
       25 DUPCLOSURE                       R4 K17 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K13 ["canEditAssetAsync"]
       29 DUPCLOSURE                       R4 K18 [PROTO_2]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K14 ["createAssetAsync"]
       33 GETTABLEKS                       R4 R2 K19 ["createContext"]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 RETURN                           R4 1
