PROTO_0:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K4 [{"createEditableMeshAsync", "canEditAssetAsync", "createAssetAsync"}]
        6 GETTABLEKS                       R3 R1 K1 ["createEditableMeshAsync"]
        8 SETTABLEKS                       R3 R2 K1 ["createEditableMeshAsync"]
       10 DUPCLOSURE                       R3 K5 [PROTO_0]
       11 SETTABLEKS                       R3 R2 K2 ["canEditAssetAsync"]
       13 GETTABLEKS                       R3 R1 K3 ["createAssetAsync"]
       15 SETTABLEKS                       R3 R2 K3 ["createAssetAsync"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K6 ["createElement"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K7 ["Provider"]
       23 DUPTABLE                         R5 K9 [{"value"}]
       24 SETTABLEKS                       R2 R5 K8 ["value"]
       26 GETTABLEKS                       R6 R0 K10 ["children"]
       28 CALL                             R3 3 -1
       29 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["AssetServiceContext"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
