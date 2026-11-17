MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K6 [{[1] = 0, ["Medium"] = 0.5, ["High"] = 0.95}]
        4 SETTABLEKS                       R1 R0 K7 ["Threshold"]
        6 RETURN                           R0 1
