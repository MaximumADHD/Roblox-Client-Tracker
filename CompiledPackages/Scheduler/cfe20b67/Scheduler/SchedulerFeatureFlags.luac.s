MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"enableSchedulerDebugging", "enableIsInputPending", "enableProfiling"}]
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["enableSchedulerDebugging"]
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["enableIsInputPending"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["enableProfiling"]
       11 RETURN                           R0 1
