PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_markedSeamPoints"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["_markedSeamPoints"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["_markedSeamPoints"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["_markedSeamPoints"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+5]
        4 GETTABLEKS                       R3 R0 K0 ["_markedSeamPoints"]
        6 NEWTABLE                         R4 0 0
        8 SETTABLE                         R4 R3 R1
        9 GETTABLEKS                       R4 R0 K0 ["_markedSeamPoints"]
       11 GETTABLE                         R3 R4 R1
       12 LOADB                            R4 1
       13 SETTABLE                         R4 R3 R2
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLE                         R4 R3 R1
        1 JUMPIFNOT                        R4 ; [+2]
        2 GETTABLE                         R5 R3 R1
        3 GETTABLE                         R4 R5 R2
        4 JUMPIFNOT                        R4 ; [+13]
        5 MOVE                             R5 R4
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETTABLEKS                       R12 R9 K0 ["MeshName"]
       11 GETTABLEKS                       R13 R9 K1 ["Index"]
       13 NAMECALL                         R10 R0 K2 ["setIsVisited"]
       15 CALL                             R10 3 0
       16 FORGLOOP                         R5 2 ; [-8]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 NAMECALL                         R5 R0 K2 ["setIsVisited"]
       22 CALL                             R5 3 0
       23 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getVertexData"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getSeamData"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R3 R0 K2 ["getVertexTriangleIndexData"]
        8 CALL                             R3 1 1
        9 NAMECALL                         R4 R0 K3 ["getTriangleIndexData"]
       11 CALL                             R4 1 1
       12 DUPTABLE                         R5 K10 [{"Positions", "Edges", "VertexData", "SeamData", "VertexTriangleIndexData", "TriangleIndexData"}]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K4 ["Positions"]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K5 ["Edges"]
       21 SETTABLEKS                       R1 R5 K6 ["VertexData"]
       23 SETTABLEKS                       R2 R5 K7 ["SeamData"]
       25 SETTABLEKS                       R3 R5 K8 ["VertexTriangleIndexData"]
       27 SETTABLEKS                       R4 R5 K9 ["TriangleIndexData"]
       29 NEWTABLE                         R6 0 0
       31 MOVE                             R7 R1
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       37 MOVE                             R13 R6
       38 MOVE                             R14 R10
       39 GETIMPORT                        R12 K13 [table.insert]
       41 CALL                             R12 2 0
       42 FORGLOOP                         R7 1 ; [-8]
       44 GETIMPORT                        R7 K15 [table.sort]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 0
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K16 ["new"]
       51 CALL                             R7 0 1
       52 MOVE                             R8 R6
       53 LOADNIL                          R9
       54 LOADNIL                          R10
       55 FORGPREP                         R8
       56 GETTABLE                         R13 R1 R12
       57 GETTABLEKS                       R14 R5 K4 ["Positions"]
       59 NEWTABLE                         R15 0 0
       61 SETTABLE                         R15 R14 R12
       62 MOVE                             R14 R13
       63 LOADNIL                          R15
       64 LOADNIL                          R16
       65 FORGPREP                         R14
       66 MOVE                             R21 R12
       67 MOVE                             R22 R17
       68 NAMECALL                         R19 R7 K17 ["isVisited"]
       70 CALL                             R19 3 1
       71 JUMPIF                           R19 ; [+10]
       72 MOVE                             R21 R12
       73 MOVE                             R22 R17
       74 MOVE                             R23 R2
       75 NAMECALL                         R19 R7 K18 ["visitPoint"]
       77 CALL                             R19 4 0
       78 GETTABLEKS                       R20 R5 K4 ["Positions"]
       80 GETTABLE                         R19 R20 R12
       81 SETTABLE                         R18 R19 R17
       82 FORGLOOP                         R14 2 ; [-17]
       84 FORGLOOP                         R8 2 ; [-29]
       86 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["MeshEditingContexts"]
       16 GETTABLEKS                       R3 R3 K8 ["MeshEditingContextBase"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 1 0
       21 NEWTABLE                         R4 8 0
       23 SETTABLEKS                       R4 R4 K9 ["__index"]
       25 DUPCLOSURE                       R5 K10 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 SETTABLEKS                       R5 R4 K11 ["new"]
       29 DUPCLOSURE                       R5 K12 [PROTO_1]
       30 SETTABLEKS                       R5 R4 K13 ["isVisited"]
       32 DUPCLOSURE                       R5 K14 [PROTO_2]
       33 SETTABLEKS                       R5 R4 K15 ["setIsVisited"]
       35 DUPCLOSURE                       R5 K16 [PROTO_3]
       36 SETTABLEKS                       R5 R4 K17 ["visitPoint"]
       38 DUPCLOSURE                       R5 K18 [PROTO_4]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R5 R3 K19 ["getDedupedPositionsFromContext"]
       42 RETURN                           R3 1
