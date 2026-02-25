MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Bottom", "Center", "Side"}]
        2 LOADK                            R1 K0 ["Bottom"]
        3 SETTABLEKS                       R1 R0 K0 ["Bottom"]
        5 LOADK                            R1 K1 ["Center"]
        6 SETTABLEKS                       R1 R0 K1 ["Center"]
        8 LOADK                            R1 K2 ["Side"]
        9 SETTABLEKS                       R1 R0 K2 ["Side"]
       11 RETURN                           R0 1
