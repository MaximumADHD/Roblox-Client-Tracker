MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"None", "Background", "Border"}]
        2 LOADK                            R1 K0 ["None"]
        3 SETTABLEKS                       R1 R0 K0 ["None"]
        5 LOADK                            R1 K1 ["Background"]
        6 SETTABLEKS                       R1 R0 K1 ["Background"]
        8 LOADK                            R1 K2 ["Border"]
        9 SETTABLEKS                       R1 R0 K2 ["Border"]
       11 RETURN                           R0 1
