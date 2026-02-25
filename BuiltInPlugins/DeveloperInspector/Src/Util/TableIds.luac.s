MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"EVENTS", "COMPONENTS"}]
        2 LOADK                            R1 K3 ["profileEvents"]
        3 SETTABLEKS                       R1 R0 K0 ["EVENTS"]
        5 LOADK                            R1 K4 ["profileComponents"]
        6 SETTABLEKS                       R1 R0 K1 ["COMPONENTS"]
        8 RETURN                           R0 1
