PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetsUploaded"]
        2 GETUPVAL                         R4 1
        3 DUPTABLE                         R6 K4 [{["Source"] = "Import", ["AssetIds"]}]
        4 SETTABLEKS                       R0 R6 K3 ["AssetIds"]
        6 NAMECALL                         R4 R4 K5 ["JSONEncode"]
        8 CALL                             R4 2 -1
        9 NAMECALL                         R1 R1 K6 ["Fire"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["HttpService"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["MemStorageService"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K12 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
