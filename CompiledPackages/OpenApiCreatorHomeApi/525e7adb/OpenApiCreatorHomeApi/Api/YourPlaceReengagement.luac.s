PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/your-place-reengagement"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K8 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildRequest"]
        3 LOADK                            R1 K1 ["GET"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["host"]
        7 LOADK                            R3 K3 ["/v1/your-place-reengagement"]
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
       23 GETTABLEKS                       R5 R5 K10 ["CreateYourPlaceReengagementEntryRequest"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GetYourPlaceReengagementEntryResponse"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 2 0
       35 DUPCLOSURE                       R7 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R7 R6 K13 ["postCreateYourPlaceReengagementEntryAsync"]
       41 DUPCLOSURE                       R7 K14 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R7 R6 K15 ["getYourPlaceReengagementEntryAsync"]
       47 GETIMPORT                        R7 K18 [table.freeze]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 -1
       51 RETURN                           R7 -1
