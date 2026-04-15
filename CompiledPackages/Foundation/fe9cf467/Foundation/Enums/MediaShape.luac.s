MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Circle", "Square", "Portrait", "Landscape"}]
        2 LOADK                            R1 K0 ["Circle"]
        3 SETTABLEKS                       R1 R0 K0 ["Circle"]
        5 LOADK                            R1 K1 ["Square"]
        6 SETTABLEKS                       R1 R0 K1 ["Square"]
        8 LOADK                            R1 K2 ["Portrait"]
        9 SETTABLEKS                       R1 R0 K2 ["Portrait"]
       11 LOADK                            R1 K3 ["Landscape"]
       12 SETTABLEKS                       R1 R0 K3 ["Landscape"]
       14 RETURN                           R0 1
