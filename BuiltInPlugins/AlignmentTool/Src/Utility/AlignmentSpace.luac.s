MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"World", "Local"}]
        2 LOADK                            R1 K0 ["World"]
        3 SETTABLEKS                       R1 R0 K0 ["World"]
        5 LOADK                            R1 K1 ["Local"]
        6 SETTABLEKS                       R1 R0 K1 ["Local"]
        8 RETURN                           R0 1
