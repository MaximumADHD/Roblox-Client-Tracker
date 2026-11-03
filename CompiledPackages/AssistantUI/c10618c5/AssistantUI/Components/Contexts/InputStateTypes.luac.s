MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{[1] = "external", ["Generation"] = "generation", ["QuotaExceeded"] = "quota_exceeded", ["TooManyRequest"] = "too_many_request"}]
        2 DUPTABLE                         R1 K13 [{["Loading"] = "loading", ["Error"] = "error"}]
        3 DUPTABLE                         R2 K16 [{"InputDisabledReasons", "InputIconTypes"}]
        4 SETTABLEKS                       R0 R2 K14 ["InputDisabledReasons"]
        6 SETTABLEKS                       R1 R2 K15 ["InputIconTypes"]
        8 RETURN                           R2 1
