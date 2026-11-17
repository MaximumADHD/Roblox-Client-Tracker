PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["SetMinimizedSettingsPane"] ; [+4]
        4 GETTABLEKS                       R2 R1 K2 ["minimized"]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["type"]
        9 JUMPIFNOTEQKS                    R2 K3 ["SetAssigningGroup"] ; [+7]
       11 GETTABLEKS                       R2 R1 K4 ["group"]
       13 JUMPIFEQKNIL                     R2 ; [+3]
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
