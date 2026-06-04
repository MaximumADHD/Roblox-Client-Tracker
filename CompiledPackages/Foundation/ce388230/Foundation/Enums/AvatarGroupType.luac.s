MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Stacked", "Spread"}]
        2 LOADK                            R1 K0 ["Stacked"]
        3 SETTABLEKS                       R1 R0 K0 ["Stacked"]
        5 LOADK                            R1 K1 ["Spread"]
        6 SETTABLEKS                       R1 R0 K1 ["Spread"]
        8 RETURN                           R0 1
