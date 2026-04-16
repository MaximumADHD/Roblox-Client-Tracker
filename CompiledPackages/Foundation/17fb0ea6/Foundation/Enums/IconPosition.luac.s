MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Left", "Right"}]
        2 LOADK                            R1 K0 ["Left"]
        3 SETTABLEKS                       R1 R0 K0 ["Left"]
        5 LOADK                            R1 K1 ["Right"]
        6 SETTABLEKS                       R1 R0 K1 ["Right"]
        8 RETURN                           R0 1
