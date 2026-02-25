MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Selection", "Active"}]
        2 LOADK                            R1 K0 ["Selection"]
        3 SETTABLEKS                       R1 R0 K0 ["Selection"]
        5 LOADK                            R1 K1 ["Active"]
        6 SETTABLEKS                       R1 R0 K1 ["Active"]
        8 RETURN                           R0 1
