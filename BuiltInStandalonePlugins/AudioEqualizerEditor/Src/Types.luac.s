MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"NO_INSTANCE", "EQUALIZER", "FILTER"}]
        2 LOADK                            R1 K4 ["None"]
        3 SETTABLEKS                       R1 R0 K0 ["NO_INSTANCE"]
        5 LOADK                            R1 K5 ["AudioEqualizer"]
        6 SETTABLEKS                       R1 R0 K1 ["EQUALIZER"]
        8 LOADK                            R1 K6 ["AudioFilter"]
        9 SETTABLEKS                       R1 R0 K2 ["FILTER"]
       11 RETURN                           R0 1
