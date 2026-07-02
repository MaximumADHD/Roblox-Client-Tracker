PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+26]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R1 2
        7 LOADK                            R3 K0 ["AssetsUploaded"]
        8 GETUPVAL                         R4 3
        9 DUPTABLE                         R6 K4 [{["Source"] = "Import", ["AssetIds"]}]
       10 SETTABLEKS                       R0 R6 K3 ["AssetIds"]
       12 NAMECALL                         R4 R4 K5 ["JSONEncode"]
       14 CALL                             R4 2 -1
       15 NAMECALL                         R1 R1 K6 ["Fire"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 2
       20 LOADK                            R3 K0 ["AssetsUploaded"]
       21 GETUPVAL                         R4 3
       22 MOVE                             R6 R0
       23 NAMECALL                         R4 R4 K5 ["JSONEncode"]
       25 CALL                             R4 2 -1
       26 NAMECALL                         R1 R1 K6 ["Fire"]
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

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
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K6 ["Src"]
       28 GETTABLEKS                       R5 R5 K12 ["Flags"]
       30 GETTABLEKS                       R5 R5 K13 ["getFFlagAssetImportShareUploadResults"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Src"]
       37 GETTABLEKS                       R6 R6 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K14 ["getFFlagAinAmrRecentsSource"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K15 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
