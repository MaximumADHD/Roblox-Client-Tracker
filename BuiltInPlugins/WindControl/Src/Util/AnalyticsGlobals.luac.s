PROTO_0:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["textFieldCount"]
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["sliderCount"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["greenCircleCount"]
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["textFieldCount"]
        2 GETTABLEKS                       R4 R0 K1 ["sliderCount"]
        4 ADD                              R2 R3 R4
        5 GETTABLEKS                       R3 R0 K2 ["greenCircleCount"]
        7 ADD                              R1 R2 R3
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = 0, ["sliderCount"] = 0, ["greenCircleCount"] = 0}]
        2 DUPCLOSURE                       R1 K5 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K6 ["reset"]
        5 DUPCLOSURE                       R1 K7 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K8 ["totalCount"]
        8 RETURN                           R0 1
