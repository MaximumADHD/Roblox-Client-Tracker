PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["SetRenaming"] ; [+9]
        4 GETTABLEKS                       R2 R1 K2 ["renaming"]
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETTABLEKS                       R2 R1 K3 ["tag"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R1 K0 ["type"]
       14 JUMPIFNOTEQKS                    R2 K4 ["SetRenamingGroup"] ; [+3]
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
