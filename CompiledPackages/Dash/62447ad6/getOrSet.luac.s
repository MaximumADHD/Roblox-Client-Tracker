PROTO_0:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFNOTEQKNIL                  R3 ; [+6]
        3 MOVE                             R3 R2
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 1
        7 SETTABLE                         R3 R0 R1
        8 GETTABLE                         R3 R0 R1
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
