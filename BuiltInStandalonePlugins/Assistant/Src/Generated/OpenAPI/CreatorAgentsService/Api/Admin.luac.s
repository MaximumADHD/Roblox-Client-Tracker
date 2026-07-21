PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/internal/admin/clear-loop-ids"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["dryRun"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addQueryParameter"]
       19 CALL                             R2 3 1
       20 LOADK                            R4 K8 ["Roblox-Api-Key"]
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K9 ["addHeaderParameter"]
       24 CALL                             R2 3 1
       25 NAMECALL                         R2 R2 K10 ["sendAsync"]
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorAgentsService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R0 K9 ["PathMetadata"]
       22 CALL                             R4 1 1
       23 NEWTABLE                         R5 1 0
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R6 R5 K11 ["postClearLoopIdsAsync"]
       30 GETIMPORT                        R6 K14 [table.freeze]
       32 MOVE                             R7 R5
       33 CALL                             R6 1 -1
       34 RETURN                           R6 -1
