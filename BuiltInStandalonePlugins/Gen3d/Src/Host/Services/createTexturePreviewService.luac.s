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
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [select]
        3 LOADN                            R3 2
        4 GETIMPORT                        R4 K3 [pcall]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K4 ["throwError"]
        9 MOVE                             R6 R0
       10 CALL                             R4 2 -1
       11 CALL                             R2 -1 1
       12 LOADK                            R3 K5 ["Texture preview"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateTexturePreviewAsync"]
        3 DUPTABLE                         R1 K15 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["robloxApiKey"], ["glb"], ["assetId"], ["image"], ["textPrompt"], ["n"], ["temperature"], ["controlStrength"], ["resolution"], ["cameraExtrinsic"], ["cameraIntrinsic"]}]
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
       40 GETTABLEKS                       R2 R2 K9 ["n"]
       42 SETTABLEKS                       R2 R1 K9 ["n"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K10 ["temperature"]
       47 SETTABLEKS                       R2 R1 K10 ["temperature"]
       49 GETUPVAL                         R2 4
       50 GETTABLEKS                       R2 R2 K11 ["controlStrength"]
       52 SETTABLEKS                       R2 R1 K11 ["controlStrength"]
       54 GETUPVAL                         R2 4
       55 GETTABLEKS                       R2 R2 K12 ["resolution"]
       57 SETTABLEKS                       R2 R1 K12 ["resolution"]
       59 GETUPVAL                         R2 4
       60 GETTABLEKS                       R2 R2 K13 ["cameraExtrinsic"]
       62 SETTABLEKS                       R2 R1 K13 ["cameraExtrinsic"]
       64 GETUPVAL                         R2 4
       65 GETTABLEKS                       R2 R2 K14 ["cameraIntrinsic"]
       67 SETTABLEKS                       R2 R1 K14 ["cameraIntrinsic"]
       69 CALL                             R0 1 -1
       70 RETURN                           R0 -1

PROTO_3:
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
       32 LOADK                            R5 K8 ["model.glb"]
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
       57 DUPTABLE                         R5 K19 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       58 GETTABLEKS                       R7 R4 K20 ["httpDetails"]
       60 JUMPIFNOT                        R7 ; [+5]
       61 GETTABLEKS                       R6 R4 K20 ["httpDetails"]
       63 GETTABLEKS                       R6 R6 K17 ["statusCode"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R6
       67 SETTABLEKS                       R6 R5 K17 ["statusCode"]
       69 GETUPVAL                         R6 5
       70 GETIMPORT                        R7 K22 [select]
       72 LOADN                            R8 2
       73 GETIMPORT                        R9 K24 [pcall]
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R10 R10 K25 ["throwError"]
       78 MOVE                             R11 R4
       79 CALL                             R9 2 -1
       80 CALL                             R7 -1 1
       81 LOADK                            R8 K26 ["Texture preview"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K18 ["errorMessage"]
       85 CLOSEUPVALS                      R2
       86 RETURN                           R5 1
       87 DUPTABLE                         R5 K29 [{["ok"] = True, ["statusCode"], ["texturePreviewId"]}]
       88 GETTABLEKS                       R6 R4 K20 ["httpDetails"]
       90 GETTABLEKS                       R6 R6 K17 ["statusCode"]
       92 SETTABLEKS                       R6 R5 K17 ["statusCode"]
       94 GETTABLEKS                       R6 R4 K30 ["data"]
       96 GETTABLEKS                       R6 R6 K28 ["texturePreviewId"]
       98 SETTABLEKS                       R6 R5 K28 ["texturePreviewId"]
      100 CLOSEUPVALS                      R2
      101 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTexturePreviewStatusAsync"]
        3 DUPTABLE                         R1 K6 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["texturePreviewId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K4 ["texturePreviewId"]
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

PROTO_5:
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
       22 DUPTABLE                         R3 K9 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       23 GETTABLEKS                       R5 R2 K10 ["httpDetails"]
       25 JUMPIFNOT                        R5 ; [+5]
       26 GETTABLEKS                       R4 R2 K10 ["httpDetails"]
       28 GETTABLEKS                       R4 R4 K7 ["statusCode"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K7 ["statusCode"]
       34 GETUPVAL                         R4 4
       35 GETIMPORT                        R5 K12 [select]
       37 LOADN                            R6 2
       38 GETIMPORT                        R7 K14 [pcall]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K15 ["throwError"]
       43 MOVE                             R9 R2
       44 CALL                             R7 2 -1
       45 CALL                             R5 -1 1
       46 LOADK                            R6 K16 ["Texture preview"]
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K8 ["errorMessage"]
       50 RETURN                           R3 1
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K17 ["toGetStatusResult"]
       54 LOADB                            R4 1
       55 GETTABLEKS                       R5 R2 K10 ["httpDetails"]
       57 GETTABLEKS                       R5 R5 K7 ["statusCode"]
       59 GETTABLEKS                       R6 R2 K18 ["data"]
       61 LOADNIL                          R7
       62 CALL                             R3 4 -1
       63 RETURN                           R3 -1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"startAsync", "getStatusAsync"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_3]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 SETTABLEKS                       R1 R0 K0 ["startAsync"]
       10 DUPCLOSURE                       R1 K4 [PROTO_5]
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 SETTABLEKS                       R1 R0 K1 ["getStatusAsync"]
       19 RETURN                           R0 1

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
       61 GETTABLEKS                       R8 R4 K21 ["TexturePreview"]
       63 GETTABLEKS                       R9 R2 K22 ["TexturePreviewResponseOps"]
       65 DUPCLOSURE                       R10 K23 [PROTO_0]
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R11 K24 [PROTO_1]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 DUPCLOSURE                       R12 K25 [PROTO_6]
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 RETURN                           R12 1
