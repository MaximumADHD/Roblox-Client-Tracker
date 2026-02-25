PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K2 ["setVertexToolBase"]
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_vertexToolBase"]
        2 NAMECALL                         R1 R1 K1 ["getSelected"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["_vertexToolBase"]
        2 GETTABLEKS                       R3 R1 K1 ["selectionChanged"]
        4 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        6 LOADK                            R4 K2 ["VertexToolBase must have a selectionChanged event"]
        7 GETIMPORT                        R2 K4 [assert]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R0 K5 ["SelectionChanged"]
       12 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["Set"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["Get"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["setVertexToolBase"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["GetActiveInstance"]
       21 RETURN                           R0 1
