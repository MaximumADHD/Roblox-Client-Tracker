MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Padding", "ButtonSize", "IconSize"}]
        2 LOADN                            R1 2
        3 SETTABLEKS                       R1 R0 K0 ["Padding"]
        5 LOADN                            R1 32
        6 SETTABLEKS                       R1 R0 K1 ["ButtonSize"]
        8 LOADN                            R1 24
        9 SETTABLEKS                       R1 R0 K2 ["IconSize"]
       11 RETURN                           R0 1
