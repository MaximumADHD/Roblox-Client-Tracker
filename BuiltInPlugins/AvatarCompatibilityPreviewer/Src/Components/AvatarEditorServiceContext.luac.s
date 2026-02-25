PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarEditorService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R1 1
        3 MOVE                             R3 R0
        4 GETIMPORT                        R4 K3 [Enum.AvatarItemType.Asset]
        6 NAMECALL                         R1 R1 K4 ["GetBatchItemDetailsAsync"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1
       10 GETIMPORT                        R1 K6 [error]
       12 LOADK                            R2 K7 ["Calling GetBatchItemDetailsAsync on unmocked AvatarEditorService"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R1 1
        3 MOVE                             R3 R0
        4 GETIMPORT                        R4 K3 [Enum.AvatarItemType.Bundle]
        6 NAMECALL                         R1 R1 K4 ["GetBatchItemDetailsAsync"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1
       10 GETIMPORT                        R1 K6 [error]
       12 LOADK                            R2 K7 ["Calling GetBatchItemDetailsAsync on unmocked AvatarEditorService"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

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
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K11 [pcall]
       23 DUPCLOSURE                       R4 K12 [PROTO_0]
       24 CALL                             R3 1 2
       25 DUPTABLE                         R5 K15 [{"getBatchAssetDetailsAsync", "getBatchBundleDetailsAsync"}]
       26 DUPCLOSURE                       R6 K16 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R6 R5 K13 ["getBatchAssetDetailsAsync"]
       31 DUPCLOSURE                       R6 K17 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R6 R5 K14 ["getBatchBundleDetailsAsync"]
       36 GETTABLEKS                       R6 R1 K18 ["createContext"]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 1
       40 RETURN                           R6 1
