PROTO_0:
        0 LOADK                            R0 K0 ["Asset"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Asset", "Standalone", "get"}]
        2 LOADK                            R1 K0 ["Asset"]
        3 SETTABLEKS                       R1 R0 K0 ["Asset"]
        5 LOADK                            R1 K1 ["Standalone"]
        6 SETTABLEKS                       R1 R0 K1 ["Standalone"]
        8 DUPCLOSURE                       R1 K4 [PROTO_0]
        9 SETTABLEKS                       R1 R0 K2 ["get"]
       11 RETURN                           R0 1
