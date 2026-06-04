MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"aForeground2", "aBackground2", "bForeground2", "bBackground2", "aForeground3", "aBackground3", "bForeground3", "bBackground3"}]
        2 LOADN                            R1 90
        3 SETTABLEKS                       R1 R0 K0 ["aForeground2"]
        5 LOADN                            R1 225
        6 SETTABLEKS                       R1 R0 K1 ["aBackground2"]
        8 LOADN                            R1 23
        9 SETTABLEKS                       R1 R0 K2 ["bForeground2"]
       11 LOADN                            R1 195
       12 SETTABLEKS                       R1 R0 K3 ["bBackground2"]
       14 NEWTABLE                         R1 0 3
       16 LOADN                            R2 128
       17 LOADN                            R3 0
       18 LOADN                            R4 128
       19 SETLIST                          R1 R2 3 [1]
       21 SETTABLEKS                       R1 R0 K4 ["aForeground3"]
       23 NEWTABLE                         R1 0 3
       25 LOADN                            R2 255
       26 LOADN                            R3 215
       27 LOADN                            R4 255
       28 SETLIST                          R1 R2 3 [1]
       30 SETTABLEKS                       R1 R0 K5 ["aBackground3"]
       32 NEWTABLE                         R1 0 3
       34 LOADN                            R2 0
       35 LOADN                            R3 95
       36 LOADN                            R4 95
       37 SETLIST                          R1 R2 3 [1]
       39 SETTABLEKS                       R1 R0 K6 ["bForeground3"]
       41 NEWTABLE                         R1 0 3
       43 LOADN                            R2 215
       44 LOADN                            R3 255
       45 LOADN                            R4 255
       46 SETLIST                          R1 R2 3 [1]
       48 SETTABLEKS                       R1 R0 K7 ["bBackground3"]
       50 RETURN                           R0 1
