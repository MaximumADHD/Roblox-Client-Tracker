MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Circle", "Ring", "Square"}]
        2 LOADK                            R1 K0 ["Circle"]
        3 SETTABLEKS                       R1 R0 K0 ["Circle"]
        5 LOADK                            R1 K1 ["Ring"]
        6 SETTABLEKS                       R1 R0 K1 ["Ring"]
        8 LOADK                            R1 K2 ["Square"]
        9 SETTABLEKS                       R1 R0 K2 ["Square"]
       11 RETURN                           R0 1
