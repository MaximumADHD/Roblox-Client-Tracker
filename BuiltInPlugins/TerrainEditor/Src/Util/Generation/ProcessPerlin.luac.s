PROTO_0:
        0 MULK                             R2 R0 K0 [0.5]
        1 ADDK                             R1 R2 K0 [0.5]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
