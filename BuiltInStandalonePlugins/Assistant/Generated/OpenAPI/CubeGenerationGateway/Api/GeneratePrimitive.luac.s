PROTO_0:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["buildRequest"]
        3 LOADK                            R10 K1 ["POST"]
        4 GETUPVAL                         R11 1
        5 GETTABLEKS                       R11 R11 K2 ["host"]
        7 LOADK                            R12 K3 ["/api/v1/primitive-generations"]
        8 GETUPVAL                         R13 1
        9 GETTABLEKS                       R13 R13 K4 ["pathPrefix"]
       11 GETUPVAL                         R14 1
       12 GETTABLEKS                       R14 R14 K5 ["baseUrl"]
       14 CALL                             R9 5 1
       15 LOADK                            R11 K6 ["robloxctx-rcc"]
       16 MOVE                             R12 R0
       17 NAMECALL                         R9 R9 K7 ["addHeaderParameter"]
       19 CALL                             R9 3 1
       20 LOADK                            R11 K8 ["roblox-universe-id"]
       21 MOVE                             R12 R1
       22 NAMECALL                         R9 R9 K7 ["addHeaderParameter"]
       24 CALL                             R9 3 1
       25 LOADK                            R11 K9 ["robloxctx-authenticated-userid"]
       26 MOVE                             R12 R2
       27 NAMECALL                         R9 R9 K7 ["addHeaderParameter"]
       29 CALL                             R9 3 1
       30 LOADK                            R11 K10 ["roblox-place-id"]
       31 MOVE                             R12 R3
       32 NAMECALL                         R9 R9 K7 ["addHeaderParameter"]
       34 CALL                             R9 3 1
       35 LOADK                            R11 K11 ["roblox-game-id"]
       36 MOVE                             R12 R4
       37 NAMECALL                         R9 R9 K7 ["addHeaderParameter"]
       39 CALL                             R9 3 1
       40 LOADK                            R11 K12 ["TextPrompt"]
       41 MOVE                             R12 R5
       42 NAMECALL                         R9 R9 K13 ["addFormParameter"]
       44 CALL                             R9 3 1
       45 LOADK                            R11 K14 ["Image"]
       46 MOVE                             R12 R6
       47 NAMECALL                         R9 R9 K13 ["addFormParameter"]
       49 CALL                             R9 3 1
       50 LOADK                            R11 K15 ["AdminOptions"]
       51 MOVE                             R12 R7
       52 NAMECALL                         R9 R9 K13 ["addFormParameter"]
       54 CALL                             R9 3 1
       55 LOADK                            R11 K16 ["PreviousJobId"]
       56 MOVE                             R12 R8
       57 NAMECALL                         R9 R9 K13 ["addFormParameter"]
       59 CALL                             R9 3 1
       60 GETUPVAL                         R11 2
       61 NAMECALL                         R9 R9 K17 ["sendAsync"]
       63 CALL                             R9 2 -1
       64 RETURN                           R9 -1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["buildRequest"]
        3 LOADK                            R7 K1 ["GET"]
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R8 R8 K2 ["host"]
        7 LOADK                            R9 K3 ["/api/v1/primitive-generations/{primitiveGenerationId}"]
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R10 R10 K4 ["pathPrefix"]
       11 GETUPVAL                         R11 1
       12 GETTABLEKS                       R11 R11 K5 ["baseUrl"]
       14 CALL                             R6 5 1
       15 LOADK                            R8 K6 ["{primitiveGenerationId}"]
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
       27 GETTABLEKS                       R6 R6 K11 ["GeneratePrimitiveResponse"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R7 K12 ["GetPrimitiveGenerationStatusResponse"]
       36 CALL                             R6 1 1
       37 NEWTABLE                         R7 2 0
       39 DUPCLOSURE                       R8 K13 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R8 R7 K14 ["postGeneratePrimitiveAsync"]
       45 DUPCLOSURE                       R8 K15 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R8 R7 K16 ["getPrimitiveGenerationStatusAsync"]
       51 GETIMPORT                        R8 K19 [table.freeze]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 -1
       55 RETURN                           R8 -1
