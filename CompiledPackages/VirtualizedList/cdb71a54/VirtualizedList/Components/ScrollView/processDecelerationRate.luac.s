PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["normal"] ; [+3]
        2 LOADK                            R1 K1 [0.985]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["fast"] ; [+3]
        6 LOADK                            R1 K3 [0.9]
        7 RETURN                           R1 1
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
