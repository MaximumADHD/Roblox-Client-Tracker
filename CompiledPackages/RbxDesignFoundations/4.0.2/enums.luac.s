MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = "Dark", ["Light"] = "Light"}]
        2 DUPTABLE                         R1 K5 [{["Default"] = "Default", ["Kids"] = "Kids"}]
        3 DUPTABLE                         R2 K8 [{"ColorMode", "Theme"}]
        4 SETTABLEKS                       R0 R2 K6 ["ColorMode"]
        6 SETTABLEKS                       R1 R2 K7 ["Theme"]
        8 RETURN                           R2 1
