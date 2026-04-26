MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"LabelWidth", "LoadingBarSize", "Size", "Spacing"}]
        2 LOADN                            R1 40
        3 SETTABLEKS                       R1 R0 K0 ["LabelWidth"]
        5 GETIMPORT                        R1 K7 [UDim2.new]
        7 LOADN                            R2 1
        8 LOADN                            R3 156
        9 LOADN                            R4 0
       10 LOADN                            R5 12
       11 CALL                             R1 4 1
       12 SETTABLEKS                       R1 R0 K1 ["LoadingBarSize"]
       14 GETIMPORT                        R1 K7 [UDim2.new]
       16 LOADN                            R2 1
       17 LOADN                            R3 0
       18 LOADN                            R4 0
       19 LOADN                            R5 32
       20 CALL                             R1 4 1
       21 SETTABLEKS                       R1 R0 K2 ["Size"]
       23 LOADN                            R1 10
       24 SETTABLEKS                       R1 R0 K3 ["Spacing"]
       26 RETURN                           R0 1
