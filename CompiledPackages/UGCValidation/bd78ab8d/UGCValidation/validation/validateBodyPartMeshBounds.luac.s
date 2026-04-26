PROTO_0:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R1
        5 GETUPVAL                         R10 1
        6 GETTABLEKS                       R9 R10 K0 ["MESH_CONTENT_TYPE"]
        8 GETTABLEKS                       R8 R9 K1 ["RENDER_MESH"]
       10 MOVE                             R9 R2
       11 CALL                             R6 3 3
       12 MOVE                             R3 R6
       13 MOVE                             R4 R7
       14 MOVE                             R5 R8
       15 JUMPIF                           R3 ; [+3]
       16 LOADB                            R6 0
       17 MOVE                             R7 R4
       18 RETURN                           R6 2
       19 LOADK                            R8 K2 ["WrapTarget"]
       20 NAMECALL                         R6 R1 K3 ["FindFirstChildWhichIsA"]
       22 CALL                             R6 2 1
       23 LOADK                            R10 K4 ["Missing WrapTarget child for "]
       24 GETTABLEKS                       R11 R1 K5 ["Name"]
       26 CONCAT                           R9 R10 R11
       27 FASTCALL2                        ASSERT R6 R9 ; [+4]
       29 MOVE                             R8 R6
       30 GETIMPORT                        R7 K7 [assert]
       32 CALL                             R7 2 0
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 GETUPVAL                         R10 0
       37 MOVE                             R11 R6
       38 GETUPVAL                         R14 1
       39 GETTABLEKS                       R13 R14 K0 ["MESH_CONTENT_TYPE"]
       41 GETTABLEKS                       R12 R13 K8 ["OUTER_CAGE"]
       43 MOVE                             R13 R2
       44 CALL                             R10 3 3
       45 MOVE                             R7 R10
       46 MOVE                             R8 R11
       47 MOVE                             R9 R12
       48 JUMPIF                           R7 ; [+3]
       49 LOADB                            R10 0
       50 MOVE                             R11 R8
       51 RETURN                           R10 2
       52 SETTABLEKS                       R0 R5 K9 ["scale"]
       54 SETTABLEKS                       R0 R9 K9 ["scale"]
       56 GETUPVAL                         R10 2
       57 MOVE                             R11 R5
       58 MOVE                             R12 R9
       59 GETUPVAL                         R14 1
       60 GETTABLEKS                       R13 R14 K10 ["RenderVsWrapMeshMaxDiff"]
       62 MOVE                             R14 R2
       63 CALL                             R10 4 -1
       64 RETURN                           R10 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R2 K4 [{"fullName", "fieldName", "contentId", "context"}]
        1 NAMECALL                         R3 R0 K5 ["GetFullName"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["fullName"]
        6 LOADK                            R3 K6 ["MeshId"]
        7 SETTABLEKS                       R3 R2 K1 ["fieldName"]
        9 GETTABLEKS                       R3 R0 K6 ["MeshId"]
       11 SETTABLEKS                       R3 R2 K2 ["contentId"]
       13 GETTABLEKS                       R3 R0 K7 ["Name"]
       15 SETTABLEKS                       R3 R2 K3 ["context"]
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R0
       19 LOADK                            R5 K6 ["MeshId"]
       20 MOVE                             R6 R1
       21 CALL                             R3 3 2
       22 JUMPIF                           R3 ; [+12]
       23 LOADB                            R5 0
       24 NEWTABLE                         R6 0 1
       26 GETIMPORT                        R7 K10 [string.format]
       28 LOADK                            R8 K11 ["Mesh for '%s' failed to load. Make sure the mesh exists and try again."]
       29 GETTABLEKS                       R9 R2 K0 ["fullName"]
       31 CALL                             R7 2 -1
       32 SETLIST                          R6 R7 -1 [1]
       34 RETURN                           R5 2
       35 SETTABLEKS                       R4 R2 K12 ["editableMesh"]
       37 GETUPVAL                         R5 1
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R2
       41 MOVE                             R7 R1
       42 CALL                             R5 2 2
       43 JUMPIF                           R5 ; [+25]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R7 R8 K13 ["reportFailure"]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R9 R10 K14 ["ErrorType"]
       50 GETTABLEKS                       R8 R9 K15 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
       52 LOADNIL                          R9
       53 MOVE                             R10 R1
       54 CALL                             R7 3 0
       55 GETTABLEKS                       R7 R1 K16 ["isServer"]
       57 JUMPIFNOT                        R7 ; [+4]
       58 GETIMPORT                        R7 K18 [error]
       60 LOADK                            R8 K19 ["Failed to read mesh"]
       61 CALL                             R7 1 0
       62 LOADB                            R7 0
       63 NEWTABLE                         R8 0 1
       65 LOADK                            R9 K19 ["Failed to read mesh"]
       66 SETLIST                          R8 R9 1 [1]
       68 RETURN                           R7 2
       69 LOADB                            R7 1
       70 LOADNIL                          R8
       71 MOVE                             R9 R6
       72 RETURN                           R7 3

PROTO_3:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 3
        7 JUMPIFNOT                        R3 ; [+1]
        8 JUMPIF                           R5 ; [+1]
        9 RETURN                           R3 2
       10 GETUPVAL                         R7 1
       11 MOVE                             R8 R0
       12 MOVE                             R9 R1
       13 CALL                             R7 2 1
       14 DIV                              R6 R7 R5
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R7 R8 K2 ["new"]
       18 CALL                             R7 0 1
       19 GETUPVAL                         R10 3
       20 MOVE                             R11 R6
       21 MOVE                             R12 R0
       22 MOVE                             R13 R1
       23 CALL                             R10 3 -1
       24 NAMECALL                         R8 R7 K3 ["updateReasons"]
       26 CALL                             R8 -1 0
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R8 R9 K4 ["recordScriptTime"]
       30 GETIMPORT                        R10 K6 [script]
       32 GETTABLEKS                       R9 R10 K7 ["Name"]
       34 MOVE                             R10 R2
       35 MOVE                             R11 R1
       36 CALL                             R8 3 0
       37 NAMECALL                         R8 R7 K8 ["getFinalResults"]
       39 CALL                             R8 1 -1
       40 RETURN                           R8 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["ASSET_TYPE_INFO"]
        5 GETTABLE                         R3 R4 R2
        6 GETIMPORT                        R4 K5 [Enum.AssetType.DynamicHead]
        8 JUMPIFNOTEQ                      R4 R2 ; [+6]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K6 ["new"]
       18 CALL                             R4 0 1
       19 GETIMPORT                        R5 K8 [pairs]
       21 GETTABLEKS                       R6 R3 K9 ["subParts"]
       23 CALL                             R5 1 3
       24 FORGPREP_NEXT                    R5
       25 MOVE                             R12 R8
       26 NAMECALL                         R10 R0 K10 ["FindFirstChild"]
       28 CALL                             R10 2 1
       29 FASTCALL1                        ASSERT R10 ; [+3]
       30 MOVE                             R12 R10
       31 GETIMPORT                        R11 K12 [assert]
       33 CALL                             R11 1 0
       34 GETUPVAL                         R13 1
       35 MOVE                             R14 R10
       36 MOVE                             R15 R1
       37 CALL                             R13 2 -1
       38 NAMECALL                         R11 R4 K13 ["updateReasons"]
       40 CALL                             R11 -1 0
       41 FORGLOOP                         R5 1 ; [-17]
       43 NAMECALL                         R5 R4 K14 ["getFinalResults"]
       45 CALL                             R5 1 -1
       46 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["pcallDeferred"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Constants"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K10 ["validation"]
       35 GETTABLEKS                       R6 R7 K11 ["validateMeshComparison"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K5 ["util"]
       42 GETTABLEKS                       R7 R8 K12 ["getMeshSize"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R0 K5 ["util"]
       49 GETTABLEKS                       R8 R9 K13 ["getEditableMeshFromContext"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K5 ["util"]
       56 GETTABLEKS                       R9 R10 K14 ["getExpectedPartSize"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R11 R0 K5 ["util"]
       63 GETTABLEKS                       R10 R11 K15 ["getMeshInfo"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R12 R0 K5 ["util"]
       70 GETTABLEKS                       R11 R12 K16 ["FailureReasonsAccumulator"]
       72 CALL                             R10 1 1
       73 DUPCLOSURE                       R11 K17 [PROTO_0]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 DUPCLOSURE                       R12 K18 [PROTO_2]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R3
       82 DUPCLOSURE                       R13 K19 [PROTO_3]
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R3
       88 DUPCLOSURE                       R14 K20 [PROTO_4]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R10
       92 RETURN                           R14 1
