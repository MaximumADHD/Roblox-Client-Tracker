PROTO_0:
        0 GETUPVAL                         R10 0
        1 GETTABLEKS                       R9 R10 K0 ["buildRequest"]
        3 LOADK                            R10 K1 ["POST"]
        4 GETUPVAL                         R12 1
        5 GETTABLEKS                       R11 R12 K2 ["host"]
        7 LOADK                            R12 K3 ["/api/v1/primitive-generations"]
        8 GETUPVAL                         R14 1
        9 GETTABLEKS                       R13 R14 K4 ["pathPrefix"]
       11 CALL                             R9 4 1
       12 LOADK                            R11 K5 ["robloxctx-rcc"]
       13 MOVE                             R12 R0
       14 NAMECALL                         R9 R9 K6 ["addHeaderParameter"]
       16 CALL                             R9 3 1
       17 LOADK                            R11 K7 ["roblox-universe-id"]
       18 MOVE                             R12 R1
       19 NAMECALL                         R9 R9 K6 ["addHeaderParameter"]
       21 CALL                             R9 3 1
       22 LOADK                            R11 K8 ["robloxctx-authenticated-userid"]
       23 MOVE                             R12 R2
       24 NAMECALL                         R9 R9 K6 ["addHeaderParameter"]
       26 CALL                             R9 3 1
       27 LOADK                            R11 K9 ["roblox-place-id"]
       28 MOVE                             R12 R3
       29 NAMECALL                         R9 R9 K6 ["addHeaderParameter"]
       31 CALL                             R9 3 1
       32 LOADK                            R11 K10 ["roblox-game-id"]
       33 MOVE                             R12 R4
       34 NAMECALL                         R9 R9 K6 ["addHeaderParameter"]
       36 CALL                             R9 3 1
       37 LOADK                            R11 K11 ["TextPrompt"]
       38 MOVE                             R12 R5
       39 NAMECALL                         R9 R9 K12 ["addFormParameter"]
       41 CALL                             R9 3 1
       42 LOADK                            R11 K13 ["Image"]
       43 MOVE                             R12 R6
       44 NAMECALL                         R9 R9 K12 ["addFormParameter"]
       46 CALL                             R9 3 1
       47 LOADK                            R11 K14 ["AdminOptions"]
       48 MOVE                             R12 R7
       49 NAMECALL                         R9 R9 K12 ["addFormParameter"]
       51 CALL                             R9 3 1
       52 LOADK                            R11 K15 ["PreviousJobId"]
       53 MOVE                             R12 R8
       54 NAMECALL                         R9 R9 K12 ["addFormParameter"]
       56 CALL                             R9 3 1
       57 GETUPVAL                         R11 2
       58 NAMECALL                         R9 R9 K16 ["sendAsync"]
       60 CALL                             R9 2 -1
       61 RETURN                           R9 -1

PROTO_1:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["buildRequest"]
        3 LOADK                            R7 K1 ["GET"]
        4 GETUPVAL                         R9 1
        5 GETTABLEKS                       R8 R9 K2 ["host"]
        7 LOADK                            R9 K3 ["/api/v1/primitive-generations/{primitiveGenerationId}"]
        8 GETUPVAL                         R11 1
        9 GETTABLEKS                       R10 R11 K4 ["pathPrefix"]
       11 CALL                             R6 4 1
       12 LOADK                            R8 K5 ["{primitiveGenerationId}"]
       13 MOVE                             R9 R5
       14 NAMECALL                         R6 R6 K6 ["addPathParameter"]
       16 CALL                             R6 3 1
       17 LOADK                            R8 K7 ["robloxctx-rcc"]
       18 MOVE                             R9 R0
       19 NAMECALL                         R6 R6 K8 ["addHeaderParameter"]
       21 CALL                             R6 3 1
       22 LOADK                            R8 K9 ["roblox-universe-id"]
       23 MOVE                             R9 R1
       24 NAMECALL                         R6 R6 K8 ["addHeaderParameter"]
       26 CALL                             R6 3 1
       27 LOADK                            R8 K10 ["robloxctx-authenticated-userid"]
       28 MOVE                             R9 R2
       29 NAMECALL                         R6 R6 K8 ["addHeaderParameter"]
       31 CALL                             R6 3 1
       32 LOADK                            R8 K11 ["roblox-place-id"]
       33 MOVE                             R9 R3
       34 NAMECALL                         R6 R6 K8 ["addHeaderParameter"]
       36 CALL                             R6 3 1
       37 LOADK                            R8 K12 ["roblox-game-id"]
       38 MOVE                             R9 R4
       39 NAMECALL                         R6 R6 K8 ["addHeaderParameter"]
       41 CALL                             R6 3 1
       42 GETUPVAL                         R8 2
       43 NAMECALL                         R6 R6 K13 ["sendAsync"]
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1

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
       25 GETTABLEKS                       R7 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R7 K11 ["GeneratePrimitiveResponse"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R8 K12 ["GetPrimitiveGenerationStatusResponse"]
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
