MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Padding", "ButtonWidth", "Height"}]
        2 LOADN                            R1 10
        3 SETTABLEKS                       R1 R0 K0 ["Padding"]
        5 LOADN                            R1 48
        6 SETTABLEKS                       R1 R0 K1 ["ButtonWidth"]
        8 LOADN                            R1 36
        9 SETTABLEKS                       R1 R0 K2 ["Height"]
       11 RETURN                           R0 1
