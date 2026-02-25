MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"TRAY_WIDTH", "TRAY_HEIGHT"}]
        2 LOADN                            R1 79
        3 SETTABLEKS                       R1 R0 K0 ["TRAY_WIDTH"]
        5 LOADN                            R1 144
        6 SETTABLEKS                       R1 R0 K1 ["TRAY_HEIGHT"]
        8 RETURN                           R0 1
