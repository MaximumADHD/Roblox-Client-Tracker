MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Stacked", "Split", "None"}]
        2 LOADK                            R1 K0 ["Stacked"]
        3 SETTABLEKS                       R1 R0 K0 ["Stacked"]
        5 LOADK                            R1 K1 ["Split"]
        6 SETTABLEKS                       R1 R0 K1 ["Split"]
        8 LOADK                            R1 K2 ["None"]
        9 SETTABLEKS                       R1 R0 K2 ["None"]
       11 RETURN                           R0 1
