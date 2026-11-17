PROTO_0:
        0 ADDK                             R2 R0 K1 [1]
        1 MODK                             R1 R2 K0 [10]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
