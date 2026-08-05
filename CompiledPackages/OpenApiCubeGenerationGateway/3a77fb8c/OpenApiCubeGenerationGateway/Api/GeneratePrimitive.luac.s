PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/primitive-generations"]
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
       45 LOADK                            R3 K17 ["Roblox-Api-Key"]
       46 GETTABLEKS                       R4 R0 K18 ["robloxApiKey"]
       48 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       50 CALL                             R1 3 1
       51 LOADK                            R3 K19 ["TextPrompt"]
       52 GETTABLEKS                       R4 R0 K20 ["textPrompt"]
       54 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       56 CALL                             R1 3 1
       57 LOADK                            R3 K22 ["Image"]
       58 GETTABLEKS                       R4 R0 K23 ["image"]
       60 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       62 CALL                             R1 3 1
       63 LOADK                            R3 K24 ["AdminOptions"]
       64 GETTABLEKS                       R4 R0 K25 ["adminOptions"]
       66 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       68 CALL                             R1 3 1
       69 LOADK                            R3 K26 ["PreviousJobId"]
       70 GETTABLEKS                       R4 R0 K27 ["previousJobId"]
       72 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       74 CALL                             R1 3 1
       75 LOADK                            R3 K28 ["SchemaDefinition"]
       76 GETTABLEKS                       R4 R0 K29 ["schemaDefinition"]
       78 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       80 CALL                             R1 3 1
       81 LOADK                            R3 K30 ["SuggestedSize"]
       82 GETTABLEKS                       R4 R0 K31 ["suggestedSize"]
       84 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       86 CALL                             R1 3 1
       87 LOADK                            R3 K32 ["MaxPartCount"]
       88 GETTABLEKS                       R4 R0 K33 ["maxPartCount"]
       90 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       92 CALL                             R1 3 1
       93 GETUPVAL                         R3 2
       94 NAMECALL                         R1 R1 K34 ["sendAsync"]
       96 CALL                             R1 2 -1
       97 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/primitive-generations/{primitiveGenerationId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{primitiveGenerationId}"]
       16 GETTABLEKS                       R4 R0 K7 ["primitiveGenerationId"]
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
       58 NAMECALL                         R1 R1 K22 ["sendAsync"]
       60 CALL                             R1 2 -1
       61 RETURN                           R1 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["GeneratePrimitiveResponse"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GetPrimitiveGenerationStatusResponse"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 2 0
       35 DUPCLOSURE                       R7 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R7 R6 K13 ["postGeneratePrimitiveAsync"]
       41 DUPCLOSURE                       R7 K14 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R7 R6 K15 ["getPrimitiveGenerationStatusAsync"]
       47 GETIMPORT                        R7 K18 [table.freeze]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 -1
       51 RETURN                           R7 -1
