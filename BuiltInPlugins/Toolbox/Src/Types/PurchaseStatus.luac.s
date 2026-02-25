MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"None", "Waiting", "Success", "Failed"}]
        2 LOADN                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["None"]
        5 LOADN                            R1 2
        6 SETTABLEKS                       R1 R0 K1 ["Waiting"]
        8 LOADN                            R1 3
        9 SETTABLEKS                       R1 R0 K2 ["Success"]
       11 LOADN                            R1 4
       12 SETTABLEKS                       R1 R0 K3 ["Failed"]
       14 RETURN                           R0 1
