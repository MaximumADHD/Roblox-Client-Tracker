PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K1 [{"assetItem"}]
        4 DUPTABLE                         R3 K3 [{"asset"}]
        5 SETTABLEKS                       R1 R3 K2 ["asset"]
        7 SETTABLEKS                       R3 R2 K0 ["assetItem"]
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R5 R0 K7 ["tests"]
       16 GETTABLEKS                       R4 R5 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["createAssetFromMock"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
