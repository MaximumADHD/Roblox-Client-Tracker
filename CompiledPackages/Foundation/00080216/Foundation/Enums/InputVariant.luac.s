MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Standard", "Contrast", "Utility"}]
        2 LOADK                            R1 K0 ["Standard"]
        3 SETTABLEKS                       R1 R0 K0 ["Standard"]
        5 LOADK                            R1 K1 ["Contrast"]
        6 SETTABLEKS                       R1 R0 K1 ["Contrast"]
        8 LOADK                            R1 K2 ["Utility"]
        9 SETTABLEKS                       R1 R0 K2 ["Utility"]
       11 RETURN                           R0 1
