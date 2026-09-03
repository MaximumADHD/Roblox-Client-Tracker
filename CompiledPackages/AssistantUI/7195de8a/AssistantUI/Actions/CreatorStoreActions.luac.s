PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["loadCachedAssetAsync"]
        3 GETTABLEKS                       R3 R0 K1 ["assetId"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADK                            R3 K2 ["load_failure"]
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R0 K3 ["tag"]
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R4 K4 ["GetTagged"]
       15 CALL                             R4 2 1
       16 LENGTH                           R5 R4
       17 JUMPIFNOTEQKN                    R5 K5 [0] ; [+3]
       19 LOADK                            R5 K6 ["tag_not_found"]
       20 RETURN                           R5 1
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 NAMECALL                         R10 R2 K7 ["Clone"]
       27 CALL                             R10 1 1
       28 GETTABLEKS                       R11 R9 K8 ["Name"]
       30 SETTABLEKS                       R11 R10 K8 ["Name"]
       32 LOADK                            R13 K9 ["PVInstance"]
       33 NAMECALL                         R11 R9 K10 ["IsA"]
       35 CALL                             R11 2 1
       36 JUMPIFNOT                        R11 ; [+18]
       37 LOADK                            R13 K9 ["PVInstance"]
       38 NAMECALL                         R11 R2 K10 ["IsA"]
       40 CALL                             R11 2 1
       41 JUMPIFNOT                        R11 ; [+13]
       42 NAMECALL                         R11 R9 K11 ["GetPivot"]
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K12 ["setPositionOnGround"]
       48 MOVE                             R13 R10
       49 LOADB                            R14 0
       50 GETTABLEKS                       R15 R11 K13 ["Position"]
       52 GETTABLEKS                       R16 R11 K14 ["LookVector"]
       54 CALL                             R12 4 0
       55 MOVE                             R13 R3
       56 NAMECALL                         R11 R10 K15 ["AddTag"]
       58 CALL                             R11 2 0
       59 GETIMPORT                        R11 K17 [workspace]
       61 SETTABLEKS                       R11 R10 K18 ["Parent"]
       63 LOADNIL                          R11
       64 SETTABLEKS                       R11 R9 K18 ["Parent"]
       66 FORGLOOP                         R5 2 ; [-42]
       68 LOADK                            R5 K19 ["success"]
       69 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Bridges"]
       17 GETTABLEKS                       R3 R3 K11 ["createCreatorStoreBridge"]
       19 GETTABLEKS                       R3 R3 K12 ["CreatorStoreBridgeTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["ToolUtils"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 DUPTABLE                         R5 K17 [{"swapAssetAsync"}]
       33 SETTABLEKS                       R4 R5 K16 ["swapAssetAsync"]
       35 DUPTABLE                         R6 K19 [{"bridge"}]
       36 SETTABLEKS                       R5 R6 K18 ["bridge"]
       38 RETURN                           R6 1
