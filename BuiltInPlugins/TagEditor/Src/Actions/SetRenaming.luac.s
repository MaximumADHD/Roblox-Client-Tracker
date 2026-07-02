PROTO_0:
        0 DUPTABLE                         R2 K4 [{[1] = "SetRenaming", ["tag"], ["renaming"]}]
        1 SETTABLEKS                       R0 R2 K2 ["tag"]
        3 SETTABLEKS                       R1 R2 K3 ["renaming"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
