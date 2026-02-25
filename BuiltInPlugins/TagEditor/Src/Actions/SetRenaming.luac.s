PROTO_0:
        0 DUPTABLE                         R2 K3 [{"type", "tag", "renaming"}]
        1 LOADK                            R3 K4 ["SetRenaming"]
        2 SETTABLEKS                       R3 R2 K0 ["type"]
        4 SETTABLEKS                       R0 R2 K1 ["tag"]
        6 SETTABLEKS                       R1 R2 K2 ["renaming"]
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
