MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Emphasis", "Standard", "Utility"}]
        2 LOADK                            R1 K0 ["Emphasis"]
        3 SETTABLEKS                       R1 R0 K0 ["Emphasis"]
        5 LOADK                            R1 K1 ["Standard"]
        6 SETTABLEKS                       R1 R0 K1 ["Standard"]
        8 LOADK                            R1 K2 ["Utility"]
        9 SETTABLEKS                       R1 R0 K2 ["Utility"]
       11 RETURN                           R0 1
