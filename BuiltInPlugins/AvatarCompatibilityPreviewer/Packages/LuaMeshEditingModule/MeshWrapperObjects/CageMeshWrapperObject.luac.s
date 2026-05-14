PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getVerticesFromWrap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["instance"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFacesForWrap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["instance"]
        6 CALL                             R1 2 1
        7 NEWTABLE                         R2 0 0
        9 LOADN                            R5 1
       10 LENGTH                           R3 R1
       11 LOADN                            R4 3
       12 FORNPREP                         R3
       13 NEWTABLE                         R8 0 3
       15 GETTABLE                         R10 R1 R5
       16 ADDK                             R9 R10 K2 [1]
       17 ADDK                             R12 R5 K2 [1]
       18 GETTABLE                         R11 R1 R12
       19 ADDK                             R10 R11 K2 [1]
       20 ADDK                             R13 R5 K3 [2]
       21 GETTABLE                         R12 R1 R13
       22 ADDK                             R11 R12 K2 [1]
       23 SETLIST                          R8 R9 3 [1]
       25 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       27 MOVE                             R7 R2
       28 GETIMPORT                        R6 K6 [table.insert]
       30 CALL                             R6 2 0
       31 FORNLOOP                         R3
       32 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCageOrigin"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["instance"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R3 4 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R1 R2 K2 ["instance"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R2 K3 ["getVertices"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R3 R2 K4 ["getTriangleIndexData"]
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R2 K5 ["getMeshOrigin"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Util"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["WrapUtil"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 2 0
       16 SETTABLEKS                       R3 R3 K7 ["__index"]
       18 DUPCLOSURE                       R4 K8 [PROTO_3]
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R4 R3 K9 ["new"]
       23 RETURN                           R3 1
