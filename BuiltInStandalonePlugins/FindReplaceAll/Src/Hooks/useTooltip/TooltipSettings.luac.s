MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"showDelay", "hideDelay", "showCount", "hideCount", "disableAllTooltips"}]
        2 LOADK                            R1 K6 [0.3]
        3 SETTABLEKS                       R1 R0 K0 ["showDelay"]
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["hideDelay"]
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["showCount"]
       11 LOADN                            R1 0
       12 SETTABLEKS                       R1 R0 K3 ["hideCount"]
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K4 ["disableAllTooltips"]
       17 RETURN                           R0 1
