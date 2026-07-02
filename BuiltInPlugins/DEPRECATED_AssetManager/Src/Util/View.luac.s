MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"GRID", "LIST"}]
        2 DUPTABLE                         R1 K4 [{["Key"] = "GRID"}]
        3 SETTABLEKS                       R1 R0 K0 ["GRID"]
        5 DUPTABLE                         R1 K5 [{["Key"] = "LIST"}]
        6 SETTABLEKS                       R1 R0 K1 ["LIST"]
        8 RETURN                           R0 1
