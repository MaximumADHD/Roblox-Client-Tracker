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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["map"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K7 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
