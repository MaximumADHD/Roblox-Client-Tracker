PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/asset-upload"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["robloxctx-authenticated-userid"]
       16 GETTABLEKS                       R4 R0 K7 ["robloxctxAuthenticatedUserid"]
       18 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["Roblox-Api-Key"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxApiKey"]
       24 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R4 R0 K11 ["body"]
       30 NAMECALL                         R1 R1 K12 ["setBody"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 3
       34 NAMECALL                         R1 R1 K13 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/asset-upload/{uploadId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{uploadId}"]
       16 GETTABLEKS                       R4 R0 K7 ["uploadId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["robloxctx-authenticated-userid"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxctxAuthenticatedUserid"]
       24 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K12 ["Roblox-Api-Key"]
       28 GETTABLEKS                       R4 R0 K13 ["robloxApiKey"]
       30 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K14 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCubeGenerationGateway"]
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
       23 GETTABLEKS                       R5 R5 K10 ["StartAssetUploadRequest"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["StartAssetUploadResponse"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["GetAssetUploadStatusResponse"]
       39 CALL                             R6 1 1
       40 NEWTABLE                         R7 2 0
       42 DUPCLOSURE                       R8 K13 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R8 R7 K14 ["postStartAssetUploadAsync"]
       49 DUPCLOSURE                       R8 K15 [PROTO_1]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R8 R7 K16 ["getAssetUploadStatusAsync"]
       55 GETIMPORT                        R8 K19 [table.freeze]
       57 MOVE                             R9 R7
       58 CALL                             R8 1 -1
       59 RETURN                           R8 -1
