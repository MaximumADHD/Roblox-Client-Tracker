PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/products"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["typeName"]
       16 GETTABLEKS                       R4 R0 K6 ["typeName"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K8 ["flowTypeName"]
       22 GETTABLEKS                       R4 R0 K8 ["flowTypeName"]
       24 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K9 ["skipPremiumUserCheck"]
       28 GETTABLEKS                       R4 R0 K9 ["skipPremiumUserCheck"]
       30 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 NAMECALL                         R1 R1 K10 ["sendAsync"]
       35 CALL                             R1 1 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiPremiumFeaturesApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PathMetadata"]
       18 CALL                             R3 1 1
       19 NEWTABLE                         R4 1 0
       21 DUPCLOSURE                       R5 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R5 R4 K10 ["getV1ProductsAsync"]
       26 GETIMPORT                        R5 K13 [table.freeze]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 -1
       30 RETURN                           R5 -1
