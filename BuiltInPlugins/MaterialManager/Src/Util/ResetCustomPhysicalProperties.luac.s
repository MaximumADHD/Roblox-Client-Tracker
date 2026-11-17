PROTO_0:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["CustomPhysicalProperties"]
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
