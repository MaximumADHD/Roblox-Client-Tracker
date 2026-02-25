MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Dual", "Single"}]
        2 LOADK                            R1 K0 ["Dual"]
        3 SETTABLEKS                       R1 R0 K0 ["Dual"]
        5 LOADK                            R1 K1 ["Single"]
        6 SETTABLEKS                       R1 R0 K1 ["Single"]
        8 RETURN                           R0 1
