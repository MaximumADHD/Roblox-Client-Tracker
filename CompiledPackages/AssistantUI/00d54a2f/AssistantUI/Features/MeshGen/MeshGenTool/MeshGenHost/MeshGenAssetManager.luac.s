PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+22]
        3 DUPTABLE                         R2 K6 [{"generationThread", "previewAssets", "publishedAssets", "boundingBoxGhost", "boundingBoxCopy", "selectedBoundingBox"}]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R2 K0 ["generationThread"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K1 ["previewAssets"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K2 ["publishedAssets"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K3 ["boundingBoxGhost"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K4 ["boundingBoxCopy"]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K5 ["selectedBoundingBox"]
       22 MOVE                             R1 R2
       23 GETUPVAL                         R2 0
       24 SETTABLE                         R1 R2 R0
       25 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       27 MOVE                             R3 R1
       28 LOADK                            R4 K7 ["Failed to get generation session for requestId from cache"]
       29 GETIMPORT                        R2 K9 [assert]
       31 CALL                             R2 2 0
       32 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R5 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R4 R5 K1 ["environment"]
        4 GETTABLEKS                       R7 R4 K2 ["tools"]
        6 GETTABLEKS                       R6 R7 K3 ["meshGen"]
        8 GETTABLEKS                       R5 R6 K4 ["createAssetAsync"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 DUPTABLE                         R8 K8 [{"Name", "CreatorId", "CreatorType"}]
       13 SETTABLEKS                       R3 R8 K5 ["Name"]
       15 GETTABLEKS                       R9 R4 K9 ["getUserId"]
       17 CALL                             R9 0 1
       18 SETTABLEKS                       R9 R8 K6 ["CreatorId"]
       20 GETIMPORT                        R9 K13 [Enum.AssetCreatorType.User]
       22 SETTABLEKS                       R9 R8 K7 ["CreatorType"]
       24 CALL                             R5 3 2
       25 GETIMPORT                        R7 K16 [Enum.CreateAssetResult.Success]
       27 JUMPIFEQ                         R5 R7 ; [+15]
       29 GETIMPORT                        R7 K18 [error]
       31 LOADK                            R9 K19 ["createAsset failed: %*"]
       32 FASTCALL1                        TOSTRING R6 ; [+3]
       33 MOVE                             R12 R6
       34 GETIMPORT                        R11 K21 [tostring]
       36 CALL                             R11 1 1
       37 NAMECALL                         R9 R9 K22 ["format"]
       39 CALL                             R9 2 1
       40 MOVE                             R8 R9
       41 LOADN                            R9 0
       42 CALL                             R7 2 0
       43 LOADK                            R8 K23 ["rbxassetid://%*"]
       44 MOVE                             R10 R6
       45 NAMECALL                         R8 R8 K22 ["format"]
       47 CALL                             R8 2 1
       48 MOVE                             R7 R8
       49 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETIMPORT                        R5 K3 [Enum.AssetType.Mesh]
        5 LOADK                            R6 K4 ["GeneratedMesh"]
        6 CALL                             R2 4 1
        7 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETIMPORT                        R5 K3 [Enum.AssetType.Image]
        5 LOADK                            R6 K4 ["GeneratedImage"]
        6 CALL                             R2 4 1
        7 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R5 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R4 R5 K1 ["environment"]
        4 GETIMPORT                        R5 K4 [Content.fromUri]
        6 MOVE                             R6 R2
        7 CALL                             R5 1 1
        8 GETTABLEKS                       R8 R4 K5 ["tools"]
       10 GETTABLEKS                       R7 R8 K6 ["meshGen"]
       12 GETTABLEKS                       R6 R7 K7 ["createMeshPartAsync"]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 1
       16 SETTABLEKS                       R3 R6 K8 ["TextureID"]
       18 GETUPVAL                         R9 0
       19 LOADB                            R10 1
       20 NAMECALL                         R7 R6 K9 ["SetAttribute"]
       22 CALL                             R7 3 0
       23 GETUPVAL                         R9 1
       24 GETUPVAL                         R10 2
       25 NAMECALL                         R7 R6 K9 ["SetAttribute"]
       27 CALL                             R7 3 0
       28 GETUPVAL                         R9 3
       29 MOVE                             R10 R1
       30 NAMECALL                         R7 R6 K9 ["SetAttribute"]
       32 CALL                             R7 3 0
       33 RETURN                           R6 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 GETIMPORT                        R2 K3 [Instance.new]
        4 LOADK                            R3 K4 ["Model"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K0 ["Parent"]
        8 NAMECALL                         R3 R2 K5 ["GetExtentsSize"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R5 R3 K6 ["X"]
       13 GETTABLEKS                       R6 R3 K7 ["Y"]
       15 GETTABLEKS                       R7 R3 K8 ["Z"]
       17 FASTCALL                         MATH_MIN ; [+2]
       18 GETIMPORT                        R4 K11 [math.min]
       20 CALL                             R4 3 1
       21 GETUPVAL                         R6 0
       22 DIV                              R5 R6 R4
       23 LOADN                            R6 1
       24 JUMPIFNOTLT                      R6 R5 ; [+5]
       26 MOVE                             R8 R5
       27 NAMECALL                         R6 R2 K12 ["ScaleTo"]
       29 CALL                             R6 2 0
       30 SETTABLEKS                       R1 R0 K0 ["Parent"]
       32 NAMECALL                         R6 R2 K13 ["Destroy"]
       34 CALL                             R6 1 0
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MeshGen"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["MeshGenTool"]
       11 GETTABLEKS                       R2 R3 K7 ["MeshGenBridgeTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["MeshGenConstants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["MeshGenTypes"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R2 K10 ["ATTRIBUTE_AI_GENERATED"]
       26 GETTABLEKS                       R5 R2 K11 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       28 GETTABLEKS                       R6 R2 K12 ["ATTRIBUTE_AI_GENERATION_ID"]
       30 GETTABLEKS                       R7 R2 K13 ["GENERATE_MESH_COMMAND"]
       32 GETTABLEKS                       R8 R2 K14 ["MIN_SCALE_SIZE"]
       34 NEWTABLE                         R9 0 0
       36 DUPCLOSURE                       R10 K15 [PROTO_0]
       37 CAPTURE                          VAL R9
       38 DUPCLOSURE                       R11 K16 [PROTO_1]
       39 DUPCLOSURE                       R12 K17 [PROTO_2]
       40 CAPTURE                          VAL R11
       41 DUPCLOSURE                       R13 K18 [PROTO_3]
       42 CAPTURE                          VAL R11
       43 DUPCLOSURE                       R14 K19 [PROTO_4]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 DUPCLOSURE                       R15 K20 [PROTO_5]
       49 CAPTURE                          VAL R8
       50 DUPTABLE                         R16 K26 [{"getGenerationSession", "createMeshAsset", "createImageAsset", "createPublishedMeshPart", "scaleUpToMinimumSize"}]
       51 SETTABLEKS                       R10 R16 K21 ["getGenerationSession"]
       53 SETTABLEKS                       R12 R16 K22 ["createMeshAsset"]
       55 SETTABLEKS                       R13 R16 K23 ["createImageAsset"]
       57 SETTABLEKS                       R14 R16 K24 ["createPublishedMeshPart"]
       59 SETTABLEKS                       R15 R16 K25 ["scaleUpToMinimumSize"]
       61 RETURN                           R16 1
