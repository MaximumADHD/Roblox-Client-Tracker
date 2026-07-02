PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Asset insert tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K3 ["networking"]
       13 NAMECALL                         R2 R1 K4 ["IsGuest"]
       15 CALL                             R2 1 1
       16 NAMECALL                         R3 R1 K5 ["IsHost"]
       18 CALL                             R3 1 1
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 JUMPIFNOT                        R2 ; [+11]
       22 GETIMPORT                        R6 K7 [require]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K8 ["AssetInsertTool"]
       27 GETTABLEKS                       R7 R7 K9 ["AssetInsertGuest"]
       29 CALL                             R6 1 1
       30 MOVE                             R4 R6
       31 GETTABLEKS                       R5 R4 K10 ["bridge"]
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 JUMPIFNOT                        R3 ; [+11]
       36 GETIMPORT                        R8 K7 [require]
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R9 R9 K8 ["AssetInsertTool"]
       41 GETTABLEKS                       R9 R9 K11 ["AssetInsertHost"]
       43 CALL                             R8 1 1
       44 MOVE                             R6 R8
       45 GETTABLEKS                       R7 R6 K10 ["bridge"]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K12 ["prepareBridges"]
       50 MOVE                             R9 R0
       51 MOVE                             R10 R5
       52 MOVE                             R11 R7
       53 CALL                             R8 3 1
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K13 ["set"]
       57 MOVE                             R10 R8
       58 CALL                             R9 1 0
       59 JUMPIF                           R2 ; [+2]
       60 LOADNIL                          R9
       61 RETURN                           R9 1
       62 GETTABLEKS                       R9 R4 K14 ["setupGuest"]
       64 MOVE                             R10 R8
       65 CALL                             R9 1 -1
       66 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R2 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [script]
       16 LOADK                            R4 K8 ["AssetManagement"]
       17 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K9 ["AssetInsertTool"]
       24 GETTABLEKS                       R4 R4 K10 ["AssetInsertBridge"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R2 K9 ["AssetInsertTool"]
       31 GETTABLEKS                       R5 R5 K11 ["AssetInsertBridgeRegistry"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Flags"]
       38 GETTABLEKS                       R6 R6 K13 ["FFlagAssistantAssetSearchInsertTool"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Flags"]
       45 GETTABLEKS                       R7 R7 K14 ["FFlagAssistantAssetSearchInsertToolABTest"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K15 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 RETURN                           R7 1
