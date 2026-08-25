MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "server", ["Category"], ["Tier"]}]
        2 DUPTABLE                         R1 K13 [{["PHONE_TABLET"] = "phone_tablet", ["DESKTOP"] = "desktop", ["CONSOLE"] = "console", ["VR"] = "vr"}]
        3 SETTABLEKS                       R1 R0 K2 ["Category"]
        5 DUPTABLE                         R1 K20 [{["HIGH"] = "high", ["MID"] = "mid", ["LOW"] = "low"}]
        6 SETTABLEKS                       R1 R0 K3 ["Tier"]
        8 RETURN                           R0 1
