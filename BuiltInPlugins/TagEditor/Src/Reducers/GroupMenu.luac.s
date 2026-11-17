PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["OpenGroupMenu"] ; [+4]
        4 GETTABLEKS                       R2 R1 K2 ["group"]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["type"]
        9 JUMPIFNOTEQKS                    R2 K3 ["OpenTagMenu"] ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R1 K0 ["type"]
       15 JUMPIFNOTEQKS                    R2 K4 ["MoveTagSelectionUpOrDown"] ; [+3]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
