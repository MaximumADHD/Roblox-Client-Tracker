PROTO_0:
        0 JUMPIFNOT                        R3 ; [+11]
        1 GETTABLEKS                       R4 R2 K0 ["isServer"]
        3 JUMPIFEQKNIL                     R4 ; [+8]
        5 GETTABLEKS                       R4 R2 K0 ["isServer"]
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETIMPORT                        R4 K2 [error]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["reportFailure"]
       15 MOVE                             R5 R1
       16 LOADNIL                          R6
       17 MOVE                             R7 R2
       18 CALL                             R4 3 0
       19 LOADB                            R4 0
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R0
       23 SETLIST                          R5 R6 1 [1]
       25 RETURN                           R4 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R1 K0 ["X"]
        5 LOADK                            R5 K1 [1E-05]
        6 CALL                             R2 3 1
        7 JUMPIFNOT                        R2 ; [+15]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K2 ["Y"]
       11 GETTABLEKS                       R4 R1 K2 ["Y"]
       13 LOADK                            R5 K1 [1E-05]
       14 CALL                             R2 3 1
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R3 R0 K3 ["Z"]
       19 GETTABLEKS                       R4 R1 K3 ["Z"]
       21 LOADK                            R5 K1 [1E-05]
       22 CALL                             R2 3 1
       23 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_3:
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
       22 JUMPIF                           R3 ; [+16]
       23 GETUPVAL                         R5 1
       24 GETIMPORT                        R6 K10 [string.format]
       26 LOADK                            R7 K11 ["Mesh for '%s' failed to load. Make sure the mesh exists and try again."]
       27 GETTABLEKS                       R8 R0 K7 ["Name"]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K12 ["ErrorType"]
       33 GETTABLEKS                       R7 R8 K13 ["validateMeshSizeProperty_FailedToLoadMesh"]
       35 MOVE                             R8 R1
       36 LOADB                            R9 0
       37 CALL                             R5 4 -1
       38 RETURN                           R5 -1
       39 SETTABLEKS                       R4 R2 K14 ["editableMesh"]
       41 GETUPVAL                         R5 3
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R2
       45 MOVE                             R7 R1
       46 CALL                             R5 2 2
       47 JUMPIF                           R5 ; [+16]
       48 GETUPVAL                         R7 1
       49 GETIMPORT                        R8 K10 [string.format]
       51 LOADK                            R9 K11 ["Mesh for '%s' failed to load. Make sure the mesh exists and try again."]
       52 GETTABLEKS                       R10 R0 K7 ["Name"]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R10 R11 K12 ["ErrorType"]
       58 GETTABLEKS                       R9 R10 K13 ["validateMeshSizeProperty_FailedToLoadMesh"]
       60 MOVE                             R10 R1
       61 LOADB                            R11 1
       62 CALL                             R7 4 -1
       63 RETURN                           R7 -1
       64 LOADB                            R7 1
       65 LOADNIL                          R8
       66 MOVE                             R9 R6
       67 RETURN                           R7 3

