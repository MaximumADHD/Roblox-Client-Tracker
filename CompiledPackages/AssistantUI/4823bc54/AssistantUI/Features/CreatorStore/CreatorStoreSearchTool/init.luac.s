PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 NAMECALL                         R2 R1 K1 ["IsGuest"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETIMPORT                        R3 K3 [require]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["CreatorStoreSearchTool"]
       13 GETTABLEKS                       R4 R4 K5 ["DEPRECATED_CreatorStoreSearchGuest"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R3 K6 ["setupGuest"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 -1
       20 RETURN                           R4 -1

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
       20 DUPCLOSURE                       R3 K9 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
