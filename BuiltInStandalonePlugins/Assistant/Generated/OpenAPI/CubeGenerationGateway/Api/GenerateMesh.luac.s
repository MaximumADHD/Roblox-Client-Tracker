PROTO_0:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["buildRequest"]
        3 LOADK                            R8 K1 ["POST"]
        4 GETUPVAL                         R10 1
        5 GETTABLEKS                       R9 R10 K2 ["host"]
        7 LOADK                            R10 K3 ["/api/v1/mesh-generations"]
        8 GETUPVAL                         R12 1
        9 GETTABLEKS                       R11 R12 K4 ["pathPrefix"]
       11 CALL                             R7 4 1
       12 LOADK                            R9 K5 ["robloxctx-rcc"]
       13 MOVE                             R10 R0
       14 NAMECALL                         R7 R7 K6 ["addHeaderParameter"]
       16 CALL                             R7 3 1
       17 LOADK                            R9 K7 ["roblox-universe-id"]
       18 MOVE                             R10 R1
       19 NAMECALL                         R7 R7 K6 ["addHeaderParameter"]
       21 CALL                             R7 3 1
       22 LOADK                            R9 K8 ["robloxctx-authenticated-userid"]
       23 MOVE                             R10 R2
       24 NAMECALL                         R7 R7 K6 ["addHeaderParameter"]
       26 CALL                             R7 3 1
       27 LOADK                            R9 K9 ["roblox-place-id"]
       28 MOVE                             R10 R3
       29 NAMECALL                         R7 R7 K6 ["addHeaderParameter"]
       31 CALL                             R7 3 1
       32 LOADK                            R9 K10 ["roblox-game-id"]
       33 MOVE                             R10 R4
       34 NAMECALL                         R7 R7 K6 ["addHeaderParameter"]
       36 CALL                             R7 3 1
       37 LOADK                            R9 K11 ["generation-service-user-id"]
       38 MOVE                             R10 R5
       39 NAMECALL                         R7 R7 K6 ["addHeaderParameter"]
       41 CALL                             R7 3 1
       42 GETUPVAL                         R9 2
       43 MOVE                             R10 R6
       44 NAMECALL                         R7 R7 K12 ["setBody"]
       46 CALL                             R7 3 1
       47 GETUPVAL                         R9 3
       48 NAMECALL                         R7 R7 K13 ["sendAsync"]
       50 CALL                             R7 2 -1
       51 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["buildRequest"]
        3 LOADK                            R7 K1 ["GET"]
        4 GETUPVAL                         R9 1
        5 GETTABLEKS                       R8 R9 K2 ["host"]
        7 LOADK                            R9 K3 ["/api/v1/mesh-generations/{meshGenerationId}"]
        8 GETUPVAL                         R11 1
        9 GETTABLEKS                       R10 R11 K4 ["pathPrefix"]
       11 CALL                             R6 4 1
       12 LOADK                            R8 K5 ["{meshGenerationId}"]
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
       27 GETTABLEKS                       R6 R7 K11 ["GenerateMeshRequest"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R8 K12 ["GenerateMeshResponse"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R9 R0 K10 ["Models"]
       41 GETTABLEKS                       R8 R9 K13 ["GetMeshGenerationStatusResponse"]
       43 CALL                             R7 1 1
       44 NEWTABLE                         R8 2 0
       46 DUPCLOSURE                       R9 K14 [PROTO_0]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R9 R8 K15 ["postGenerateMeshAsync"]
       53 DUPCLOSURE                       R9 K16 [PROTO_1]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R9 R8 K17 ["getMeshGenerationStatusAsync"]
       59 GETIMPORT                        R9 K20 [table.freeze]
       61 MOVE                             R10 R8
       62 CALL                             R9 1 -1
       63 RETURN                           R9 -1
