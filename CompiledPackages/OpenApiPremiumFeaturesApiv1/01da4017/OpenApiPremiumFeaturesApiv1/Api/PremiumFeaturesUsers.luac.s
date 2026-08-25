PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/premium-upsell-precheck"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["universeId"]
       22 GETTABLEKS                       R4 R0 K9 ["universeId"]
       24 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["placeId"]
       28 GETTABLEKS                       R4 R0 K11 ["placeId"]
       30 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 NAMECALL                         R1 R1 K12 ["sendAsync"]
       35 CALL                             R1 1 -1
       36 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/subscriptions"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R1 R1 K9 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/subscriptions/details"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K9 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/subscriptions/metadata"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R1 R1 K9 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/validate-membership"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K9 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/validate-membership-rcc"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K9 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/subscriptions/cancel"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K9 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

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
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Models"]
       23 GETTABLEKS                       R5 R5 K10 ["SubscriptionProductResponse"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["SubscriptionsMetadataDisplayResponse"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 8 0
       35 DUPCLOSURE                       R7 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R7 R6 K13 ["getV1UsersUserIdPremiumUpsellPrecheckAsync"]
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R7 R6 K15 ["getV1UsersUserIdSubscriptionsAsync"]
       46 DUPCLOSURE                       R7 K16 [PROTO_2]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R7 R6 K17 ["getV1UsersUserIdSubscriptionsDetailsAsync"]
       51 DUPCLOSURE                       R7 K18 [PROTO_3]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R7 R6 K19 ["getV1UsersUserIdSubscriptionsMetadataAsync"]
       57 DUPCLOSURE                       R7 K20 [PROTO_4]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R7 R6 K21 ["getV1UsersUserIdValidateMembershipAsync"]
       62 DUPCLOSURE                       R7 K22 [PROTO_5]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R7 R6 K23 ["getV1UsersUserIdValidateMembershipRccAsync"]
       67 DUPCLOSURE                       R7 K24 [PROTO_6]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R7 R6 K25 ["postV1UsersUserIdSubscriptionsCancelAsync"]
       72 GETIMPORT                        R7 K28 [table.freeze]
       74 MOVE                             R8 R6
       75 CALL                             R7 1 -1
       76 RETURN                           R7 -1
