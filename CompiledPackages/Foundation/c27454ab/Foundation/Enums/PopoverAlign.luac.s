MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Start", "Center", "End"}]
        2 LOADK                            R1 K0 ["Start"]
        3 SETTABLEKS                       R1 R0 K0 ["Start"]
        5 LOADK                            R1 K1 ["Center"]
        6 SETTABLEKS                       R1 R0 K1 ["Center"]
        8 LOADK                            R1 K2 ["End"]
        9 SETTABLEKS                       R1 R0 K2 ["End"]
       11 RETURN                           R0 1
