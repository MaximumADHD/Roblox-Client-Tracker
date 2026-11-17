PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/model-generations/{generationId}/upload-asset"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{generationId}"]
       16 GETTABLEKS                       R4 R0 K7 ["generationId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["robloxctx-rcc"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxctxRcc"]
       24 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K12 ["robloxctx-authenticated-userid"]
       28 GETTABLEKS                       R4 R0 K13 ["robloxctxAuthenticatedUserid"]
       30 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K14 ["Roblox-Api-Key"]
       34 GETTABLEKS                       R4 R0 K15 ["robloxApiKey"]
       36 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R4 R0 K16 ["body"]
       42 NAMECALL                         R1 R1 K17 ["setBody"]
       44 CALL                             R1 3 1
       45 GETUPVAL                         R3 3
       46 NAMECALL                         R1 R1 K18 ["sendAsync"]
       48 CALL                             R1 2 -1
       49 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/image-generations/{imageGenerationId}/upload-asset"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{imageGenerationId}"]
       16 GETTABLEKS                       R4 R0 K7 ["imageGenerationId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["robloxctx-rcc"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxctxRcc"]
       24 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K12 ["roblox-universe-id"]
       28 GETTABLEKS                       R4 R0 K13 ["robloxUniverseId"]
       30 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K14 ["robloxctx-authenticated-userid"]
       34 GETTABLEKS                       R4 R0 K15 ["robloxctxAuthenticatedUserid"]
       36 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       38 CALL                             R1 3 1
       39 LOADK                            R3 K16 ["roblox-place-id"]
       40 GETTABLEKS                       R4 R0 K17 ["robloxPlaceId"]
       42 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       44 CALL                             R1 3 1
       45 LOADK                            R3 K18 ["roblox-game-id"]
       46 GETTABLEKS                       R4 R0 K19 ["robloxGameId"]
       48 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       50 CALL                             R1 3 1
       51 LOADK                            R3 K20 ["Roblox-Api-Key"]
       52 GETTABLEKS                       R4 R0 K21 ["robloxApiKey"]
       54 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       56 CALL                             R1 3 1
       57 GETUPVAL                         R3 2
       58 GETTABLEKS                       R4 R0 K22 ["body"]
       60 NAMECALL                         R1 R1 K23 ["setBody"]
       62 CALL                             R1 3 1
       63 GETUPVAL                         R3 3
       64 NAMECALL                         R1 R1 K24 ["sendAsync"]
       66 CALL                             R1 2 -1
       67 RETURN                           R1 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["UploadAssetRequest"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["UploadAssetResponse"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["UploadImageGenerationAssetRequest"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["UploadImageGenerationAssetResponse"]
       46 CALL                             R7 1 1
       47 NEWTABLE                         R8 2 0
       49 DUPCLOSURE                       R9 K14 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 SETTABLEKS                       R9 R8 K15 ["postUploadAssetAsync"]
       56 DUPCLOSURE                       R9 K16 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R9 R8 K17 ["postImageGenerationUploadImageGenerationAssetAsync"]
       63 GETIMPORT                        R9 K20 [table.freeze]
       65 MOVE                             R10 R8
       66 CALL                             R9 1 -1
       67 RETURN                           R9 -1
