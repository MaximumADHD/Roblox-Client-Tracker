PROTO_0:
        0 LOADK                            R0 K0 ["Standalone"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{[1] = "Asset", ["Standalone"] = "Standalone", ["get"]}]
        2 DUPCLOSURE                       R1 K4 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K2 ["get"]
        5 RETURN                           R0 1
