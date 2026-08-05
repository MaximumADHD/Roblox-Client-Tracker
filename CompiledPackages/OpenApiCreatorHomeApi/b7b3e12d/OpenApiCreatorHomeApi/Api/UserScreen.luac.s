PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildRequest"]
        3 LOADK                            R1 K1 ["GET"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["host"]
        7 LOADK                            R3 K3 ["/v1/user-screen"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["pathPrefix"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["baseUrl"]
       14 CALL                             R0 5 1
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R0 R0 K6 ["sendAsync"]
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PathMetadata"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Models"]
       23 GETTABLEKS                       R5 R5 K10 ["ListUserScreenResponse"]
       25 CALL                             R4 1 1
       26 NEWTABLE                         R5 1 0
       28 DUPCLOSURE                       R6 K11 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R6 R5 K12 ["getListUserScreenAsync"]
       34 GETIMPORT                        R6 K15 [table.freeze]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
