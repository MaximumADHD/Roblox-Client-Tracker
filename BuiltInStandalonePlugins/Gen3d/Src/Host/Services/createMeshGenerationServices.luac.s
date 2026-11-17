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
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [select]
        3 LOADN                            R4 2
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K2 ["throwError"]
        7 MOVE                             R7 R0
        8 FASTPCALL                        pcall 2 ; [+2]
        9 GETIMPORT                        R5 K4 [pcall]
       11 CALL                             R5 2 -1
       12 CALL                             R3 -1 1
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"input", "options"}]
        1 DUPTABLE                         R2 K9 [{["textPrompt"], ["schema"] = , ["predefinedSchema"], ["schemaDefinition"], ["imageS3Url"]}]
        2 GETTABLEKS                       R3 R0 K3 ["textPrompt"]
        4 SETTABLEKS                       R3 R2 K3 ["textPrompt"]
        6 GETTABLEKS                       R4 R0 K10 ["partNames"]
        8 JUMPIFNOTEQKNIL                  R4 ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K11 ["MeshGenConstants"]
       13 GETTABLEKS                       R3 R3 K12 ["PREDEFINED_SCHEMA_BODY"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K6 ["predefinedSchema"]
       19 GETTABLEKS                       R3 R0 K10 ["partNames"]
       21 SETTABLEKS                       R3 R2 K7 ["schemaDefinition"]
       23 GETTABLEKS                       R3 R0 K13 ["imageUrl"]
       25 SETTABLEKS                       R3 R2 K8 ["imageS3Url"]
       27 SETTABLEKS                       R2 R1 K0 ["input"]
       29 DUPTABLE                         R2 K18 [{["adminOptions"] = , ["suggestedSize"], ["maxTriangleCount"], ["shouldGenerateTexture"]}]
       30 DUPTABLE                         R3 K22 [{"x", "y", "z"}]
       31 GETTABLEKS                       R4 R0 K23 ["size"]
       33 GETTABLEKS                       R4 R4 K24 ["X"]
       35 SETTABLEKS                       R4 R3 K19 ["x"]
       37 GETTABLEKS                       R4 R0 K23 ["size"]
       39 GETTABLEKS                       R4 R4 K25 ["Y"]
       41 SETTABLEKS                       R4 R3 K20 ["y"]
       43 GETTABLEKS                       R4 R0 K23 ["size"]
       45 GETTABLEKS                       R4 R4 K26 ["Z"]
       47 SETTABLEKS                       R4 R3 K21 ["z"]
       49 SETTABLEKS                       R3 R2 K15 ["suggestedSize"]
       51 GETTABLEKS                       R3 R0 K27 ["maxTriangles"]
       53 SETTABLEKS                       R3 R2 K16 ["maxTriangleCount"]
       55 GETTABLEKS                       R3 R0 K28 ["generateTextures"]
       57 SETTABLEKS                       R3 R2 K17 ["shouldGenerateTexture"]
       59 SETTABLEKS                       R2 R1 K1 ["options"]
       61 RETURN                           R1 1

PROTO_3:
        0 LENGTH                           R3 R0
        1 LOADN                            R4 0
        2 JUMPIFLT                         R4 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        8 LOADK                            R3 K0 ["No instances were loaded from the published asset"]
        9 GETIMPORT                        R1 K2 [assert]
       11 CALL                             R1 2 0
       12 LOADNIL                          R1
       13 GETTABLEN                        R2 R0 1
       14 LENGTH                           R3 R0
       15 JUMPIFNOTEQKN                    R3 K3 [1] ; [+8]
       17 LOADK                            R5 K4 ["PVInstance"]
       18 NAMECALL                         R3 R2 K5 ["IsA"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R3 ; [+2]
       22 MOVE                             R1 R2
       23 JUMP                             ; [+13]
       24 GETIMPORT                        R3 K8 [Instance.new]
       26 LOADK                            R4 K9 ["Model"]
       27 CALL                             R3 1 1
       28 MOVE                             R1 R3
       29 MOVE                             R3 R0
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 SETTABLEKS                       R1 R7 K10 ["Parent"]
       35 FORGLOOP                         R3 2 ; [-3]
       37 LOADK                            R5 K9 ["Model"]
       38 NAMECALL                         R3 R1 K5 ["IsA"]
       40 CALL                             R3 2 1
       41 JUMPIFNOT                        R3 ; [+25]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K11 ["MeshGenConstants"]
       45 GETTABLEKS                       R5 R5 K12 ["WORLD_CHILD_NAME"]
       47 NAMECALL                         R3 R1 K13 ["FindFirstChild"]
       49 CALL                             R3 2 1
       50 JUMPIFNOT                        R3 ; [+16]
       51 LOADK                            R6 K9 ["Model"]
       52 NAMECALL                         R4 R3 K5 ["IsA"]
       54 CALL                             R4 2 1
       55 JUMPIFNOT                        R4 ; [+11]
       56 NAMECALL                         R4 R3 K14 ["GetChildren"]
       58 CALL                             R4 1 3
       59 FORGPREP                         R4
       60 SETTABLEKS                       R1 R8 K10 ["Parent"]
       62 FORGLOOP                         R4 2 ; [-3]
       64 NAMECALL                         R4 R3 K15 ["Destroy"]
       66 CALL                             R4 1 0
       67 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentCamera"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R2 K3 [Instance.new]
        8 LOADK                            R3 K4 ["Model"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R0 K5 ["Parent"]
       12 NAMECALL                         R3 R2 K6 ["GetBoundingBox"]
       14 CALL                             R3 1 2
       15 LOADNIL                          R5
       16 SETTABLEKS                       R5 R0 K5 ["Parent"]
       18 NAMECALL                         R5 R2 K7 ["Destroy"]
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K8 ["PlacementOps"]
       24 GETTABLEKS                       R5 R5 K9 ["computeDropCFrame"]
       26 MOVE                             R6 R1
       27 MOVE                             R7 R4
       28 LOADK                            R8 K10 ["TerrainAndParts"]
       29 CALL                             R5 3 1
       30 NAMECALL                         R9 R0 K11 ["GetPivot"]
       32 CALL                             R9 1 1
       33 GETTABLEKS                       R11 R5 K12 ["Position"]
       35 GETTABLEKS                       R12 R3 K12 ["Position"]
       37 SUB                              R10 R11 R12
       38 ADD                              R8 R9 R10
       39 NAMECALL                         R6 R0 K13 ["PivotTo"]
       41 CALL                             R6 2 0
       42 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["rbxassetid://%*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 NAMECALL                         R1 R1 K4 ["GetObjectsAsync"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateModelAsync"]
        3 DUPTABLE                         R1 K6 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["robloxApiKey"], ["body"]}]
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R3 R3 K7 ["GetUserId"]
        7 CALL                             R3 1 -1
        8 FASTCALL                         TOSTRING ; [+2]
        9 GETIMPORT                        R2 K9 [tostring]
       11 CALL                             R2 -1 1
       12 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K10 ["getFStringCubeGenerationGatewayApiKey"]
       17 CALL                             R3 0 1
       18 LOADK                            R6 K12 ["^%s*(.-)%s*$"]
       19 NAMECALL                         R4 R3 K13 ["match"]
       21 CALL                             R4 2 1
       22 ORK                              R3 R4 K11 [""]
       23 JUMPIFEQKS                       R3 K11 [""] ; [+3]
       25 MOVE                             R2 R3
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K4 ["robloxApiKey"]
       30 GETUPVAL                         R2 3
       31 GETUPVAL                         R3 4
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K5 ["body"]
       35 CALL                             R0 1 -1
       36 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R3 0 0
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R2 R1 K1 ["success"]
       14 JUMPIF                           R2 ; [+19]
       15 GETIMPORT                        R2 K3 [error]
       17 GETUPVAL                         R3 5
       18 GETIMPORT                        R4 K5 [select]
       20 LOADN                            R5 2
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K6 ["throwError"]
       24 MOVE                             R8 R1
       25 FASTPCALL                        pcall 2 ; [+2]
       26 GETIMPORT                        R6 K8 [pcall]
       28 CALL                             R6 2 -1
       29 CALL                             R4 -1 1
       30 LOADK                            R5 K9 ["Mesh generation"]
       31 CALL                             R3 2 1
       32 LOADN                            R4 0
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R2 R1 K10 ["data"]
       36 GETTABLEKS                       R2 R2 K11 ["modelGenerationId"]
       38 LOADB                            R4 0
       39 FASTCALL1                        TYPEOF R2 ; [+3]
       40 MOVE                             R6 R2
       41 GETIMPORT                        R5 K13 [typeof]
       43 CALL                             R5 1 1
       44 JUMPIFNOTEQKS                    R5 K14 ["string"] ; [+5]
       46 JUMPIFNOTEQKS                    R2 K15 [""] ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 FASTCALL2K                       ASSERT R4 K16 ; [+4]
       52 LOADK                            R5 K16 ["Expected modelGenerationId in response from GenerateModel.postGenerateModelAsync"]
       53 GETIMPORT                        R3 K18 [assert]
       55 CALL                             R3 2 0
       56 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getModelGenerationStatusAsync"]
        3 DUPTABLE                         R1 K6 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["modelGenerationId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R3 R3 K7 ["GetUserId"]
        7 CALL                             R3 1 -1
        8 FASTCALL                         TOSTRING ; [+2]
        9 GETIMPORT                        R2 K9 [tostring]
       11 CALL                             R2 -1 1
       12 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K4 ["modelGenerationId"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K10 ["getFStringCubeGenerationGatewayApiKey"]
       20 CALL                             R3 0 1
       21 LOADK                            R6 K12 ["^%s*(.-)%s*$"]
       22 NAMECALL                         R4 R3 K13 ["match"]
       24 CALL                             R4 2 1
       25 ORK                              R3 R4 K11 [""]
       26 JUMPIFEQKS                       R3 K11 [""] ; [+3]
       28 MOVE                             R2 R3
       29 JUMP                             ; [+1]
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K5 ["robloxApiKey"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 NEWTABLE                         R3 0 0
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K1 ["success"]
       13 JUMPIF                           R2 ; [+30]
       14 DUPTABLE                         R2 K6 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       15 GETTABLEKS                       R4 R1 K7 ["httpDetails"]
       17 JUMPIFNOT                        R4 ; [+5]
       18 GETTABLEKS                       R3 R1 K7 ["httpDetails"]
       20 GETTABLEKS                       R3 R3 K4 ["statusCode"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K4 ["statusCode"]
       26 GETUPVAL                         R3 4
       27 GETIMPORT                        R4 K9 [select]
       29 LOADN                            R5 2
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K10 ["throwError"]
       33 MOVE                             R8 R1
       34 FASTPCALL                        pcall 2 ; [+2]
       35 GETIMPORT                        R6 K12 [pcall]
       37 CALL                             R6 2 -1
       38 CALL                             R4 -1 1
       39 LOADK                            R5 K13 ["Mesh generation"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K5 ["errorMessage"]
       43 RETURN                           R2 1
       44 DUPTABLE                         R2 K16 [{["ok"] = True, ["statusCode"], ["status"]}]
       45 GETTABLEKS                       R3 R1 K7 ["httpDetails"]
       47 GETTABLEKS                       R3 R3 K4 ["statusCode"]
       49 SETTABLEKS                       R3 R2 K4 ["statusCode"]
       51 GETTABLEKS                       R3 R1 K17 ["data"]
       53 GETTABLEKS                       R3 R3 K15 ["status"]
       55 SETTABLEKS                       R3 R2 K15 ["status"]
       57 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 ORK                              R1 R2 K0 ["Failed to generate mesh."]
        3 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["GenerationUtils"]
        6 GETTABLEKS                       R2 R2 K1 ["pollForCompletedStatus"]
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R1
       12 DUPCLOSURE                       R6 K2 [PROTO_11]
       13 CAPTURE                          UPVAL U3
       14 LOADK                            R7 K3 ["FailedToGenerate"]
       15 LOADK                            R8 K4 ["MeshGen"]
       16 CALL                             R2 6 -1
       17 RETURN                           R2 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [error]
        2 GETUPVAL                         R2 0
        3 GETIMPORT                        R3 K3 [select]
        5 LOADN                            R4 2
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K4 ["throwError"]
        9 MOVE                             R7 R0
       10 FASTPCALL                        pcall 2 ; [+2]
       11 GETIMPORT                        R5 K6 [pcall]
       13 CALL                             R5 2 -1
       14 CALL                             R3 -1 1
       15 LOADK                            R4 K7 ["Mesh publish"]
       16 CALL                             R2 2 1
       17 LOADN                            R3 0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GameId"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["AssetUploadOps"]
        7 GETTABLEKS                       R2 R2 K4 ["publishAsync"]
        9 GETUPVAL                         R3 1
       10 DUPTABLE                         R4 K9 [{"generationId", "userId", "universeId", "robloxApiKey"}]
       11 SETTABLEKS                       R0 R4 K5 ["generationId"]
       13 GETUPVAL                         R6 2
       14 NAMECALL                         R6 R6 K10 ["GetUserId"]
       16 CALL                             R6 1 -1
       17 FASTCALL                         TOSTRING ; [+2]
       18 GETIMPORT                        R5 K12 [tostring]
       20 CALL                             R5 -1 1
       21 SETTABLEKS                       R5 R4 K6 ["userId"]
       23 LOADN                            R6 0
       24 JUMPIFNOTLT                      R6 R1 ; [+3]
       26 MOVE                             R5 R1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 SETTABLEKS                       R5 R4 K7 ["universeId"]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K13 ["getFStringCubeGenerationGatewayApiKey"]
       34 CALL                             R6 0 1
       35 LOADK                            R9 K15 ["^%s*(.-)%s*$"]
       36 NAMECALL                         R7 R6 K16 ["match"]
       38 CALL                             R7 2 1
       39 ORK                              R6 R7 K14 [""]
       40 JUMPIFEQKS                       R6 K14 [""] ; [+3]
       42 MOVE                             R5 R6
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K8 ["robloxApiKey"]
       47 DUPTABLE                         R5 K19 [{"throwError", "debugLog"}]
       48 DUPCLOSURE                       R6 K20 [PROTO_13]
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 SETTABLEKS                       R6 R5 K17 ["throwError"]
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K21 ["getFFlagDebugLogAssistantUI"]
       56 CALL                             R6 0 1
       57 SETTABLEKS                       R6 R5 K18 ["debugLog"]
       59 CALL                             R2 3 1
       60 GETTABLEKS                       R3 R2 K22 ["assetId"]
       62 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["assetId"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 1
        6 GETTABLEKS                       R2 R0 K1 ["name"]
        8 SETTABLEKS                       R2 R1 K2 ["Name"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["markAsAIGeneratedAsset"]
       13 MOVE                             R3 R1
       14 GETTABLEKS                       R4 R0 K4 ["generationId"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K5 ["Gen3dTypes"]
       19 GETTABLEKS                       R5 R5 K6 ["Enums"]
       21 GETTABLEKS                       R5 R5 K7 ["GenerationType"]
       23 GETTABLEKS                       R5 R5 K8 ["GenerateMesh"]
       25 CALL                             R2 3 0
       26 GETUPVAL                         R2 4
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 LOADK                            R2 K9 ["MeshGen-%*"]
       30 GETTABLEKS                       R4 R0 K4 ["generationId"]
       32 NAMECALL                         R2 R2 K10 ["format"]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K11 ["startRecording"]
       38 MOVE                             R4 R2
       39 LOADK                            R5 K12 ["Insert AI Generated Mesh"]
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 6
       42 SETTABLEKS                       R3 R1 K13 ["Parent"]
       44 GETUPVAL                         R3 5
       45 GETTABLEKS                       R3 R3 K14 ["endRecording"]
       47 MOVE                             R4 R2
       48 CALL                             R3 1 0
       49 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R1 K0 ["generateModelApi"]
        6 JUMPIF                           R2 ; [+3]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["GenerateModel"]
       10 GETTABLEKS                       R3 R1 K2 ["uploadAssetApi"]
       12 JUMPIF                           R3 ; [+3]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["UploadAsset"]
       16 GETTABLEKS                       R4 R1 K4 ["loadAssetAsync"]
       18 JUMPIF                           R4 ; [+1]
       19 GETUPVAL                         R4 1
       20 GETUPVAL                         R5 2
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K5 ["createGenerationSessions"]
       25 CALL                             R6 0 1
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U8
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U8
       39 DUPTABLE                         R9 K9 [{"generateModelAsync", "publishModelAsync", "insertAssetAsync"}]
       40 NEWCLOSURE                       R10 P2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R8
       44 CAPTURE                          UPVAL U9
       45 SETTABLEKS                       R10 R9 K6 ["generateModelAsync"]
       47 NEWCLOSURE                       R10 P3
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U4
       54 SETTABLEKS                       R10 R9 K7 ["publishModelAsync"]
       56 NEWCLOSURE                       R10 P4
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U11
       62 CAPTURE                          VAL R5
       63 CAPTURE                          UPVAL U12
       64 SETTABLEKS                       R10 R9 K8 ["insertAssetAsync"]
       66 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Gen3d"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Gen3dCore"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["OpenApiCubeGenerationGateway"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Util"]
       39 GETTABLEKS                       R6 R6 K16 ["StudioEndpointUtil"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K14 ["Src"]
       46 GETTABLEKS                       R7 R7 K17 ["Host"]
       48 GETTABLEKS                       R7 R7 K18 ["Services"]
       50 GETTABLEKS                       R7 R7 K19 ["createRecordingService"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K10 [require]
       55 GETTABLEKS                       R8 R2 K20 ["Bin"]
       57 GETTABLEKS                       R8 R8 K21 ["Common"]
       59 GETTABLEKS                       R8 R8 K22 ["defineLuaFlags"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K10 [require]
       64 GETTABLEKS                       R9 R2 K14 ["Src"]
       66 GETTABLEKS                       R9 R9 K15 ["Util"]
       68 GETTABLEKS                       R9 R9 K23 ["formatBackendError"]
       70 CALL                             R8 1 1
       71 DUPTABLE                         R9 K28 [{["FailedToGenerate"] = "Failed to generate mesh.", ["UserCancelled"] = "Mesh generation was canceled."}]
       72 DUPCLOSURE                       R10 K29 [PROTO_0]
       73 CAPTURE                          VAL R7
       74 DUPCLOSURE                       R11 K30 [PROTO_1]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R5
       77 DUPCLOSURE                       R12 K31 [PROTO_2]
       78 CAPTURE                          VAL R3
       79 DUPCLOSURE                       R13 K32 [PROTO_3]
       80 CAPTURE                          VAL R3
       81 DUPCLOSURE                       R14 K33 [PROTO_4]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R3
       84 DUPCLOSURE                       R15 K34 [PROTO_5]
       85 DUPCLOSURE                       R16 K35 [PROTO_16]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R1
       99 RETURN                           R16 1
