PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Asset search tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K3 ["networking"]
       13 NAMECALL                         R2 R1 K4 ["IsGuest"]
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+2]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 GETIMPORT                        R3 K6 [require]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["AssetSearchTool"]
       24 GETTABLEKS                       R4 R4 K8 ["AssetSearchGuest"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K9 ["setupGuest"]
       29 MOVE                             R5 R0
       30 CALL                             R4 1 -1
       31 RETURN                           R4 -1

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
       22 GETTABLEKS                       R4 R0 K9 ["Flags"]
       24 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantAssetSearchInsertTool"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K9 ["Flags"]
       31 GETTABLEKS                       R5 R5 K11 ["FFlagAssistantAssetSearchInsertToolABTest"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 RETURN                           R5 1
