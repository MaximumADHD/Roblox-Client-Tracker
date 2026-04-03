MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority", "NoPriority"}]
        2 LOADN                            R1 99
        3 SETTABLEKS                       R1 R0 K0 ["ImmediatePriority"]
        5 LOADN                            R1 98
        6 SETTABLEKS                       R1 R0 K1 ["UserBlockingPriority"]
        8 LOADN                            R1 97
        9 SETTABLEKS                       R1 R0 K2 ["NormalPriority"]
       11 LOADN                            R1 96
       12 SETTABLEKS                       R1 R0 K3 ["LowPriority"]
       14 LOADN                            R1 95
       15 SETTABLEKS                       R1 R0 K4 ["IdlePriority"]
       17 LOADN                            R1 90
       18 SETTABLEKS                       R1 R0 K5 ["NoPriority"]
       20 RETURN                           R0 1
