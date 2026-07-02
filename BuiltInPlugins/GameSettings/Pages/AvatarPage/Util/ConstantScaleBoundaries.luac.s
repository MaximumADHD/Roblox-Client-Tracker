MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K6 [{[1] = 0.9, ["max"] = 1.05, ["increment"] = 0.05}]
        4 SETTABLEKS                       R1 R0 K7 ["Height"]
        6 DUPTABLE                         R1 K10 [{[1] = 0.7, ["max"] = 1, ["increment"] = 0.05}]
        7 SETTABLEKS                       R1 R0 K11 ["Width"]
        9 DUPTABLE                         R1 K13 [{[1] = 0.95, ["max"] = 1, ["increment"] = 0.05}]
       10 SETTABLEKS                       R1 R0 K14 ["Head"]
       12 DUPTABLE                         R1 K17 [{[1] = 0, ["max"] = 0.3, ["increment"] = 0.05}]
       13 SETTABLEKS                       R1 R0 K18 ["BodyType"]
       15 DUPTABLE                         R1 K19 [{[1] = 0, ["max"] = 1, ["increment"] = 0.05}]
       16 SETTABLEKS                       R1 R0 K20 ["Proportion"]
       18 RETURN                           R0 1
