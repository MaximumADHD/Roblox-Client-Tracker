PROTO_0:
        0 MOVE                             R2 R0
        1 LOADK                            R3 K0 [":edit"]
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
