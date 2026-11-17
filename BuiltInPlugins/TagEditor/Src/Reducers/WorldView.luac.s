PROTO_0:
        0 ORK                              R0 R0 K0 [False]
        1 GETTABLEKS                       R2 R1 K1 ["type"]
        3 JUMPIFNOTEQKS                    R2 K2 ["ToggleWorldView"] ; [+4]
        5 GETTABLEKS                       R2 R1 K3 ["enabled"]
        7 RETURN                           R2 1
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
