MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"ButtonWidth", "ButtonHeight", "ButtonSpacing", "ScreenSpacing"}]
        2 LOADN                            R1 64
        3 SETTABLEKS                       R1 R0 K0 ["ButtonWidth"]
        5 LOADN                            R1 24
        6 SETTABLEKS                       R1 R0 K1 ["ButtonHeight"]
        8 LOADN                            R1 20
        9 SETTABLEKS                       R1 R0 K2 ["ButtonSpacing"]
       11 LOADN                            R1 10
       12 SETTABLEKS                       R1 R0 K3 ["ScreenSpacing"]
       14 RETURN                           R0 1
