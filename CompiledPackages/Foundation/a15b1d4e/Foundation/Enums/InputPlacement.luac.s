MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Start", "End"}]
        2 LOADK                            R1 K0 ["Start"]
        3 SETTABLEKS                       R1 R0 K0 ["Start"]
        5 LOADK                            R1 K1 ["End"]
        6 SETTABLEKS                       R1 R0 K1 ["End"]
        8 RETURN                           R0 1
