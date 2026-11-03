MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 -1
        4 SETTABLEKS                       R1 R0 K0 ["collaboratorSelection"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K1 ["default"]
        9 LOADN                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["packageOverrideStatus"]
       12 LOADN                            R1 2
       13 SETTABLEKS                       R1 R0 K3 ["liveSyncStatus"]
       15 LOADN                            R1 2
       16 SETTABLEKS                       R1 R0 K4 ["instanceFileSyncStatus"]
       18 LOADN                            R1 3
       19 SETTABLEKS                       R1 R0 K5 ["packageStatus"]
       21 RETURN                           R0 1
