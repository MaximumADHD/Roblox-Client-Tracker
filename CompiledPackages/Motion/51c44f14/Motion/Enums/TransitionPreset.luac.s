MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Default", "Quick", "Slow"}]
        2 LOADK                            R1 K4 ["default"]
        3 SETTABLEKS                       R1 R0 K0 ["Default"]
        5 LOADK                            R1 K5 ["quick"]
        6 SETTABLEKS                       R1 R0 K1 ["Quick"]
        8 LOADK                            R1 K6 ["slow"]
        9 SETTABLEKS                       R1 R0 K2 ["Slow"]
       11 RETURN                           R0 1
