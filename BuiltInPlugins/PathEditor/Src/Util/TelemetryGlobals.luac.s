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
        1 DUPTABLE                         R0 K3 [{"selectModeCount", "addPointModeCount", "addTangentModeCount"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["selectModeCount"]
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["addPointModeCount"]
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["addTangentModeCount"]
       11 DUPCLOSURE                       R1 K4 [PROTO_0]
       12 SETTABLEKS                       R1 R0 K5 ["totalCount"]
       14 DUPCLOSURE                       R1 K6 [PROTO_1]
       15 SETTABLEKS                       R1 R0 K7 ["reset"]
       17 RETURN                           R0 1
