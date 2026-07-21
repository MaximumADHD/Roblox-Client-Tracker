PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/internal/jwt/mint"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

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
       23 GETIMPORT                        R5 K7 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R6 K11 ["MintJwtRequest"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R7 K12 ["MintJwtResponse"]
       36 CALL                             R6 1 1
       37 NEWTABLE                         R7 1 0
       39 DUPCLOSURE                       R8 K13 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R8 R7 K14 ["postMintJwtAsync"]
       46 GETIMPORT                        R8 K17 [table.freeze]
       48 MOVE                             R9 R7
       49 CALL                             R8 1 -1
       50 RETURN                           R8 -1
