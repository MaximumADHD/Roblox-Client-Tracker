PROTO_0:
        0 DUPTABLE                         R1 K1 [{"debuggerConnectionId"}]
        1 GETTABLEKS                       R2 R0 K0 ["debuggerConnectionId"]
        3 SETTABLEKS                       R2 R1 K0 ["debuggerConnectionId"]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"fromData"}]
        3 SETTABLEKS                       R0 R1 K1 ["fromData"]
        5 RETURN                           R1 1
