PROTO_0:
        0 GETTABLEN                        R3 R2 1
        1 LOADNIL                          R4
        2 LOADN                            R5 1
        3 RETURN                           R3 3

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
