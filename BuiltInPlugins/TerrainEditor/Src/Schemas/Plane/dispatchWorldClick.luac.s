PROTO_0:
        0 LOADK                            R3 K0 ["Ready"]
        1 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
