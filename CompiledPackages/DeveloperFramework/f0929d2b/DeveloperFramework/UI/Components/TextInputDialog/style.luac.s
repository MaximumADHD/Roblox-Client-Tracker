MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"TextSize", "Size", "Padding", "Spacing"}]
        2 LOADN                            R1 24
        3 SETTABLEKS                       R1 R0 K0 ["TextSize"]
        5 DUPTABLE                         R1 K7 [{"X", "Y"}]
        6 LOADN                            R2 244
        7 SETTABLEKS                       R2 R1 K5 ["X"]
        9 LOADN                            R2 44
       10 SETTABLEKS                       R2 R1 K6 ["Y"]
       12 SETTABLEKS                       R1 R0 K1 ["Size"]
       14 LOADN                            R1 30
       15 SETTABLEKS                       R1 R0 K2 ["Padding"]
       17 LOADN                            R1 20
       18 SETTABLEKS                       R1 R0 K3 ["Spacing"]
       20 RETURN                           R0 1
