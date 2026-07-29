PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/homepage/content"]
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/homepage/banner/experience-unrated"]
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
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/homepage/banner/experience-unrated"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R1 R1 K9 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/homepage/experience-unrated"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K6 ["create"]
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R4 R0 K7 ["body"]
       21 NAMECALL                         R1 R1 K8 ["setBody"]
       23 CALL                             R1 3 1
       24 GETUPVAL                         R3 3
       25 NAMECALL                         R1 R1 K9 ["sendAsync"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/homepage/content"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R1 R1 K9 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/homepage/banner/disable"]
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
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 NAMECALL                         R1 R1 K11 ["sendAsync"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/homepage/banner/disable"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 NAMECALL                         R1 R1 K11 ["sendAsync"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/internal/homepage/cache/clear"]
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
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["IdentityModel"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["PathMetadata"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GetCreatorHubContentResponse"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K8 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["DisableCreatorHubBannerRequest"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K8 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["RefreshCacheRequest"]
       46 CALL                             R7 1 1
       47 NEWTABLE                         R8 8 0
       49 DUPCLOSURE                       R9 K14 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R9 R8 K15 ["getCreatorHubFeaturesByUserAsync"]
       55 DUPCLOSURE                       R9 K16 [PROTO_1]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R8 K17 ["getUnratedExperiencesByUserAsync"]
       61 DUPCLOSURE                       R9 K18 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R9 R8 K19 ["getUnratedExperiencesByGroupAsync"]
       67 DUPCLOSURE                       R9 K20 [PROTO_3]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R9 R8 K21 ["postCheckUnratedExperiencesAsync"]
       74 DUPCLOSURE                       R9 K22 [PROTO_4]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R9 R8 K23 ["getCreatorHubFeaturesByGroupAsync"]
       80 DUPCLOSURE                       R9 K24 [PROTO_5]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R9 R8 K25 ["postDisableCreatorHubBannerByUserAsync"]
       86 DUPCLOSURE                       R9 K26 [PROTO_6]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R9 R8 K27 ["postDisableCreatorHubBannerByGroupAsync"]
       92 DUPCLOSURE                       R9 K28 [PROTO_7]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R9 R8 K29 ["postRefreshHomepageInternalAsync"]
       98 GETIMPORT                        R9 K32 [table.freeze]
      100 MOVE                             R10 R8
      101 CALL                             R9 1 -1
      102 RETURN                           R9 -1
