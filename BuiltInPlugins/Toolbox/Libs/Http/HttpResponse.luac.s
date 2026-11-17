PROTO_0:
        0 DUPTABLE                         R5 K5 [{"responseTimeMs", "responseCode", "responseBody", "requestType", "url"}]
        1 SETTABLEKS                       R1 R5 K0 ["responseTimeMs"]
        3 SETTABLEKS                       R2 R5 K1 ["responseCode"]
        5 SETTABLEKS                       R0 R5 K2 ["responseBody"]
        7 SETTABLEKS                       R3 R5 K3 ["requestType"]
        9 SETTABLEKS                       R4 R5 K4 ["url"]
       11 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
