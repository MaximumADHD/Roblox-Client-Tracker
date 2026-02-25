PROTO_0:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADK                            R2 K1 [""]
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 DUPCLOSURE                       R4 K2 [PROTO_0]
        8 CALL                             R2 2 1
        9 GETIMPORT                        R3 K5 [table.concat]
       11 MOVE                             R4 R2
       12 ORK                              R5 R1 K6 [","]
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["map"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
