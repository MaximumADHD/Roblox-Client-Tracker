MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"NoPriority", "ImmediatePriority", "UserBlockingPriority", "NormalPriority", "LowPriority", "IdlePriority"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["NoPriority"]
        5 LOADN                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["ImmediatePriority"]
        8 LOADN                            R1 2
        9 SETTABLEKS                       R1 R0 K2 ["UserBlockingPriority"]
       11 LOADN                            R1 3
       12 SETTABLEKS                       R1 R0 K3 ["NormalPriority"]
       14 LOADN                            R1 4
       15 SETTABLEKS                       R1 R0 K4 ["LowPriority"]
       17 LOADN                            R1 5
       18 SETTABLEKS                       R1 R0 K5 ["IdlePriority"]
       20 RETURN                           R0 1
