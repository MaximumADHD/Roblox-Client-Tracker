PROTO_0:
        0 DUPTABLE                         R0 K4 [{[1] = -1, ["displayString"] = ""}]
        1 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"threadId", "displayString"}]
        1 GETTABLEKS                       R3 R0 K0 ["threadId"]
        3 ORK                              R2 R3 K3 [-1]
        4 SETTABLEKS                       R2 R1 K0 ["threadId"]
        6 GETTABLEKS                       R3 R0 K1 ["displayString"]
        8 ORK                              R2 R3 K4 [""]
        9 SETTABLEKS                       R2 R1 K1 ["displayString"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPTABLE                         R2 K4 [{"new", "fromData"}]
        4 SETTABLEKS                       R0 R2 K2 ["new"]
        6 SETTABLEKS                       R1 R2 K3 ["fromData"]
        8 RETURN                           R2 1
