PROTO_0:
        0 SUBRK                            R5 R0 K2 [NULL]
        1 MUL                              R4 R0 R5
        2 MUL                              R5 R1 R2
        3 ADD                              R3 R4 R5
        4 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
