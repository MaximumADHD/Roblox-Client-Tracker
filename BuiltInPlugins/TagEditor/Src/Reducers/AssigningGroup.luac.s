PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["SetAssigningGroup"] ; [+4]
        4 GETTABLEKS                       R2 R1 K2 ["group"]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["type"]
        9 JUMPIFEQKS                       R2 K3 ["SetTagData"] ; [+7]
       11 GETTABLEKS                       R2 R1 K0 ["type"]
       13 JUMPIFEQKS                       R2 K4 ["SetGroupData"] ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
