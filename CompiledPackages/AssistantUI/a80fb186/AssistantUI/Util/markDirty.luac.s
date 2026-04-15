PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ephemeral"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["isDirty"]
        8 LOADB                            R1 1
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
