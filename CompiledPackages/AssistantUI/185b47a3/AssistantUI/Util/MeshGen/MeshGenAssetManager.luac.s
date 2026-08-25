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
        9 GETTABLEKS                       R2 R0 K6 ["Features"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dUtils"]
       13 GETTABLEKS                       R2 R2 K8 ["Gen3DAssetTracking"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["MeshGenConstants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["MeshGenTypes"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R2 K12 ["ATTRIBUTE_AI_GENERATED"]
       36 GETTABLEKS                       R5 R2 K13 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       38 GETTABLEKS                       R6 R2 K14 ["ATTRIBUTE_AI_GENERATION_ID"]
       40 GETTABLEKS                       R7 R2 K15 ["GENERATE_MESH_COMMAND"]
       42 GETTABLEKS                       R8 R2 K16 ["MIN_SCALE_SIZE"]
       44 NEWTABLE                         R9 0 0
       46 DUPCLOSURE                       R10 K17 [PROTO_0]
       47 CAPTURE                          VAL R9
       48 DUPCLOSURE                       R11 K18 [PROTO_1]
       49 CAPTURE                          VAL R9
       50 DUPCLOSURE                       R12 K19 [PROTO_2]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R13 K20 [PROTO_3]
       57 CAPTURE                          VAL R8
       58 DUPTABLE                         R14 K25 [{"getGenerationSession", "peekGenerationSession", "markAsAIGeneratedAsset", "scaleUpToMinimumSize"}]
       59 SETTABLEKS                       R10 R14 K21 ["getGenerationSession"]
       61 SETTABLEKS                       R11 R14 K22 ["peekGenerationSession"]
       63 SETTABLEKS                       R12 R14 K23 ["markAsAIGeneratedAsset"]
       65 SETTABLEKS                       R13 R14 K24 ["scaleUpToMinimumSize"]
       67 RETURN                           R14 1
