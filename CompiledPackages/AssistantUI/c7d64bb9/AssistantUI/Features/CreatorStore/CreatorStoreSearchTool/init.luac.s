PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantUseNewCreatorStoreTools is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["networking"]
       10 NAMECALL                         R2 R1 K4 ["IsGuest"]
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K7 ["CreatorStoreSearchTool"]
       21 GETTABLEKS                       R4 R4 K8 ["CreatorStoreSearchGuest"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K9 ["setupGuest"]
       26 MOVE                             R5 R0
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

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
       16 LOADK                            R4 K8 ["CreatorStore"]
       17 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Flags"]
       24 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantUseNewCreatorStoreTools"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
