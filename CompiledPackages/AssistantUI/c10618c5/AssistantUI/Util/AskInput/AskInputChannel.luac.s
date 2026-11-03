MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADK                            R1 K0 ["AskInput"]
        4 SETTABLEKS                       R1 R0 K1 ["Scope"]
        6 DUPTABLE                         R1 K6 [{["Values"] = "values", ["Submitted"] = "submitted"}]
        7 SETTABLEKS                       R1 R0 K7 ["Field"]
        9 RETURN                           R0 1
