PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R1 K0 ["type"]
        6 GETTABLE                         R2 R3 R4
        7 JUMPIFNOT                        R2 ; [+5]
        8 MOVE                             R3 R2
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 RETURN                           R0 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
