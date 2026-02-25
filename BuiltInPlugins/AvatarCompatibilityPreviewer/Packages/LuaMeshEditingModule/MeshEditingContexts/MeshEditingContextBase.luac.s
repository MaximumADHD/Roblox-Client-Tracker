PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_meshPartLookup"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["_instanceLookup"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K4 ["_serializedMeshData"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K5 ["_seamData"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K6 ["new"]
       25 CALL                             R1 0 1
       26 SETTABLEKS                       R1 R0 K7 ["meshDataChanged"]
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K8 ["_segmentationMap"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K9 ["_symmetryMap"]
       34 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_instanceLookup"]
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R3
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 MOVE                             R10 R9
        7 LOADNIL                          R11
        8 LOADNIL                          R12
        9 FORGPREP                         R10
       10 GETTABLE                         R15 R4 R14
       11 JUMPIF                           R15 ; [+3]
       12 NEWTABLE                         R15 0 0
       14 SETTABLE                         R15 R4 R14
       15 GETTABLE                         R16 R4 R14
       16 FASTCALL2                        TABLE_INSERT R16 R8 ; [+4]
       18 MOVE                             R17 R8
       19 GETIMPORT                        R15 K2 [table.insert]
       21 CALL                             R15 2 0
       22 FORGLOOP                         R10 2 ; [-13]
       24 FORGLOOP                         R5 2 ; [-19]
       26 MOVE                             R5 R2
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLE                         R10 R4 R8
       31 JUMPIF                           R10 ; [+8]
       32 GETIMPORT                        R10 K4 [error]
       34 LOADK                            R12 K5 ["Vertex index: "]
       35 MOVE                             R13 R8
       36 LOADK                            R14 K6 [" is not a part of any triangle in mesh: "]
       37 MOVE                             R15 R1
       38 CONCAT                           R11 R12 R15
       39 CALL                             R10 1 0
       40 FORGLOOP                         R5 2 ; [-11]
       42 RETURN                           R4 1

PROTO_3:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R9 R7 K0 ["instance"]
       10 GETTABLEKS                       R8 R9 K1 ["Name"]
       12 GETTABLE                         R9 R2 R8
       13 JUMPIFEQKNIL                     R9 ; [+10]
       15 GETIMPORT                        R9 K3 [warn]
       17 GETIMPORT                        R10 K6 [string.format]
       19 LOADK                            R11 K7 ["Instance: %s shares a name with another Instance in MeshWrapperObjects, please make sure your instances are uniquely named."]
       20 MOVE                             R12 R8
       21 CALL                             R10 2 -1
       22 CALL                             R9 -1 0
       23 JUMP                             ; [+49]
       24 GETTABLEKS                       R10 R7 K0 ["instance"]
       26 LOADK                            R12 K8 ["MeshPart"]
       27 NAMECALL                         R10 R10 K9 ["IsA"]
       29 CALL                             R10 2 1
       30 JUMPIFNOT                        R10 ; [+3]
       31 GETTABLEKS                       R9 R7 K0 ["instance"]
       33 JUMP                             ; [+6]
       34 GETTABLEKS                       R9 R7 K0 ["instance"]
       36 LOADK                            R11 K8 ["MeshPart"]
       37 NAMECALL                         R9 R9 K10 ["FindFirstAncestorOfClass"]
       39 CALL                             R9 2 1
       40 NAMECALL                         R10 R7 K11 ["getVertices"]
       42 CALL                             R10 1 1
       43 NAMECALL                         R11 R7 K12 ["getMeshOrigin"]
       45 CALL                             R11 1 1
       46 NAMECALL                         R12 R7 K13 ["getTriangleIndexData"]
       48 CALL                             R12 1 1
       49 MOVE                             R15 R8
       50 MOVE                             R16 R10
       51 MOVE                             R17 R12
       52 NAMECALL                         R13 R0 K14 ["_makeVertexTriangleIndexData"]
       54 CALL                             R13 4 1
       55 DUPTABLE                         R14 K19 [{"VertexData", "TriangleIndexData", "VertexTriangleIndexData", "MeshOrigin"}]
       56 SETTABLEKS                       R10 R14 K15 ["VertexData"]
       58 SETTABLEKS                       R12 R14 K16 ["TriangleIndexData"]
       60 SETTABLEKS                       R13 R14 K17 ["VertexTriangleIndexData"]
       62 SETTABLEKS                       R11 R14 K18 ["MeshOrigin"]
       64 GETTABLEKS                       R15 R0 K20 ["_instanceLookup"]
       66 GETTABLEKS                       R16 R7 K0 ["instance"]
       68 SETTABLE                         R16 R15 R8
       69 GETTABLEKS                       R15 R0 K21 ["_meshPartLookup"]
       71 SETTABLE                         R9 R15 R8
       72 SETTABLE                         R14 R2 R8
       73 FORGLOOP                         R3 2 ; [-66]
       75 GETIMPORT                        R3 K24 [table.freeze]
       77 MOVE                             R4 R2
       78 CALL                             R3 1 1
       79 SETTABLEKS                       R3 R0 K25 ["_serializedMeshData"]
       81 GETUPVAL                         R3 0
       82 MOVE                             R4 R0
       83 MOVE                             R5 R1
       84 CALL                             R3 2 1
       85 SETTABLEKS                       R3 R0 K26 ["_seamData"]
       87 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R8 R6 K0 ["instance"]
        6 GETTABLEKS                       R7 R8 K1 ["Name"]
        8 GETTABLEKS                       R9 R0 K2 ["_serializedMeshData"]
       10 GETTABLE                         R8 R9 R7
       11 JUMPIFNOT                        R8 ; [+5]
       12 NAMECALL                         R9 R6 K3 ["getMeshOrigin"]
       14 CALL                             R9 1 1
       15 SETTABLEKS                       R9 R8 K4 ["MeshOrigin"]
       17 FORGLOOP                         R2 2 ; [-14]
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_serializedMeshData"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_meshPartLookup"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_serializedMeshData"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R0 K0 ["_serializedMeshData"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K1 ["VertexData"]
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-4]
       18 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_serializedMeshData"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R0 K0 ["_serializedMeshData"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K1 ["TriangleIndexData"]
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-4]
       18 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_serializedMeshData"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R0 K0 ["_serializedMeshData"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R8 R6 K1 ["VertexTriangleIndexData"]
       16 CALL                             R7 1 1
       17 SETTABLE                         R7 R1 R5
       18 FORGLOOP                         R2 2 ; [-6]
       20 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_seamData"]
        2 RETURN                           R1 1

