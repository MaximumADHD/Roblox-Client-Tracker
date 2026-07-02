MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K6 [{[1] = "users", ["Groups"] = "groups", ["Universe"] = "universe"}]
        4 SETTABLEKS                       R1 R0 K7 ["AccountType"]
        6 RETURN                           R0 1
