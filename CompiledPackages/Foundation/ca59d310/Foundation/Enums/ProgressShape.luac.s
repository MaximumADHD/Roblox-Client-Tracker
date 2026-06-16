MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Circle", "Bar"}]
        2 LOADK                            R1 K0 ["Circle"]
        3 SETTABLEKS                       R1 R0 K0 ["Circle"]
        5 LOADK                            R1 K1 ["Bar"]
        6 SETTABLEKS                       R1 R0 K1 ["Bar"]
        8 RETURN                           R0 1
