PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["assetId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["shareAccessToAssetsAsync"]
        6 NEWTABLE                         R2 0 1
        8 MOVE                             R3 R0
        9 SETLIST                          R2 R3 1 [1]
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["onAssetSelected"]
       16 GETUPVAL                         R4 0
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 GETIMPORT                        R3 K4 [warn]
       21 GETUPVAL                         R4 2
       22 LOADK                            R6 K5 ["AssetAccess"]
       23 LOADK                            R7 K6 ["ShareFailed"]
       24 DUPTABLE                         R8 K8 [{"assetType", "assetId"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K7 ["assetType"]
       28 SETTABLEKS                       R9 R8 K7 ["assetType"]
       30 SETTABLEKS                       R0 R8 K0 ["assetId"]
       32 NAMECALL                         R4 R4 K9 ["getText"]
       34 CALL                             R4 4 -1
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["gameId"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["onAssetSelected"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K5 [task.spawn]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R4 R0 K1 ["gameId"]
       10 GETTABLEKS                       R5 R0 K2 ["onAssetSelected"]
       12 SETLIST                          R3 R4 2 [1]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Resources"]
       24 GETTABLEKS                       R5 R5 K10 ["Localization"]
       26 GETTABLEKS                       R5 R5 K11 ["Translator"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Types"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K13 [PROTO_2]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 RETURN                           R6 1
