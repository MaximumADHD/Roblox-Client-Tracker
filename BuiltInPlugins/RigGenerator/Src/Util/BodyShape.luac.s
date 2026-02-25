MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Masculine", "Feminine"}]
        2 LOADK                            R1 K0 ["Masculine"]
        3 SETTABLEKS                       R1 R0 K0 ["Masculine"]
        5 LOADK                            R1 K1 ["Feminine"]
        6 SETTABLEKS                       R1 R0 K1 ["Feminine"]
        8 RETURN                           R0 1
