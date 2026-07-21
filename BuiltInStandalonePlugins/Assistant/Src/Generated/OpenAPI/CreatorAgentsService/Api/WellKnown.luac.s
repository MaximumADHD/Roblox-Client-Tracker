PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/.well-known/certs"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["Roblox-Api-Key"]
       16 MOVE                             R4 R0
       17 NAMECALL                         R1 R1 K7 ["addHeaderParameter"]
       19 CALL                             R1 3 1
       20 NAMECALL                         R1 R1 K8 ["sendAsync"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

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
       28 SETTABLEKS                       R6 R5 K11 ["getCertsAsync"]
       30 GETIMPORT                        R6 K14 [table.freeze]
       32 MOVE                             R7 R5
       33 CALL                             R6 1 -1
       34 RETURN                           R6 -1