PROTO_11:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getMeshOrigin"]
        3 CALL                             R2 2 1
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R0 K1 ["getMeshPart"]
        7 CALL                             R3 2 1
        8 JUMPIFEQKNIL                     R2 ; [+3]
       10 JUMPIFNOTEQKNIL                  R3 ; [+3]
       12 LOADNIL                          R4
       13 RETURN                           R4 1
       14 GETTABLEKS                       R4 R3 K2 ["CFrame"]
       16 MOVE                             R6 R2
       17 NAMECALL                         R4 R4 K3 ["ToWorldSpace"]
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1

PROTO_12:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getMeshData"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R2 K1 ["MeshOrigin"]
        9 RETURN                           R3 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_serializedMeshData"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETTABLEKS                       R3 R0 K0 ["_serializedMeshData"]
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_serializedMeshData"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 MOVE                             R10 R6
       12 NAMECALL                         R8 R0 K1 ["getMeshOriginWorld"]
       14 CALL                             R8 2 1
       15 JUMPIFEQKNIL                     R8 ; [+57]
       17 GETTABLEKS                       R10 R0 K2 ["_seamData"]
       19 GETTABLE                         R9 R10 R6
       20 JUMPIFNOT                        R9 ; [+52]
       21 MOVE                             R10 R7
       22 LOADNIL                          R11
       23 LOADNIL                          R12
       24 FORGPREP                         R10
       25 GETTABLE                         R15 R9 R13
       26 JUMPIFNOT                        R15 ; [+44]
       27 MOVE                             R16 R15
       28 LOADNIL                          R17
       29 LOADNIL                          R18
       30 FORGPREP                         R16
       31 GETTABLEKS                       R22 R20 K3 ["MeshName"]
       33 GETTABLE                         R21 R2 R22
       34 JUMPIF                           R21 ; [+6]
       35 GETTABLEKS                       R21 R20 K3 ["MeshName"]
       37 NEWTABLE                         R22 0 0
       39 SETTABLE                         R22 R2 R21
       40 JUMP                             ; [+7]
       41 GETTABLEKS                       R23 R20 K3 ["MeshName"]
       43 GETTABLE                         R22 R2 R23
       44 GETTABLEKS                       R23 R20 K4 ["Index"]
       46 GETTABLE                         R21 R22 R23
       47 JUMPIF                           R21 ; [+21]
       48 GETTABLEKS                       R23 R20 K3 ["MeshName"]
       50 NAMECALL                         R21 R0 K1 ["getMeshOriginWorld"]
       52 CALL                             R21 2 1
       53 JUMPIFEQKNIL                     R21 ; [+15]
       55 MOVE                             R24 R14
       56 NAMECALL                         R22 R8 K5 ["PointToWorldSpace"]
       58 CALL                             R22 2 1
       59 MOVE                             R25 R22
       60 NAMECALL                         R23 R21 K6 ["PointToObjectSpace"]
       62 CALL                             R23 2 1
       63 GETTABLEKS                       R25 R20 K3 ["MeshName"]
       65 GETTABLE                         R24 R2 R25
       66 GETTABLEKS                       R25 R20 K4 ["Index"]
       68 SETTABLE                         R23 R24 R25
       69 FORGLOOP                         R16 2 ; [-39]
       71 FORGLOOP                         R10 2 ; [-47]
       73 FORGLOOP                         R3 2 ; [-63]
       75 NEWTABLE                         R3 0 0
       77 MOVE                             R4 R2
       78 LOADNIL                          R5
       79 LOADNIL                          R6
       80 FORGPREP                         R4
       81 GETTABLEKS                       R10 R0 K0 ["_serializedMeshData"]
       83 GETTABLE                         R9 R10 R7
       84 JUMPIFNOT                        R9 ; [+28]
       85 GETIMPORT                        R10 K9 [table.clone]
       87 GETTABLEKS                       R11 R9 K10 ["VertexData"]
       89 CALL                             R10 1 1
       90 MOVE                             R11 R8
       91 LOADNIL                          R12
       92 LOADNIL                          R13
       93 FORGPREP                         R11
       94 SETTABLE                         R15 R10 R14
       95 FORGLOOP                         R11 2 ; [-2]
       97 GETIMPORT                        R11 K12 [table.freeze]
       99 GETUPVAL                         R13 1
      100 GETTABLEKS                       R12 R13 K13 ["join"]
      102 MOVE                             R13 R9
      103 DUPTABLE                         R14 K14 [{"VertexData"}]
      104 GETIMPORT                        R15 K12 [table.freeze]
      106 MOVE                             R16 R10
      107 CALL                             R15 1 1
      108 SETTABLEKS                       R15 R14 K10 ["VertexData"]
      110 CALL                             R12 2 -1
      111 CALL                             R11 -1 1
      112 SETTABLE                         R11 R3 R7
      113 FORGLOOP                         R4 2 ; [-33]
      115 GETIMPORT                        R4 K12 [table.freeze]
      117 GETUPVAL                         R6 1
      118 GETTABLEKS                       R5 R6 K13 ["join"]
      120 GETTABLEKS                       R6 R0 K0 ["_serializedMeshData"]
      122 MOVE                             R7 R3
      123 CALL                             R5 2 -1
      124 CALL                             R4 -1 1
      125 SETTABLEKS                       R4 R0 K0 ["_serializedMeshData"]
      127 GETTABLEKS                       R4 R0 K15 ["meshDataChanged"]
      129 NAMECALL                         R4 R4 K16 ["Fire"]
      131 CALL                             R4 1 0
      132 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 1
        6 SETTABLEKS                       R2 R0 K3 ["_serializedMeshData"]
        8 GETTABLEKS                       R2 R0 K4 ["meshDataChanged"]
       10 NAMECALL                         R2 R2 K5 ["Fire"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["meshDataChanged"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_symmetryMap"]
        2 RETURN                           R1 1

PROTO_18:
        0 SETTABLEKS                       R1 R0 K0 ["_symmetryMap"]
        2 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_segmentationMap"]
        2 RETURN                           R1 1

PROTO_20:
        0 SETTABLEKS                       R1 R0 K0 ["_segmentationMap"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Util"]
       30 GETTABLEKS                       R5 R6 K11 ["buildSeamData"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K8 ["Util"]
       37 GETTABLEKS                       R6 R7 K12 ["deepCopy"]
       39 CALL                             R5 1 1
       40 NEWTABLE                         R6 32 0
       42 SETTABLEKS                       R6 R6 K13 ["__index"]
       44 DUPCLOSURE                       R7 K14 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R7 R6 K15 ["new"]
       49 DUPCLOSURE                       R7 K16 [PROTO_1]
       50 SETTABLEKS                       R7 R6 K17 ["getInstanceLookup"]
       52 DUPCLOSURE                       R7 K18 [PROTO_2]
       53 SETTABLEKS                       R7 R6 K19 ["_makeVertexTriangleIndexData"]
       55 DUPCLOSURE                       R7 K20 [PROTO_3]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R7 R6 K21 ["init"]
       59 DUPCLOSURE                       R7 K22 [PROTO_4]
       60 SETTABLEKS                       R7 R6 K23 ["updateCageOrigins"]
       62 DUPCLOSURE                       R7 K24 [PROTO_5]
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R7 R6 K25 ["getSerializedMeshDataDeepCopy"]
       66 DUPCLOSURE                       R7 K26 [PROTO_6]
       67 SETTABLEKS                       R7 R6 K27 ["getMeshPart"]
       69 DUPCLOSURE                       R7 K28 [PROTO_7]
       70 SETTABLEKS                       R7 R6 K29 ["getVertexData"]
       72 DUPCLOSURE                       R7 K30 [PROTO_8]
       73 SETTABLEKS                       R7 R6 K31 ["getTriangleIndexData"]
       75 DUPCLOSURE                       R7 K32 [PROTO_9]
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R7 R6 K33 ["getVertexTriangleIndexData"]
       79 DUPCLOSURE                       R7 K34 [PROTO_10]
       80 SETTABLEKS                       R7 R6 K35 ["getSeamData"]
       82 DUPCLOSURE                       R7 K36 [PROTO_11]
       83 SETTABLEKS                       R7 R6 K37 ["getMeshOriginWorld"]
       85 DUPCLOSURE                       R7 K38 [PROTO_12]
       86 SETTABLEKS                       R7 R6 K39 ["getMeshOrigin"]
       88 DUPCLOSURE                       R7 K40 [PROTO_13]
       89 SETTABLEKS                       R7 R6 K41 ["_getMeshData"]
       91 DUPCLOSURE                       R7 K42 [PROTO_14]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R7 R6 K43 ["updateVertexData"]
       96 DUPCLOSURE                       R7 K44 [PROTO_15]
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R7 R6 K45 ["setSerializedMeshData"]
      100 DUPCLOSURE                       R7 K46 [PROTO_16]
      101 SETTABLEKS                       R7 R6 K47 ["getMeshDataChangedSignal"]
      103 DUPCLOSURE                       R7 K48 [PROTO_17]
      104 SETTABLEKS                       R7 R6 K49 ["getSymmetryMap"]
      106 DUPCLOSURE                       R7 K50 [PROTO_18]
      107 SETTABLEKS                       R7 R6 K51 ["setSymmetryMap"]
      109 DUPCLOSURE                       R7 K52 [PROTO_19]
      110 SETTABLEKS                       R7 R6 K53 ["getSegmentationMap"]
      112 DUPCLOSURE                       R7 K54 [PROTO_20]
      113 SETTABLEKS                       R7 R6 K55 ["setSegmentationMap"]
      115 RETURN                           R6 1
