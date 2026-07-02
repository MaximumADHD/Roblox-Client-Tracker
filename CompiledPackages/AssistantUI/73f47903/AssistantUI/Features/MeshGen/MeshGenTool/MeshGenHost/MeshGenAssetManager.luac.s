PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+4]
        3 DUPTABLE                         R2 K6 [{[1] = , ["previewAssets"] = , ["publishedAssets"] = , ["boundingBoxCopy"] = , ["selectedBoundingBox"] = }]
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 SETTABLE                         R1 R2 R0
        7 FASTCALL2K                       ASSERT R1 K7 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K7 ["Failed to get generation session for requestId from cache"]
       11 GETIMPORT                        R2 K9 [assert]
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_1:
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
       15 RETURN                           R0 0

PROTO_2:
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
        9 GETTABLEKS                       R2 R0 K6 ["MeshGenTool"]
       11 GETTABLEKS                       R2 R2 K7 ["MeshGenBridgeTypes"]
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
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R6
       43 DUPCLOSURE                       R12 K17 [PROTO_2]
       44 CAPTURE                          VAL R8
       45 DUPTABLE                         R13 K21 [{"getGenerationSession", "markAsAIGeneratedAsset", "scaleUpToMinimumSize"}]
       46 SETTABLEKS                       R10 R13 K18 ["getGenerationSession"]
       48 SETTABLEKS                       R11 R13 K19 ["markAsAIGeneratedAsset"]
       50 SETTABLEKS                       R12 R13 K20 ["scaleUpToMinimumSize"]
       52 RETURN                           R13 1
