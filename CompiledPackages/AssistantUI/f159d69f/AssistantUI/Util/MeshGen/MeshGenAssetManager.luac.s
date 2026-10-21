PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+4]
        3 DUPTABLE                         R2 K7 [{[1] = , ["previewAssets"] = , ["publishedAssets"] = , ["boundingBoxCopy"] = , ["selectedBoundingBox"] = , ["inputFormat"] = }]
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 SETTABLE                         R1 R2 R0
        7 FASTCALL2K                       ASSERT R1 K8 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K8 ["Failed to get generation session for requestId from cache"]
       11 GETIMPORT                        R2 K10 [assert]
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K0 ["SetAttribute"]
        4 CALL                             R2 3 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 NAMECALL                         R2 R0 K0 ["SetAttribute"]
        9 CALL                             R2 3 0
       10 GETUPVAL                         R4 3
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R0 K0 ["SetAttribute"]
       14 CALL                             R2 3 0
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K1 ["markGeneratedAsset"]
       18 MOVE                             R3 R0
       19 MOVE                             R4 R1
       20 LOADK                            R5 K2 ["mesh"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_3:
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
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dUtils"]
       13 GETTABLEKS                       R2 R2 K8 ["Gen3DAssetTracking"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Gen3dCore"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K9 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["MeshGenConstants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K9 ["Parent"]
       38 GETTABLEKS                       R5 R5 K12 ["MeshGenTypes"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K13 ["getFFlagGen3dSharedMeshGenOps"]
       43 CALL                             R5 0 1
       44 GETTABLEKS                       R6 R3 K14 ["ATTRIBUTE_AI_GENERATED"]
       46 GETTABLEKS                       R7 R3 K15 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       48 GETTABLEKS                       R8 R3 K16 ["ATTRIBUTE_AI_GENERATION_ID"]
       50 GETTABLEKS                       R9 R3 K17 ["GENERATE_MESH_COMMAND"]
       52 JUMPIFNOT                        R5 ; [+5]
       53 GETTABLEKS                       R10 R2 K11 ["MeshGenConstants"]
       55 GETTABLEKS                       R10 R10 K18 ["MIN_SCALE_SIZE"]
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R10 R3 K18 ["MIN_SCALE_SIZE"]
       60 NEWTABLE                         R11 0 0
       62 DUPCLOSURE                       R12 K19 [PROTO_0]
       63 CAPTURE                          VAL R11
       64 DUPCLOSURE                       R13 K20 [PROTO_1]
       65 CAPTURE                          VAL R11
       66 DUPCLOSURE                       R14 K21 [PROTO_2]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R15 K22 [PROTO_3]
       73 CAPTURE                          VAL R10
       74 DUPTABLE                         R16 K27 [{"getGenerationSession", "peekGenerationSession", "markAsAIGeneratedAsset", "scaleUpToMinimumSize"}]
       75 SETTABLEKS                       R12 R16 K23 ["getGenerationSession"]
       77 SETTABLEKS                       R13 R16 K24 ["peekGenerationSession"]
       79 SETTABLEKS                       R14 R16 K25 ["markAsAIGeneratedAsset"]
       81 SETTABLEKS                       R15 R16 K26 ["scaleUpToMinimumSize"]
       83 RETURN                           R16 1
