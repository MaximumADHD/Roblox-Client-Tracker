MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Main", "Detail"}]
        2 LOADK                            R1 K0 ["Main"]
        3 SETTABLEKS                       R1 R0 K0 ["Main"]
        5 LOADK                            R1 K1 ["Detail"]
        6 SETTABLEKS                       R1 R0 K1 ["Detail"]
        8 RETURN                           R0 1
