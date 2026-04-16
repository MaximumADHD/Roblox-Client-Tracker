MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Horizontal", "Vertical"}]
        2 LOADK                            R1 K0 ["Horizontal"]
        3 SETTABLEKS                       R1 R0 K0 ["Horizontal"]
        5 LOADK                            R1 K1 ["Vertical"]
        6 SETTABLEKS                       R1 R0 K1 ["Vertical"]
        8 RETURN                           R0 1
