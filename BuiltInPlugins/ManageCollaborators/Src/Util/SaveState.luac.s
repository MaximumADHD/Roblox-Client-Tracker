MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Unsaved", "Saving", "SaveFailed", "Saved"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["Unsaved"]
        5 LOADN                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Saving"]
        8 LOADN                            R1 2
        9 SETTABLEKS                       R1 R0 K2 ["SaveFailed"]
       11 LOADN                            R1 3
       12 SETTABLEKS                       R1 R0 K3 ["Saved"]
       14 RETURN                           R0 1
