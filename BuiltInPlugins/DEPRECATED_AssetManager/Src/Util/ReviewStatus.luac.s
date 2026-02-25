MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Pending", "Finished", "DoesNotRequire"}]
        2 LOADK                            R1 K0 ["Pending"]
        3 SETTABLEKS                       R1 R0 K0 ["Pending"]
        5 LOADK                            R1 K1 ["Finished"]
        6 SETTABLEKS                       R1 R0 K1 ["Finished"]
        8 LOADK                            R1 K2 ["DoesNotRequire"]
        9 SETTABLEKS                       R1 R0 K2 ["DoesNotRequire"]
       11 RETURN                           R0 1
