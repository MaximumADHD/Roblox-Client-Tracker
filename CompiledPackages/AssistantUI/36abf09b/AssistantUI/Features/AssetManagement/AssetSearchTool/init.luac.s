PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAssetSearchInsertTool"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAssetSearchInsertToolABTest"]
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["Asset search tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K5 ["networking"]
       15 NAMECALL                         R2 R1 K6 ["IsGuest"]
       17 CALL                             R2 1 1
       18 JUMPIF                           R2 ; [+2]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETIMPORT                        R3 K8 [require]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K9 ["AssetSearchTool"]
       26 GETTABLEKS                       R4 R4 K10 ["AssetSearchGuest"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K11 ["setupGuest"]
       31 MOVE                             R5 R0
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

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
       19 GETIMPORT                        R3 K1 [script]
       21 LOADK                            R5 K9 ["AssetManagement"]
       22 NAMECALL                         R3 R3 K3 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
