PROTO_0:
        0 DUPTABLE                         R4 K4 [{"responseTimeMs", "responseCode", "responseBody", "requestOptions"}]
        1 SETTABLEKS                       R1 R4 K0 ["responseTimeMs"]
        3 SETTABLEKS                       R2 R4 K1 ["responseCode"]
        5 SETTABLEKS                       R0 R4 K2 ["responseBody"]
        7 SETTABLEKS                       R3 R4 K3 ["requestOptions"]
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
