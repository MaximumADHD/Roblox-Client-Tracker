MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Standard", "Emphasis"}]
        2 LOADK                            R1 K0 ["Standard"]
        3 SETTABLEKS                       R1 R0 K0 ["Standard"]
        5 LOADK                            R1 K1 ["Emphasis"]
        6 SETTABLEKS                       R1 R0 K1 ["Emphasis"]
        8 RETURN                           R0 1
