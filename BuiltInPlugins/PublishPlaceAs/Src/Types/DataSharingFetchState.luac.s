MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"LOADING", "ERROR", "FINISHED"}]
        2 LOADN                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["LOADING"]
        5 LOADN                            R1 2
        6 SETTABLEKS                       R1 R0 K1 ["ERROR"]
        8 LOADN                            R1 3
        9 SETTABLEKS                       R1 R0 K2 ["FINISHED"]
       11 RETURN                           R0 1
