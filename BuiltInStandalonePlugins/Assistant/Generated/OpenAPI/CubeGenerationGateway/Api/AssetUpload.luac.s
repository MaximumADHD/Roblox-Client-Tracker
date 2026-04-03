PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["POST"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K2 ["host"]
        7 LOADK                            R6 K3 ["/api/v1/model-generations/{generationId}/upload-asset"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K4 ["pathPrefix"]
       11 CALL                             R3 4 1
       12 LOADK                            R5 K5 ["{generationId}"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R3 K6 ["addPathParameter"]
       16 CALL                             R3 3 1
       17 LOADK                            R5 K7 ["robloxctx-authenticated-userid"]
       18 MOVE                             R6 R0
       19 NAMECALL                         R3 R3 K8 ["addHeaderParameter"]
       21 CALL                             R3 3 1
       22 GETUPVAL                         R5 2
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R3 K9 ["setBody"]
       26 CALL                             R3 3 1
       27 GETUPVAL                         R5 3
       28 NAMECALL                         R3 R3 K10 ["sendAsync"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

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
       27 GETTABLEKS                       R6 R7 K11 ["UploadAssetRequest"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R8 K12 ["UploadAssetResponse"]
       36 CALL                             R6 1 1
       37 NEWTABLE                         R7 1 0
       39 DUPCLOSURE                       R8 K13 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R8 R7 K14 ["postUploadAssetAsync"]
       46 GETIMPORT                        R8 K17 [table.freeze]
       48 MOVE                             R9 R7
       49 CALL                             R8 1 -1
       50 RETURN                           R8 -1
