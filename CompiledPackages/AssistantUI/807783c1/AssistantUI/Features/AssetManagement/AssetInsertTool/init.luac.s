PROTO_0:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["host"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETIMPORT                        R3 K2 [require]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["AssetInsertTool"]
        9 GETTABLEKS                       R4 R4 K4 ["AssetInsertHost"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K5 ["bridge"]
       14 LOADNIL                          R3
       15 GETTABLEKS                       R4 R1 K6 ["guest"]
       17 JUMPIFNOT                        R4 ; [+10]
       18 GETIMPORT                        R4 K2 [require]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K3 ["AssetInsertTool"]
       23 GETTABLEKS                       R5 R5 K7 ["AssetInsertGuest"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R3 R4 K5 ["bridge"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K8 ["prepareBridges"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R2
       33 MOVE                             R7 R3
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

PROTO_1:
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
       13 NAMECALL                         R2 R1 K4 ["IsHost"]
       15 CALL                             R2 1 1
       16 NAMECALL                         R3 R1 K5 ["IsGuest"]
       18 CALL                             R3 1 1
       19 DUPTABLE                         R5 K8 [{"host", "guest"}]
       20 SETTABLEKS                       R2 R5 K6 ["host"]
       22 SETTABLEKS                       R3 R5 K7 ["guest"]
       24 LOADNIL                          R6
       25 GETTABLEKS                       R7 R5 K6 ["host"]
       27 JUMPIFNOT                        R7 ; [+10]
       28 GETIMPORT                        R7 K10 [require]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K11 ["AssetInsertTool"]
       33 GETTABLEKS                       R8 R8 K12 ["AssetInsertHost"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R6 R7 K13 ["bridge"]
       38 LOADNIL                          R7
       39 GETTABLEKS                       R8 R5 K7 ["guest"]
       41 JUMPIFNOT                        R8 ; [+10]
       42 GETIMPORT                        R8 K10 [require]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K11 ["AssetInsertTool"]
       47 GETTABLEKS                       R9 R9 K14 ["AssetInsertGuest"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R7 R8 K13 ["bridge"]
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R8 R8 K15 ["prepareBridges"]
       55 MOVE                             R9 R0
       56 MOVE                             R10 R6
       57 MOVE                             R11 R7
       58 CALL                             R8 3 1
       59 MOVE                             R4 R8
       60 GETUPVAL                         R5 4
       61 GETTABLEKS                       R5 R5 K16 ["set"]
       63 MOVE                             R6 R4
       64 CALL                             R5 1 0
       65 JUMPIF                           R3 ; [+2]
       66 LOADNIL                          R5
       67 RETURN                           R5 1
       68 GETIMPORT                        R5 K10 [require]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K11 ["AssetInsertTool"]
       73 GETTABLEKS                       R6 R6 K14 ["AssetInsertGuest"]
       75 CALL                             R5 1 1
       76 GETTABLEKS                       R6 R5 K17 ["setupGuest"]
       78 MOVE                             R7 R0
       79 MOVE                             R8 R4
       80 CALL                             R6 2 -1
       81 RETURN                           R6 -1

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
       36 GETTABLEKS                       R6 R2 K9 ["AssetInsertTool"]
       38 GETTABLEKS                       R6 R6 K12 ["AssetInsertBridgeTypes"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Flags"]
       45 GETTABLEKS                       R7 R7 K14 ["FFlagAssistantAssetSearchInsertTool"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K13 ["Flags"]
       52 GETTABLEKS                       R8 R8 K15 ["FFlagAssistantAssetSearchInsertToolABTest"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K16 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R3
       58 DUPCLOSURE                       R9 K17 [PROTO_1]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 RETURN                           R9 1
