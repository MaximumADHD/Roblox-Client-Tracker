PROTO_0:
        0 JUMPIFNOT                        R1 ; [+2]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 0
        3 LOADN                            R2 0
        4 RETURN                           R2 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 MOVE                             R3 R0
        3 MOVE                             R4 R2
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Signals"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 RETURN                           R2 1
