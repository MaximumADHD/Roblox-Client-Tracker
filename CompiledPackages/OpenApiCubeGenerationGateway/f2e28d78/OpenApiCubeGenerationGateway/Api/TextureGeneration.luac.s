PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/texture-generations"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["robloxctx-rcc"]
       16 GETTABLEKS                       R4 R0 K7 ["robloxctxRcc"]
       18 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["roblox-universe-id"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxUniverseId"]
       24 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["robloxctx-authenticated-userid"]
       28 GETTABLEKS                       R4 R0 K12 ["robloxctxAuthenticatedUserid"]
       30 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K13 ["roblox-place-id"]
       34 GETTABLEKS                       R4 R0 K14 ["robloxPlaceId"]
       36 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       38 CALL                             R1 3 1
       39 LOADK                            R3 K15 ["roblox-game-id"]
       40 GETTABLEKS                       R4 R0 K16 ["robloxGameId"]
       42 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       44 CALL                             R1 3 1
       45 LOADK                            R3 K17 ["Glb"]
       46 GETTABLEKS                       R4 R0 K18 ["glb"]
       48 NAMECALL                         R1 R1 K19 ["addFormParameter"]
       50 CALL                             R1 3 1
       51 LOADK                            R3 K20 ["Image"]
       52 GETTABLEKS                       R4 R0 K21 ["image"]
       54 NAMECALL                         R1 R1 K19 ["addFormParameter"]
       56 CALL                             R1 3 1
       57 LOADK                            R3 K22 ["TextPrompt"]
       58 GETTABLEKS                       R4 R0 K23 ["textPrompt"]
       60 NAMECALL                         R1 R1 K19 ["addFormParameter"]
       62 CALL                             R1 3 1
       63 LOADK                            R3 K24 ["PartPrompts"]
       64 GETTABLEKS                       R4 R0 K25 ["partPrompts"]
       66 NAMECALL                         R1 R1 K19 ["addFormParameter"]
       68 CALL                             R1 3 1
       69 LOADK                            R3 K26 ["AdminOptions"]
       70 GETTABLEKS                       R4 R0 K27 ["adminOptions"]
       72 NAMECALL                         R1 R1 K19 ["addFormParameter"]
       74 CALL                             R1 3 1
       75 GETUPVAL                         R3 2
       76 NAMECALL                         R1 R1 K28 ["sendAsync"]
       78 CALL                             R1 2 -1
       79 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/texture-generations/{textureGenerationId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{textureGenerationId}"]
       16 GETTABLEKS                       R4 R0 K7 ["textureGenerationId"]
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
       51 GETUPVAL                         R3 2
       52 NAMECALL                         R1 R1 K20 ["sendAsync"]
       54 CALL                             R1 2 -1
       55 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/texture-generations/{textureGenerationId}/upload-asset"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{textureGenerationId}"]
       16 GETTABLEKS                       R4 R0 K7 ["textureGenerationId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["robloxctx-authenticated-userid"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxctxAuthenticatedUserid"]
       24 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R4 R0 K12 ["body"]
       30 NAMECALL                         R1 R1 K13 ["setBody"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 3
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
       23 GETTABLEKS                       R5 R5 K10 ["GenerateTextureResponse"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GetTextureGenerationStatusResponse"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["UploadAssetRequest"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["UploadAssetResponse"]
       46 CALL                             R7 1 1
       47 NEWTABLE                         R8 4 0
       49 DUPCLOSURE                       R9 K14 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R9 R8 K15 ["postGenerateTextureAsync"]
       55 DUPCLOSURE                       R9 K16 [PROTO_1]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R8 K17 ["getTextureGenerationStatusAsync"]
       61 DUPCLOSURE                       R9 K18 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R9 R8 K19 ["postUploadTextureAssetAsync"]
       68 GETIMPORT                        R9 K22 [table.freeze]
       70 MOVE                             R10 R8
       71 CALL                             R9 1 -1
       72 RETURN                           R9 -1
