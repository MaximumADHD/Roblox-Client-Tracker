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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["map"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K7 [PROTO_1]
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
