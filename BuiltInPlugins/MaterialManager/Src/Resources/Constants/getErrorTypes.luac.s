PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R3 K6 ["Types"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K14 [{"FailedUrl", "FailedToImportMap", "FailedToUploadFromFileMap", "FailedToUploadTooLarge", "FailedToInsertAssetManager", "MissingMaterial", "None"}]
       19 LOADK                            R3 K7 ["FailedUrl"]
       20 SETTABLEKS                       R3 R2 K7 ["FailedUrl"]
       22 LOADK                            R3 K8 ["FailedToImportMap"]
       23 SETTABLEKS                       R3 R2 K8 ["FailedToImportMap"]
       25 LOADK                            R3 K9 ["FailedToUploadFromFileMap"]
       26 SETTABLEKS                       R3 R2 K9 ["FailedToUploadFromFileMap"]
       28 LOADK                            R3 K10 ["FailedToUploadTooLarge"]
       29 SETTABLEKS                       R3 R2 K10 ["FailedToUploadTooLarge"]
       31 LOADK                            R3 K11 ["FailedToInsertAssetManager"]
       32 SETTABLEKS                       R3 R2 K11 ["FailedToInsertAssetManager"]
       34 LOADK                            R3 K12 ["MissingMaterial"]
       35 SETTABLEKS                       R3 R2 K12 ["MissingMaterial"]
       37 LOADK                            R3 K13 ["None"]
       38 SETTABLEKS                       R3 R2 K13 ["None"]
       40 DUPCLOSURE                       R3 K15 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 RETURN                           R3 1
