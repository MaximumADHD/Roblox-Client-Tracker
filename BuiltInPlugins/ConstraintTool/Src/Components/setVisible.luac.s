PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["RopeConstraint"] ; [+5]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["Visible"]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R1 K2 ["RodConstraint"] ; [+5]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R0 K1 ["Visible"]
       11 RETURN                           R0 0
       12 JUMPIFNOTEQKS                    R1 K3 ["SpringConstraint"] ; [+4]
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R0 K1 ["Visible"]
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
