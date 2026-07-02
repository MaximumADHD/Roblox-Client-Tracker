PROTO_0:
        0 LOADK                            R3 K0 ["ShowToast"]
        1 DUPTABLE                         R4 K5 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
        2 NAMECALL                         R1 R0 K6 ["Invoke"]
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["assetIds"]
        2 LENGTH                           R3 R4
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K0 ["assetIds"]
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R3
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 MOVE                             R11 R4
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R14 R1 K2 ["assetTypes"]
       18 GETTABLE                         R13 R14 R8
       19 CALL                             R12 1 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R10 K5 [table.insert]
       23 CALL                             R10 -1 0
       24 FORGLOOP                         R5 2 ; [-11]
       26 LOADK                            R7 K6 ["AssetAccessController"]
       27 NAMECALL                         R5 R0 K7 ["GetPluginComponent"]
       29 CALL                             R5 2 1
       30 JUMPIF                           R5 ; [+6]
       31 LOADK                            R8 K8 ["ShowToast"]
       32 DUPTABLE                         R9 K13 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
       33 NAMECALL                         R6 R0 K14 ["Invoke"]
       35 CALL                             R6 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K15 ["Utils"]
       40 GETTABLEKS                       R6 R6 K16 ["grantUniversePermissions"]
       42 MOVE                             R7 R3
       43 MOVE                             R8 R4
       44 MOVE                             R9 R5
       45 CALL                             R6 3 1
       46 LOADK                            R9 K17 ["OnAddToExperienceFinished"]
       47 MOVE                             R10 R1
       48 MOVE                             R11 R6
       49 MOVE                             R12 R2
       50 NAMECALL                         R7 R0 K14 ["Invoke"]
       52 CALL                             R7 5 0
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["AssetInsertFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["convertToEngineAssetTypeEnum"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 DUPCLOSURE                       R5 K13 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R5 1
