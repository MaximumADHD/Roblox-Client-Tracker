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
       15 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["MeshGenConstants"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["MeshGenTypes"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R0 K7 ["ATTRIBUTE_AI_GENERATED"]
       21 GETTABLEKS                       R3 R0 K8 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       23 GETTABLEKS                       R4 R0 K9 ["ATTRIBUTE_AI_GENERATION_ID"]
       25 GETTABLEKS                       R5 R0 K10 ["GENERATE_MESH_COMMAND"]
       27 GETTABLEKS                       R6 R0 K11 ["MIN_SCALE_SIZE"]
       29 NEWTABLE                         R7 0 0
       31 DUPCLOSURE                       R8 K12 [PROTO_0]
       32 CAPTURE                          VAL R7
       33 DUPCLOSURE                       R9 K13 [PROTO_1]
       34 CAPTURE                          VAL R7
       35 DUPCLOSURE                       R10 K14 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R11 K15 [PROTO_3]
       41 CAPTURE                          VAL R6
       42 DUPTABLE                         R12 K20 [{"getGenerationSession", "peekGenerationSession", "markAsAIGeneratedAsset", "scaleUpToMinimumSize"}]
       43 SETTABLEKS                       R8 R12 K16 ["getGenerationSession"]
       45 SETTABLEKS                       R9 R12 K17 ["peekGenerationSession"]
       47 SETTABLEKS                       R10 R12 K18 ["markAsAIGeneratedAsset"]
       49 SETTABLEKS                       R11 R12 K19 ["scaleUpToMinimumSize"]
       51 RETURN                           R12 1
