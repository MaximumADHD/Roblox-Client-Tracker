MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = False, ["enableIsInputPending"] = False, ["enableProfiling"]}]
        2 GETIMPORT                        R1 K6 [_G]
        4 GETTABLEKS                       R1 R1 K7 ["__PROFILE__"]
        6 SETTABLEKS                       R1 R0 K3 ["enableProfiling"]
        8 RETURN                           R0 1