PROTO_4:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 3
        7 JUMPIFNOT                        R3 ; [+1]
        8 JUMPIF                           R5 ; [+1]
        9 RETURN                           R3 2
       10 GETTABLEKS                       R7 R0 K2 ["MeshSize"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R9 R7 K3 ["X"]
       15 GETTABLEKS                       R10 R5 K3 ["X"]
       17 LOADK                            R11 K4 [1E-05]
       18 CALL                             R8 3 1
       19 MOVE                             R6 R8
       20 JUMPIFNOT                        R6 ; [+17]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R9 R7 K5 ["Y"]
       24 GETTABLEKS                       R10 R5 K5 ["Y"]
       26 LOADK                            R11 K4 [1E-05]
       27 CALL                             R8 3 1
       28 MOVE                             R6 R8
       29 JUMPIFNOT                        R6 ; [+8]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R9 R7 K6 ["Z"]
       33 GETTABLEKS                       R10 R5 K6 ["Z"]
       35 LOADK                            R11 K4 [1E-05]
       36 CALL                             R8 3 1
       37 MOVE                             R6 R8
       38 JUMPIF                           R6 ; [+16]
       39 GETUPVAL                         R6 2
       40 GETIMPORT                        R7 K9 [string.format]
       42 LOADK                            R8 K10 ["Calculated mesh size for %s does not match MeshSize property value"]
       43 GETTABLEKS                       R9 R0 K11 ["Name"]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R9 R10 K12 ["ErrorType"]
       49 GETTABLEKS                       R8 R9 K13 ["validateMeshSizeProperty_Mismatch"]
       51 MOVE                             R9 R1
       52 LOADB                            R10 0
       53 CALL                             R6 4 -1
       54 RETURN                           R6 -1
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K14 ["recordScriptTime"]
       58 GETIMPORT                        R8 K16 [script]
       60 GETTABLEKS                       R7 R8 K11 ["Name"]
       62 MOVE                             R8 R2
       63 MOVE                             R9 R1
       64 CALL                             R6 3 0
       65 LOADB                            R6 1
       66 RETURN                           R6 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["allowEditableInstances"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_6:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["allowEditableInstances"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R1 K3 ["assetTypeEnum"]
       10 GETIMPORT                        R4 K7 [Enum.AssetType.DynamicHead]
       12 JUMPIFNOTEQ                      R4 R3 ; [+16]
       14 GETUPVAL                         R4 0
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 2
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K8 ["recordScriptTime"]
       21 GETIMPORT                        R8 K10 [script]
       23 GETTABLEKS                       R7 R8 K11 ["Name"]
       25 MOVE                             R8 R2
       26 MOVE                             R9 R1
       27 CALL                             R6 3 0
       28 RETURN                           R4 2
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K12 ["new"]
       32 CALL                             R4 0 1
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R6 R7 K13 ["ASSET_TYPE_INFO"]
       36 GETTABLE                         R5 R6 R3
       37 GETTABLEKS                       R6 R5 K14 ["subParts"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 MOVE                             R13 R9
       43 NAMECALL                         R11 R0 K15 ["FindFirstChild"]
       45 CALL                             R11 2 1
       46 FASTCALL1                        ASSERT R11 ; [+3]
       47 MOVE                             R13 R11
       48 GETIMPORT                        R12 K17 [assert]
       50 CALL                             R12 1 0
       51 GETUPVAL                         R14 0
       52 MOVE                             R15 R11
       53 MOVE                             R16 R1
       54 CALL                             R14 2 -1
       55 NAMECALL                         R12 R4 K18 ["updateReasons"]
       57 CALL                             R12 -1 0
       58 FORGLOOP                         R6 1 ; [-17]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R6 R7 K8 ["recordScriptTime"]
       63 GETIMPORT                        R8 K10 [script]
       65 GETTABLEKS                       R7 R8 K11 ["Name"]
       67 MOVE                             R8 R2
       68 MOVE                             R9 R1
       69 CALL                             R6 3 0
       70 NAMECALL                         R6 R4 K19 ["getFinalResults"]
       72 CALL                             R6 1 -1
       73 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Analytics"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R0 K7 ["util"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R6 R0 K7 ["util"]
       23 GETTABLEKS                       R5 R6 K8 ["floatEquals"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R3 K9 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R3 K10 ["pcallDeferred"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R3 K11 ["getMeshSize"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K4 [require]
       43 GETTABLEKS                       R9 R3 K12 ["getEditableMeshFromContext"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETTABLEKS                       R10 R3 K13 ["FailureReasonsAccumulator"]
       50 CALL                             R9 1 1
       51 NEWTABLE                         R10 2 0
       53 DUPCLOSURE                       R11 K14 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 DUPCLOSURE                       R12 K15 [PROTO_1]
       56 CAPTURE                          VAL R4
       57 DUPCLOSURE                       R13 K16 [PROTO_3]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R14 K17 [PROTO_4]
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R2
       68 DUPCLOSURE                       R15 K18 [PROTO_5]
       69 CAPTURE                          VAL R14
       70 SETTABLEKS                       R15 R10 K19 ["validateSingleMeshPart"]
       72 DUPCLOSURE                       R15 K20 [PROTO_6]
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R15 R10 K21 ["validateBodyAsset"]
       79 RETURN                           R10 1
