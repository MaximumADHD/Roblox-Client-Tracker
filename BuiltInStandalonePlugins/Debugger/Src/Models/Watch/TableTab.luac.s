MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Variables", "Watches"}]
        2 LOADK                            R1 K0 ["Variables"]
        3 SETTABLEKS                       R1 R0 K0 ["Variables"]
        5 LOADK                            R1 K1 ["Watches"]
        6 SETTABLEKS                       R1 R0 K1 ["Watches"]
        8 RETURN                           R0 1
