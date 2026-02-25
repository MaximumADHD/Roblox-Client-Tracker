MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"CUSTOM", "INVERSE", "INVERSE_TAPERED", "LINEAR", "LINEAR_SQUARED"}]
        2 LOADK                            R1 K6 ["Custom"]
        3 SETTABLEKS                       R1 R0 K0 ["CUSTOM"]
        5 LOADK                            R1 K7 ["Inverse"]
        6 SETTABLEKS                       R1 R0 K1 ["INVERSE"]
        8 LOADK                            R1 K8 ["InverseTapered"]
        9 SETTABLEKS                       R1 R0 K2 ["INVERSE_TAPERED"]
       11 LOADK                            R1 K9 ["Linear"]
       12 SETTABLEKS                       R1 R0 K3 ["LINEAR"]
       14 LOADK                            R1 K10 ["LinearSquared"]
       15 SETTABLEKS                       R1 R0 K4 ["LINEAR_SQUARED"]
       17 RETURN                           R0 1
