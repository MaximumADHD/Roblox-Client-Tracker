PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/quotaSummary"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["product"]
       16 GETTABLEKS                       R4 R0 K6 ["product"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["PUT"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/dailyLimit"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildRequest"]
        3 LOADK                            R1 K1 ["GET"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["host"]
        7 LOADK                            R3 K3 ["/v1/dailyLimit"]
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
        3 LOADK                            R2 K2 ["OpenApiCreditMeteringService"]
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
       23 GETTABLEKS                       R5 R5 K10 ["Product"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GetQuotaSummaryResponse"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["DailyLimitSettings"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["SetDailyLimitResponse"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Models"]
       51 GETTABLEKS                       R9 R9 K14 ["GetDailyLimitResponse"]
       53 CALL                             R8 1 1
       54 NEWTABLE                         R9 4 0
       56 DUPCLOSURE                       R10 K15 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R10 R9 K16 ["getV1QuotaSummaryAsync"]
       62 DUPCLOSURE                       R10 K17 [PROTO_1]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R10 R9 K18 ["putV1DailyLimitAsync"]
       69 DUPCLOSURE                       R10 K19 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R8
       73 SETTABLEKS                       R10 R9 K20 ["getV1DailyLimitAsync"]
       75 GETIMPORT                        R10 K23 [table.freeze]
       77 MOVE                             R11 R9
       78 CALL                             R10 1 -1
       79 RETURN                           R10 -1
