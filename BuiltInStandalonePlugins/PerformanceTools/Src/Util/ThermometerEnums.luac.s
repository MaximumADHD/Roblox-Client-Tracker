MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K3 [{"Low", "Medium", "High"}]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["Low"]
        7 LOADK                            R2 K4 [0.5]
        8 SETTABLEKS                       R2 R1 K1 ["Medium"]
       10 LOADK                            R2 K5 [0.95]
       11 SETTABLEKS                       R2 R1 K2 ["High"]
       13 SETTABLEKS                       R1 R0 K6 ["Threshold"]
       15 RETURN                           R0 1
