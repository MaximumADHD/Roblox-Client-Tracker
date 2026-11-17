PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["selectModeCount"]
        2 GETTABLEKS                       R4 R0 K1 ["addPointModeCount"]
        4 ADD                              R2 R3 R4
        5 GETTABLEKS                       R3 R0 K2 ["addTangentModeCount"]
        7 ADD                              R1 R2 R3
        8 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["selectModeCount"]
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["addPointModeCount"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["addTangentModeCount"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = 0, ["addPointModeCount"] = 0, ["addTangentModeCount"] = 0}]
        2 DUPCLOSURE                       R1 K5 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K6 ["totalCount"]
        5 DUPCLOSURE                       R1 K7 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K8 ["reset"]
        8 RETURN                           R0 1
