MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"MAX_POOL_SIZE", "THICKNESS", "TRANSPARENCY"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["MAX_POOL_SIZE"]
        5 LOADK                            R1 K4 [0.1]
        6 SETTABLEKS                       R1 R0 K1 ["THICKNESS"]
        8 LOADK                            R1 K5 [0.5]
        9 SETTABLEKS                       R1 R0 K2 ["TRANSPARENCY"]
       11 RETURN                           R0 1
