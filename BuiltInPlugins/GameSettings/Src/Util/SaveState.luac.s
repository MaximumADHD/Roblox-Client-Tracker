MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"Unsaved", "Pending", "Saving", "SaveFailed", "Saved"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["Unsaved"]
        5 LOADN                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Pending"]
        8 LOADN                            R1 2
        9 SETTABLEKS                       R1 R0 K2 ["Saving"]
       11 LOADN                            R1 3
       12 SETTABLEKS                       R1 R0 K3 ["SaveFailed"]
       14 LOADN                            R1 4
       15 SETTABLEKS                       R1 R0 K4 ["Saved"]
       17 RETURN                           R0 1
