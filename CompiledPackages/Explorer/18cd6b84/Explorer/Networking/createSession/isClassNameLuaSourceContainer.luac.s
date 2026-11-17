PROTO_0:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["ModuleScript"] ; [+11]
        3 LOADB                            R1 1
        4 JUMPIFEQKS                       R0 K1 ["Script"] ; [+8]
        6 LOADB                            R1 1
        7 JUMPIFEQKS                       R0 K2 ["LocalScript"] ; [+5]
        9 JUMPIFEQKS                       R0 K3 ["AuroraScript"] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
