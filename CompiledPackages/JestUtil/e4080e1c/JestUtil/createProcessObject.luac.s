PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"default"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["default"]
        5 RETURN                           R0 1
