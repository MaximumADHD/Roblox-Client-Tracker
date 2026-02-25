MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"NotStarted", "InProgress", "Completed"}]
        2 LOADK                            R1 K0 ["NotStarted"]
        3 SETTABLEKS                       R1 R0 K0 ["NotStarted"]
        5 LOADK                            R1 K1 ["InProgress"]
        6 SETTABLEKS                       R1 R0 K1 ["InProgress"]
        8 LOADK                            R1 K2 ["Completed"]
        9 SETTABLEKS                       R1 R0 K2 ["Completed"]
       11 RETURN                           R0 1
