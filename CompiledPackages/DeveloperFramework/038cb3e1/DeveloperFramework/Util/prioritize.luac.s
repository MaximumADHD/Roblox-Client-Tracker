PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+2]
        2 RETURN                           R0 1
        3 JUMPIFEQKNIL                     R1 ; [+2]
        5 RETURN                           R1 1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
