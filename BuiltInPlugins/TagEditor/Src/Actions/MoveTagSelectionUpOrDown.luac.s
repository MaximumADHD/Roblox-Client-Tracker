PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = "MoveTagSelectionUpOrDown", ["isDown"]}]
        1 SETTABLEKS                       R0 R1 K2 ["isDown"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
