MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Dark", "Light"}]
        2 LOADK                            R1 K0 ["Dark"]
        3 SETTABLEKS                       R1 R0 K0 ["Dark"]
        5 LOADK                            R1 K1 ["Light"]
        6 SETTABLEKS                       R1 R0 K1 ["Light"]
        8 RETURN                           R0 1
