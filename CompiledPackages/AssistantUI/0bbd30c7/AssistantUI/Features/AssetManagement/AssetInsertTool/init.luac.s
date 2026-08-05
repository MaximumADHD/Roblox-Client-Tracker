PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAssetSearchInsertTool"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAssetSearchInsertToolABTest"]
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["Asset insert tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K5 ["networking"]
       15 NAMECALL                         R2 R1 K6 ["IsGuest"]
       17 CALL                             R2 1 1
       18 NAMECALL                         R3 R1 K7 ["IsHost"]
       20 CALL                             R3 1 1
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 JUMPIFNOT                        R2 ; [+10]
       24 GETIMPORT                        R6 K9 [require]
       26 GETIMPORT                        R7 K11 [script]
       28 GETTABLEKS                       R7 R7 K12 ["DEPRECATED_AssetInsertGuest"]
       30 CALL                             R6 1 1
       31 MOVE                             R4 R6
       32 GETTABLEKS                       R5 R4 K13 ["bridge"]
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 JUMPIFNOT                        R3 ; [+10]
       37 GETIMPORT                        R8 K9 [require]
       39 GETIMPORT                        R9 K11 [script]
       41 GETTABLEKS                       R9 R9 K14 ["DEPRECATED_AssetInsertHost"]
       43 CALL                             R8 1 1
       44 MOVE                             R6 R8
       45 GETTABLEKS                       R7 R6 K13 ["bridge"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K15 ["prepareBridges"]
       50 MOVE                             R9 R0
       51 MOVE                             R10 R5
       52 MOVE                             R11 R7
       53 CALL                             R8 3 1
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K16 ["set"]
       57 MOVE                             R10 R8
       58 CALL                             R9 1 0
       59 JUMPIF                           R2 ; [+2]
       60 LOADNIL                          R9
       61 RETURN                           R9 1
       62 GETTABLEKS                       R9 R4 K17 ["setupGuest"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Tools"]
       16 GETTABLEKS                       R3 R3 K8 ["ToolTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K9 ["AssetInsertBridgeRegistry"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Generated"]
       30 GETTABLEKS                       R5 R5 K11 ["Bridges"]
       32 GETTABLEKS                       R5 R5 K12 ["AssetInsertToolBridge"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K13 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 RETURN                           R5 1
