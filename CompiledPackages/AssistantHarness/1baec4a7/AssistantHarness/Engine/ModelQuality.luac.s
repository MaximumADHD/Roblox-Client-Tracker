MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = "High", ["Low"] = "Low"}]
        2 DUPTABLE                         R1 K4 [{"ModelQuality"}]
        3 SETTABLEKS                       R0 R1 K3 ["ModelQuality"]
        5 RETURN                           R1 1
