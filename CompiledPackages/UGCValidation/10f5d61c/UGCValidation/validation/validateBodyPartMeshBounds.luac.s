PROTO_0:
        0 DUPTABLE                         R6 K5 [{"fullName", "contentId", "fieldName", "context", "scale"}]
        1 NAMECALL                         R7 R0 K6 ["GetFullName"]
        3 CALL                             R7 1 1
        4 SETTABLEKS                       R7 R6 K0 ["fullName"]
        6 SETTABLEKS                       R2 R6 K1 ["contentId"]
        8 SETTABLEKS                       R1 R6 K2 ["fieldName"]
       10 SETTABLEKS                       R4 R6 K3 ["context"]
       12 SETTABLEKS                       R3 R6 K4 ["scale"]
       14 GETUPVAL                         R7 0
       15 MOVE                             R8 R0
       16 MOVE                             R9 R1
       17 MOVE                             R10 R5
       18 CALL                             R7 3 2
       19 JUMPIF                           R7 ; [+3]
       20 LOADB                            R9 0
       21 MOVE                             R10 R6
       22 RETURN                           R9 2
       23 SETTABLEKS                       R8 R6 K7 ["editableMesh"]
       25 LOADB                            R9 1
       26 MOVE                             R10 R6
       27 RETURN                           R9 2

PROTO_1:
        0 LOADK                            R5 K0 ["WrapTarget"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+11]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 LOADK                            R5 K2 ["CageMeshId"]
        8 GETTABLEKS                       R6 R0 K2 ["CageMeshId"]
       10 MOVE                             R7 R1
       11 GETTABLEKS                       R8 R0 K3 ["ClassName"]
       13 MOVE                             R9 R2
       14 CALL                             R3 6 -1
       15 RETURN                           R3 -1
       16 LOADK                            R5 K4 ["MeshPart"]
       17 NAMECALL                         R3 R0 K1 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+11]
       21 GETUPVAL                         R3 0
       22 MOVE                             R4 R0
       23 LOADK                            R5 K5 ["MeshId"]
       24 GETTABLEKS                       R6 R0 K5 ["MeshId"]
       26 MOVE                             R7 R1
       27 GETTABLEKS                       R8 R0 K6 ["Name"]
       29 MOVE                             R9 R2
       30 CALL                             R3 6 -1
       31 RETURN                           R3 -1
       32 LOADB                            R3 0
       33 RETURN                           R3 1

PROTO_2:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 GETUPVAL                         R6 0
        4 CALL                             R6 0 1
        5 JUMPIFNOT                        R6 ; [+13]
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R1
        8 GETUPVAL                         R10 2
        9 GETTABLEKS                       R9 R10 K0 ["MESH_CONTENT_TYPE"]
       11 GETTABLEKS                       R8 R9 K1 ["RENDER_MESH"]
       13 MOVE                             R9 R2
       14 CALL                             R6 3 3
       15 MOVE                             R3 R6
       16 MOVE                             R4 R7
       17 MOVE                             R5 R8
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R1
       21 MOVE                             R8 R0
       22 MOVE                             R9 R2
       23 CALL                             R6 3 2
       24 MOVE                             R3 R6
       25 MOVE                             R5 R7
       26 JUMPIF                           R3 ; [+12]
       27 LOADB                            R6 0
       28 GETUPVAL                         R8 0
       29 CALL                             R8 0 1
       30 JUMPIFNOT                        R8 ; [+2]
       31 MOVE                             R7 R4
       32 RETURN                           R6 2
       33 NEWTABLE                         R7 0 1
       35 LOADK                            R8 K2 ["Failed to load mesh data"]
       36 SETLIST                          R7 R8 1 [1]
       38 RETURN                           R6 2
       39 LOADK                            R8 K3 ["WrapTarget"]
       40 NAMECALL                         R6 R1 K4 ["FindFirstChildWhichIsA"]
       42 CALL                             R6 2 1
       43 LOADK                            R10 K5 ["Missing WrapTarget child for "]
       44 GETTABLEKS                       R11 R1 K6 ["Name"]
       46 CONCAT                           R9 R10 R11
       47 FASTCALL2                        ASSERT R6 R9 ; [+4]
       49 MOVE                             R8 R6
       50 GETIMPORT                        R7 K8 [assert]
       52 CALL                             R7 2 0
       53 LOADNIL                          R7
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 GETUPVAL                         R10 0
       57 CALL                             R10 0 1
       58 JUMPIFNOT                        R10 ; [+13]
       59 GETUPVAL                         R10 1
       60 MOVE                             R11 R6
       61 GETUPVAL                         R14 2
       62 GETTABLEKS                       R13 R14 K0 ["MESH_CONTENT_TYPE"]
       64 GETTABLEKS                       R12 R13 K9 ["OUTER_CAGE"]
       66 MOVE                             R13 R2
       67 CALL                             R10 3 3
       68 MOVE                             R7 R10
       69 MOVE                             R8 R11
       70 MOVE                             R9 R12
       71 JUMP                             ; [+7]
       72 GETUPVAL                         R10 3
       73 MOVE                             R11 R6
       74 MOVE                             R12 R0
       75 MOVE                             R13 R2
       76 CALL                             R10 3 2
       77 MOVE                             R7 R10
       78 MOVE                             R9 R11
       79 JUMPIF                           R7 ; [+12]
       80 LOADB                            R10 0
       81 GETUPVAL                         R12 0
       82 CALL                             R12 0 1
       83 JUMPIFNOT                        R12 ; [+2]
       84 MOVE                             R11 R8
       85 RETURN                           R10 2
       86 NEWTABLE                         R11 0 1
       88 LOADK                            R12 K2 ["Failed to load mesh data"]
       89 SETLIST                          R11 R12 1 [1]
       91 RETURN                           R10 2
       92 GETUPVAL                         R10 0
       93 CALL                             R10 0 1
       94 JUMPIFNOT                        R10 ; [+4]
       95 SETTABLEKS                       R0 R5 K10 ["scale"]
       97 SETTABLEKS                       R0 R9 K10 ["scale"]
       99 GETUPVAL                         R10 4
      100 MOVE                             R11 R5
      101 MOVE                             R12 R9
      102 GETUPVAL                         R14 2
      103 GETTABLEKS                       R13 R14 K11 ["RenderVsWrapMeshMaxDiff"]
      105 MOVE                             R14 R2
      106 CALL                             R10 4 -1
      107 RETURN                           R10 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       73 GETIMPORT                        R11 K4 [require]
       75 GETTABLEKS                       R13 R0 K17 ["flags"]
       77 GETTABLEKS                       R12 R13 K18 ["getFFlagUGCValidationConsolidateGetMeshInfos"]
       79 CALL                             R11 1 1
       80 DUPCLOSURE                       R12 K19 [PROTO_0]
       81 CAPTURE                          VAL R7
       82 DUPCLOSURE                       R13 K20 [PROTO_1]
       83 CAPTURE                          VAL R12
       84 DUPCLOSURE                       R14 K21 [PROTO_2]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R5
       90 DUPCLOSURE                       R15 K22 [PROTO_4]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R3
       95 DUPCLOSURE                       R16 K23 [PROTO_5]
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R3
      101 DUPCLOSURE                       R17 K24 [PROTO_6]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R10
      105 RETURN                           R17 1
