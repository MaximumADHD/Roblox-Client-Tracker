MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Word", "Symbol"}]
        2 LOADK                            R1 K0 ["Word"]
        3 SETTABLEKS                       R1 R0 K0 ["Word"]
        5 LOADK                            R1 K1 ["Symbol"]
        6 SETTABLEKS                       R1 R0 K1 ["Symbol"]
        8 RETURN                           R0 1
