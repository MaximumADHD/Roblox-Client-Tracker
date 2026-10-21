PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFStringCubeGenerationGatewayApiKey"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K2 ["^%s*(.-)%s*$"]
        5 NAMECALL                         R1 R0 K3 ["match"]
        7 CALL                             R1 2 1
        8 ORK                              R0 R1 K1 [""]
        9 JUMPIFEQKS                       R0 K1 [""] ; [+3]
       11 MOVE                             R1 R0
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 2 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+21]
        9 GETTABLEKS                       R3 R0 K3 ["result"]
       11 FASTCALL1                        TYPEOF R3 ; [+2]
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+13]
       17 GETTABLEKS                       R2 R0 K3 ["result"]
       19 GETTABLEKS                       R2 R2 K4 ["modelGlbUrl"]
       21 SETTABLEKS                       R2 R1 K4 ["modelGlbUrl"]
       23 GETTABLEKS                       R2 R0 K3 ["result"]
       25 GETTABLEKS                       R2 R2 K5 ["modelRbxmUrl"]
       27 SETTABLEKS                       R2 R1 K5 ["modelRbxmUrl"]
       29 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [error]
        2 GETUPVAL                         R2 0
        3 GETIMPORT                        R3 K3 [select]
        5 LOADN                            R4 2
        6 GETIMPORT                        R5 K5 [pcall]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K6 ["throwError"]
       11 MOVE                             R7 R0
       12 CALL                             R5 2 -1
       13 CALL                             R3 -1 1
       14 LOADK                            R4 K7 ["Texture publish"]
       15 CALL                             R2 2 1
       16 LOADN                            R3 0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateTextureAsync"]
        3 DUPTABLE                         R1 K15 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["robloxApiKey"], ["glb"], ["assetId"], ["image"], ["textPrompt"], ["model"], ["cameraExtrinsic"], ["cameraIntrinsic"], ["texturePreviewId"], ["imageIndex"], ["keepExistingUv"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K16 ["getFStringCubeGenerationGatewayApiKey"]
       10 CALL                             R3 0 1
       11 LOADK                            R6 K18 ["^%s*(.-)%s*$"]
       12 NAMECALL                         R4 R3 K19 ["match"]
       14 CALL                             R4 2 1
       15 ORK                              R3 R4 K17 [""]
       16 JUMPIFEQKS                       R3 K17 [""] ; [+3]
       18 MOVE                             R2 R3
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K4 ["robloxApiKey"]
       23 GETUPVAL                         R2 3
       24 SETTABLEKS                       R2 R1 K5 ["glb"]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K6 ["assetId"]
       29 SETTABLEKS                       R2 R1 K6 ["assetId"]
       31 GETUPVAL                         R2 5
       32 SETTABLEKS                       R2 R1 K7 ["image"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K8 ["textPrompt"]
       37 SETTABLEKS                       R2 R1 K8 ["textPrompt"]
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K9 ["model"]
       42 SETTABLEKS                       R2 R1 K9 ["model"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K10 ["cameraExtrinsic"]
       47 SETTABLEKS                       R2 R1 K10 ["cameraExtrinsic"]
       49 GETUPVAL                         R2 4
       50 GETTABLEKS                       R2 R2 K11 ["cameraIntrinsic"]
       52 SETTABLEKS                       R2 R1 K11 ["cameraIntrinsic"]
       54 GETUPVAL                         R2 4
       55 GETTABLEKS                       R2 R2 K12 ["texturePreviewId"]
       57 SETTABLEKS                       R2 R1 K12 ["texturePreviewId"]
       59 GETUPVAL                         R2 4
       60 GETTABLEKS                       R2 R2 K13 ["imageIndex"]
       62 SETTABLEKS                       R2 R1 K13 ["imageIndex"]
       64 GETUPVAL                         R2 4
       65 GETTABLEKS                       R2 R2 K14 ["keepExistingUv"]
       67 SETTABLEKS                       R2 R1 K14 ["keepExistingUv"]
       69 CALL                             R0 1 -1
       70 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K3 ["image"]
       11 JUMPIFEQKNIL                     R3 ; [+12]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["formFile"]
       16 LOADK                            R4 K3 ["image"]
       17 GETTABLEKS                       R5 R0 K3 ["image"]
       19 GETTABLEKS                       R7 R0 K6 ["imageContentType"]
       21 ORK                              R6 R7 K5 ["image/png"]
       22 CALL                             R3 3 1
       23 MOVE                             R2 R3
       24 LOADNIL                          R3
       25 GETTABLEKS                       R4 R0 K7 ["glb"]
       27 JUMPIFEQKNIL                     R4 ; [+13]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K4 ["formFile"]
       32 LOADK                            R5 K8 ["mesh.glb"]
       33 GETIMPORT                        R6 K11 [buffer.fromstring]
       35 GETTABLEKS                       R7 R0 K7 ["glb"]
       37 CALL                             R6 1 1
       38 LOADK                            R7 K12 ["model/gltf-binary"]
       39 CALL                             R4 3 1
       40 MOVE                             R3 R4
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K13 ["callWithOptions"]
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          REF R3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          REF R2
       51 NEWTABLE                         R6 0 0
       53 CALL                             R4 2 1
       54 GETTABLEKS                       R5 R4 K14 ["success"]
       56 JUMPIF                           R5 ; [+30]
       57 GETTABLEKS                       R6 R4 K15 ["httpDetails"]
       59 JUMPIFNOT                        R6 ; [+5]
       60 GETTABLEKS                       R5 R4 K15 ["httpDetails"]
       62 GETTABLEKS                       R5 R5 K16 ["statusCode"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R5
       66 DUPTABLE                         R6 K20 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       67 SETTABLEKS                       R5 R6 K16 ["statusCode"]
       69 GETUPVAL                         R7 5
       70 GETIMPORT                        R8 K22 [select]
       72 LOADN                            R9 2
       73 GETIMPORT                        R10 K24 [pcall]
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R11 R11 K25 ["throwError"]
       78 MOVE                             R12 R4
       79 CALL                             R10 2 -1
       80 CALL                             R8 -1 1
       81 LOADK                            R9 K26 ["Texture generation"]
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K19 ["errorMessage"]
       85 CLOSEUPVALS                      R2
       86 RETURN                           R6 1
       87 DUPTABLE                         R5 K29 [{["ok"] = True, ["statusCode"], ["textureGenerationId"]}]
       88 GETTABLEKS                       R6 R4 K15 ["httpDetails"]
       90 GETTABLEKS                       R6 R6 K16 ["statusCode"]
       92 SETTABLEKS                       R6 R5 K16 ["statusCode"]
       94 GETTABLEKS                       R6 R4 K30 ["data"]
       96 GETTABLEKS                       R6 R6 K28 ["textureGenerationId"]
       98 SETTABLEKS                       R6 R5 K28 ["textureGenerationId"]
      100 CLOSEUPVALS                      R2
      101 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTextureGenerationStatusAsync"]
        3 DUPTABLE                         R1 K6 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["textureGenerationId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K4 ["textureGenerationId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K7 ["getFStringCubeGenerationGatewayApiKey"]
       13 CALL                             R3 0 1
       14 LOADK                            R6 K9 ["^%s*(.-)%s*$"]
       15 NAMECALL                         R4 R3 K10 ["match"]
       17 CALL                             R4 2 1
       18 ORK                              R3 R4 K8 [""]
       19 JUMPIFEQKS                       R3 K8 [""] ; [+3]
       21 MOVE                             R2 R3
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K5 ["robloxApiKey"]
       26 CALL                             R0 1 -1
       27 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K4 ["success"]
       21 JUMPIF                           R3 ; [+29]
       22 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       27 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 DUPTABLE                         R4 K10 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       32 SETTABLEKS                       R3 R4 K6 ["statusCode"]
       34 GETUPVAL                         R5 4
       35 GETIMPORT                        R6 K12 [select]
       37 LOADN                            R7 2
       38 GETIMPORT                        R8 K14 [pcall]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K15 ["throwError"]
       43 MOVE                             R10 R2
       44 CALL                             R8 2 -1
       45 CALL                             R6 -1 1
       46 LOADK                            R7 K16 ["Texture generation"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       50 RETURN                           R4 1
       51 GETTABLEKS                       R4 R2 K17 ["data"]
       53 NEWTABLE                         R5 2 0
       55 FASTCALL1                        TYPEOF R4 ; [+3]
       56 MOVE                             R7 R4
       57 GETIMPORT                        R6 K19 [typeof]
       59 CALL                             R6 1 1
       60 JUMPIFNOTEQKS                    R6 K20 ["table"] ; [+21]
       62 GETTABLEKS                       R7 R4 K21 ["result"]
       64 FASTCALL1                        TYPEOF R7 ; [+2]
       65 GETIMPORT                        R6 K19 [typeof]
       67 CALL                             R6 1 1
       68 JUMPIFNOTEQKS                    R6 K20 ["table"] ; [+13]
       70 GETTABLEKS                       R6 R4 K21 ["result"]
       72 GETTABLEKS                       R6 R6 K22 ["modelGlbUrl"]
       74 SETTABLEKS                       R6 R5 K22 ["modelGlbUrl"]
       76 GETTABLEKS                       R6 R4 K21 ["result"]
       78 GETTABLEKS                       R6 R6 K23 ["modelRbxmUrl"]
       80 SETTABLEKS                       R6 R5 K23 ["modelRbxmUrl"]
       82 MOVE                             R3 R5
       83 DUPTABLE                         R4 K26 [{["ok"] = True, ["statusCode"], ["status"], ["modelGlbUrl"], ["modelRbxmUrl"]}]
       84 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       86 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       88 SETTABLEKS                       R5 R4 K6 ["statusCode"]
       90 GETTABLEKS                       R5 R2 K17 ["data"]
       92 GETTABLEKS                       R5 R5 K25 ["status"]
       94 SETTABLEKS                       R5 R4 K25 ["status"]
       96 GETTABLEKS                       R5 R3 K22 ["modelGlbUrl"]
       98 SETTABLEKS                       R5 R4 K22 ["modelGlbUrl"]
      100 GETTABLEKS                       R5 R3 K23 ["modelRbxmUrl"]
      102 SETTABLEKS                       R5 R4 K23 ["modelRbxmUrl"]
      104 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postUploadTextureAssetAsync"]
        3 DUPTABLE                         R1 K7 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["textureGenerationId"], ["robloxApiKey"], ["body"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K4 ["textureGenerationId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K8 ["getFStringCubeGenerationGatewayApiKey"]
       13 CALL                             R3 0 1
       14 LOADK                            R6 K10 ["^%s*(.-)%s*$"]
       15 NAMECALL                         R4 R3 K11 ["match"]
       17 CALL                             R4 2 1
       18 ORK                              R3 R4 K9 [""]
       19 JUMPIFEQKS                       R3 K9 [""] ; [+3]
       21 MOVE                             R2 R3
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K5 ["robloxApiKey"]
       26 GETUPVAL                         R2 4
       27 SETTABLEKS                       R2 R1 K6 ["body"]
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R2 K4 [game]
       10 GETTABLEKS                       R2 R2 K5 ["GameId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["getFFlagTextureGenAsyncAssetUpload"]
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+47]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K7 ["AssetUploadOps"]
       20 GETTABLEKS                       R3 R3 K8 ["publishAsync"]
       22 GETUPVAL                         R4 3
       23 DUPTABLE                         R5 K13 [{"generationId", "userId", "universeId", "robloxApiKey"}]
       24 SETTABLEKS                       R0 R5 K9 ["generationId"]
       26 SETTABLEKS                       R1 R5 K10 ["userId"]
       28 LOADN                            R7 0
       29 JUMPIFNOTLT                      R7 R2 ; [+3]
       31 MOVE                             R6 R2
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K11 ["universeId"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K14 ["getFStringCubeGenerationGatewayApiKey"]
       39 CALL                             R7 0 1
       40 LOADK                            R10 K16 ["^%s*(.-)%s*$"]
       41 NAMECALL                         R8 R7 K17 ["match"]
       43 CALL                             R8 2 1
       44 ORK                              R7 R8 K15 [""]
       45 JUMPIFEQKS                       R7 K15 [""] ; [+3]
       47 MOVE                             R6 R7
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 SETTABLEKS                       R6 R5 K12 ["robloxApiKey"]
       52 DUPTABLE                         R6 K20 [{"throwError", "debugLog"}]
       53 GETUPVAL                         R7 4
       54 SETTABLEKS                       R7 R6 K18 ["throwError"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K21 ["getFFlagTextureGenDebugLog"]
       59 CALL                             R7 0 1
       60 SETTABLEKS                       R7 R6 K19 ["debugLog"]
       62 CALL                             R3 3 -1
       63 RETURN                           R3 -1
       64 LOADN                            R4 0
       65 JUMPIFNOTLT                      R4 R2 ; [+5]
       67 DUPTABLE                         R3 K22 [{"universeId"}]
       68 SETTABLEKS                       R2 R3 K11 ["universeId"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R3
       72 GETUPVAL                         R4 5
       73 GETTABLEKS                       R4 R4 K23 ["callWithOptions"]
       75 NEWCLOSURE                       R5 P0
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R6 0 0
       83 CALL                             R4 2 1
       84 GETTABLEKS                       R5 R4 K24 ["success"]
       86 JUMPIF                           R5 ; [+6]
       87 GETUPVAL                         R5 5
       88 GETTABLEKS                       R5 R5 K18 ["throwError"]
       90 MOVE                             R6 R4
       91 CALL                             R5 1 -1
       92 RETURN                           R5 -1
       93 GETTABLEKS                       R5 R4 K25 ["data"]
       95 GETTABLEKS                       R5 R5 K26 ["assetId"]
       97 FASTCALL2K                       ASSERT R5 K27 ; [+5]
       99 MOVE                             R7 R5
      100 LOADK                            R8 K27 ["Expected assetId in response from postUploadTextureAssetAsync"]
      101 GETIMPORT                        R6 K29 [assert]
      103 CALL                             R6 2 0
      104 GETTABLEKS                       R6 R4 K25 ["data"]
      106 GETTABLEKS                       R6 R6 K9 ["generationId"]
      108 FASTCALL2K                       ASSERT R6 K30 ; [+5]
      110 MOVE                             R8 R6
      111 LOADK                            R9 K30 ["Expected generationId in response from postUploadTextureAssetAsync"]
      112 GETIMPORT                        R7 K29 [assert]
      114 CALL                             R7 2 0
      115 DUPTABLE                         R7 K31 [{"assetId", "generationId"}]
      116 SETTABLEKS                       R5 R7 K26 ["assetId"]
      118 SETTABLEKS                       R6 R7 K9 ["generationId"]
      120 RETURN                           R7 1

PROTO_9:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["rbxassetid://%*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 NAMECALL                         R1 R1 K4 ["GetObjectsAsync"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 SETTABLEKS                       R2 R1 K0 ["startAsync"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 SETTABLEKS                       R2 R1 K1 ["getStatusAsync"]
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R1 K2 ["publishAssetAsync"]
       29 DUPCLOSURE                       R2 K5 [PROTO_9]
       30 SETTABLEKS                       R2 R1 K3 ["loadAssetAsync"]
       32 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["HttpWrapper"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["OpenApiCubeGenerationGateway"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Util"]
       40 GETTABLEKS                       R6 R6 K16 ["StudioEndpointUtil"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K17 ["Bin"]
       47 GETTABLEKS                       R7 R7 K18 ["Common"]
       49 GETTABLEKS                       R7 R7 K19 ["defineLuaFlags"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K14 ["Src"]
       56 GETTABLEKS                       R8 R8 K15 ["Util"]
       58 GETTABLEKS                       R8 R8 K20 ["formatBackendError"]
       60 CALL                             R7 1 1
       61 GETTABLEKS                       R8 R4 K21 ["TextureGeneration"]
       63 GETTABLEKS                       R9 R4 K22 ["UploadAsset"]
       65 DUPCLOSURE                       R10 K23 [PROTO_0]
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R11 K24 [PROTO_1]
       68 DUPCLOSURE                       R12 K25 [PROTO_2]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 DUPCLOSURE                       R13 K26 [PROTO_10]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R12
       81 RETURN                           R13 1
