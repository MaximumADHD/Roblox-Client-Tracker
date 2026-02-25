PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["SetHoveredIcon"] ; [+4]
        4 GETTABLEKS                       R2 R1 K2 ["icon"]
        6 RETURN                           R2 1
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
