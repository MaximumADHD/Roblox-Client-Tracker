MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"NoMode", "StrictMode", "BlockingMode", "ConcurrentMode", "ProfileMode", "DebugTracingMode"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["NoMode"]
        5 LOADN                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["StrictMode"]
        8 LOADN                            R1 2
        9 SETTABLEKS                       R1 R0 K2 ["BlockingMode"]
       11 LOADN                            R1 4
       12 SETTABLEKS                       R1 R0 K3 ["ConcurrentMode"]
       14 LOADN                            R1 8
       15 SETTABLEKS                       R1 R0 K4 ["ProfileMode"]
       17 LOADN                            R1 16
       18 SETTABLEKS                       R1 R0 K5 ["DebugTracingMode"]
       20 RETURN                           R0 1
