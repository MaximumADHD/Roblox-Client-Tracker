PROTO_0:
        0 DUPTABLE                         R0 K3 [{"version", "channel", "hash"}]
        1 LOADK                            R1 K4 ["2.3.0"]
        2 SETTABLEKS                       R1 R0 K0 ["version"]
        4 LOADK                            R1 K5 ["production"]
        5 SETTABLEKS                       R1 R0 K1 ["channel"]
        7 LOADK                            R1 K6 [""]
        8 SETTABLEKS                       R1 R0 K2 ["hash"]
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
