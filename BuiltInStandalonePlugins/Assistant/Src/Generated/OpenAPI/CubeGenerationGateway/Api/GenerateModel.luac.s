PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["buildRequest"]
        3 LOADK                            R7 K1 ["POST"]
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R8 R8 K2 ["host"]
        7 LOADK                            R9 K3 ["/api/v1/model-generations"]
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R10 R10 K4 ["pathPrefix"]
       11 GETUPVAL                         R11 1
       12 GETTABLEKS                       R11 R11 K5 ["baseUrl"]
       14 CALL                             R6 5 1
       15 LOADK                            R8 K6 ["robloxctx-rcc"]
       16 MOVE                             R9 R0
       17 NAMECALL                         R6 R6 K7 ["addHeaderParameter"]
       19 CALL                             R6 3 1
       20 LOADK                            R8 K8 ["roblox-universe-id"]
       21 MOVE                             R9 R1
       22 NAMECALL                         R6 R6 K7 ["addHeaderParameter"]
       24 CALL                             R6 3 1
       25 LOADK                            R8 K9 ["robloxctx-authenticated-userid"]
       26 MOVE                             R9 R2
       27 NAMECALL                         R6 R6 K7 ["addHeaderParameter"]
       29 CALL                             R6 3 1
       30 LOADK                            R8 K10 ["roblox-place-id"]
       31 MOVE                             R9 R3
       32 NAMECALL                         R6 R6 K7 ["addHeaderParameter"]
       34 CALL                             R6 3 1
       35 LOADK                            R8 K11 ["roblox-game-id"]
       36 MOVE                             R9 R4
       37 NAMECALL                         R6 R6 K7 ["addHeaderParameter"]
       39 CALL                             R6 3 1
       40 GETUPVAL                         R8 2
       41 MOVE                             R9 R5
       42 NAMECALL                         R6 R6 K12 ["setBody"]
       44 CALL                             R6 3 1
       45 GETUPVAL                         R8 3
       46 NAMECALL                         R6 R6 K13 ["sendAsync"]
       48 CALL                             R6 2 -1
       49 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["buildRequest"]
        3 LOADK                            R7 K1 ["GET"]
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R8 R8 K2 ["host"]
        7 LOADK                            R9 K3 ["/api/v1/model-generations/{modelGenerationId}"]
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R10 R10 K4 ["pathPrefix"]
       11 GETUPVAL                         R11 1
       12 GETTABLEKS                       R11 R11 K5 ["baseUrl"]
       14 CALL                             R6 5 1
       15 LOADK                            R8 K6 ["{modelGenerationId}"]
       16 MOVE                             R9 R5
       17 NAMECALL                         R6 R6 K7 ["addPathParameter"]
       19 CALL                             R6 3 1
       20 LOADK                            R8 K8 ["robloxctx-rcc"]
       21 MOVE                             R9 R0
       22 NAMECALL                         R6 R6 K9 ["addHeaderParameter"]
       24 CALL                             R6 3 1
       25 LOADK                            R8 K10 ["roblox-universe-id"]
       26 MOVE                             R9 R1
       27 NAMECALL                         R6 R6 K9 ["addHeaderParameter"]
       29 CALL                             R6 3 1
       30 LOADK                            R8 K11 ["robloxctx-authenticated-userid"]
       31 MOVE                             R9 R2
       32 NAMECALL                         R6 R6 K9 ["addHeaderParameter"]
       34 CALL                             R6 3 1
       35 LOADK                            R8 K12 ["roblox-place-id"]
       36 MOVE                             R9 R3
       37 NAMECALL                         R6 R6 K9 ["addHeaderParameter"]
       39 CALL                             R6 3 1
       40 LOADK                            R8 K13 ["roblox-game-id"]
       41 MOVE                             R9 R4
       42 NAMECALL                         R6 R6 K9 ["addHeaderParameter"]
       44 CALL                             R6 3 1
       45 GETUPVAL                         R8 2
       46 NAMECALL                         R6 R6 K14 ["sendAsync"]
       48 CALL                             R6 2 -1
       49 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CubeGenerationGateway"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R0 K9 ["PathMetadata"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K7 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R6 K11 ["GenerateModelRequest"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R7 K12 ["GenerateModelResponse"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Models"]
       41 GETTABLEKS                       R8 R8 K13 ["GetModelGenerationStatusResponse"]
       43 CALL                             R7 1 1
       44 NEWTABLE                         R8 2 0
       46 DUPCLOSURE                       R9 K14 [PROTO_0]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R9 R8 K15 ["postGenerateModelAsync"]
       53 DUPCLOSURE                       R9 K16 [PROTO_1]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R9 R8 K17 ["getModelGenerationStatusAsync"]
       59 GETIMPORT                        R9 K20 [table.freeze]
       61 MOVE                             R10 R8
       62 CALL                             R9 1 -1
       63 RETURN                           R9 -1
