PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/texture-previews"]
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
       51 LOADK                            R3 K19 ["Glb"]
       52 GETTABLEKS                       R4 R0 K20 ["glb"]
       54 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       56 CALL                             R1 3 1
       57 LOADK                            R3 K22 ["AssetId"]
       58 GETTABLEKS                       R4 R0 K23 ["assetId"]
       60 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       62 CALL                             R1 3 1
       63 LOADK                            R3 K24 ["Image"]
       64 GETTABLEKS                       R4 R0 K25 ["image"]
       66 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       68 CALL                             R1 3 1
       69 LOADK                            R3 K26 ["TextPrompt"]
       70 GETTABLEKS                       R4 R0 K27 ["textPrompt"]
       72 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       74 CALL                             R1 3 1
       75 LOADK                            R3 K28 ["Model"]
       76 GETTABLEKS                       R4 R0 K29 ["model"]
       78 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       80 CALL                             R1 3 1
       81 LOADK                            R3 K30 ["N"]
       82 GETTABLEKS                       R4 R0 K31 ["n"]
       84 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       86 CALL                             R1 3 1
       87 LOADK                            R3 K32 ["Seed"]
       88 GETTABLEKS                       R4 R0 K33 ["seed"]
       90 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       92 CALL                             R1 3 1
       93 LOADK                            R3 K34 ["Temperature"]
       94 GETTABLEKS                       R4 R0 K35 ["temperature"]
       96 NAMECALL                         R1 R1 K21 ["addFormParameter"]
       98 CALL                             R1 3 1
       99 LOADK                            R3 K36 ["ControlStrength"]
      100 GETTABLEKS                       R4 R0 K37 ["controlStrength"]
      102 NAMECALL                         R1 R1 K21 ["addFormParameter"]
      104 CALL                             R1 3 1
      105 LOADK                            R3 K38 ["Resolution"]
      106 GETTABLEKS                       R4 R0 K39 ["resolution"]
      108 NAMECALL                         R1 R1 K21 ["addFormParameter"]
      110 CALL                             R1 3 1
      111 LOADK                            R3 K40 ["CameraExtrinsic"]
      112 GETTABLEKS                       R4 R0 K41 ["cameraExtrinsic"]
      114 NAMECALL                         R1 R1 K21 ["addFormParameter"]
      116 CALL                             R1 3 1
      117 LOADK                            R3 K42 ["CameraIntrinsic"]
      118 GETTABLEKS                       R4 R0 K43 ["cameraIntrinsic"]
      120 NAMECALL                         R1 R1 K21 ["addFormParameter"]
      122 CALL                             R1 3 1
      123 LOADK                            R3 K44 ["PartialResults"]
      124 GETTABLEKS                       R4 R0 K45 ["partialResults"]
      126 NAMECALL                         R1 R1 K21 ["addFormParameter"]
      128 CALL                             R1 3 1
      129 LOADK                            R3 K46 ["PreviewResolution"]
      130 GETTABLEKS                       R4 R0 K47 ["previewResolution"]
      132 NAMECALL                         R1 R1 K21 ["addFormParameter"]
      134 CALL                             R1 3 1
      135 LOADK                            R3 K48 ["AdminOptions"]
      136 GETTABLEKS                       R4 R0 K49 ["adminOptions"]
      138 NAMECALL                         R1 R1 K21 ["addFormParameter"]
      140 CALL                             R1 3 1
      141 GETUPVAL                         R3 2
      142 NAMECALL                         R1 R1 K50 ["sendAsync"]
      144 CALL                             R1 2 -1
      145 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/api/v1/texture-previews/{texturePreviewId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{texturePreviewId}"]
       16 GETTABLEKS                       R4 R0 K7 ["texturePreviewId"]
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
       23 GETTABLEKS                       R5 R5 K10 ["GenerateTexturePreviewResponse"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GetTexturePreviewStatusResponse"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 2 0
       35 DUPCLOSURE                       R7 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R7 R6 K13 ["postGenerateTexturePreviewAsync"]
       41 DUPCLOSURE                       R7 K14 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R7 R6 K15 ["getTexturePreviewStatusAsync"]
       47 GETIMPORT                        R7 K18 [table.freeze]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 -1
       51 RETURN                           R7 -1
