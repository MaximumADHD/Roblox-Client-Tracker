PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getGameIdAsync"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKN                    R0 K1 [0] ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["onAssetSelected"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K3 ["assetId"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K4 ["shareAccessToAssetsAsync"]
       18 NEWTABLE                         R2 0 1
       20 MOVE                             R3 R0
       21 SETLIST                          R2 R3 1 [1]
       23 CALL                             R1 1 2
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K2 ["onAssetSelected"]
       28 GETUPVAL                         R4 1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0
       31 GETIMPORT                        R3 K6 [warn]
       33 LOADK                            R5 K7 ["Failed to grant universe access to asset with assetId %*"]
       34 MOVE                             R7 R0
       35 NAMECALL                         R5 R5 K8 ["format"]
       37 CALL                             R5 2 1
       38 MOVE                             R4 R5
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["getGameIdAsync"]
        9 GETTABLEKS                       R5 R0 K2 ["onAssetSelected"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

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
       22 GETTABLEKS                       R5 R1 K9 ["Types"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K10 [PROTO_2]
       26 CAPTURE                          VAL R3
       27 RETURN                           R5 1
