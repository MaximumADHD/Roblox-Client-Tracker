PROTO_0:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"get"}]
        3 SETTABLEKS                       R0 R1 K1 ["get"]
        5 RETURN                           R1 1
