MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPTABLE                         R1 K6 [{[1] = "PropertiesGuestConnect", ["disconnect"] = "PropertiesGuestDisconnect", ["message"] = "PropertiesGuestMessage"}]
        4 SETTABLEKS                       R1 R0 K7 ["fromGuest"]
        6 DUPTABLE                         R1 K13 [{["starting"] = "PropertiesHostStarting", ["message"] = "PropertiesHostMessage", ["itemStarted"] = "PropertiesHostStarted"}]
        7 SETTABLEKS                       R1 R0 K14 ["fromHost"]
        9 RETURN                           R0 1
