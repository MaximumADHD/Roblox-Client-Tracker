MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K12 [{[1] = 90, ["aBackground2"] = 225, ["bForeground2"] = 23, ["bBackground2"] = 195, ["aForeground3"], ["aBackground3"], ["bForeground3"], ["bBackground3"]}]
        2 NEWTABLE                         R1 0 3
        4 LOADN                            R2 128
        5 LOADN                            R3 0
        6 LOADN                            R4 128
        7 SETLIST                          R1 R2 3 [1]
        9 SETTABLEKS                       R1 R0 K8 ["aForeground3"]
       11 NEWTABLE                         R1 0 3
       13 LOADN                            R2 255
       14 LOADN                            R3 215
       15 LOADN                            R4 255
       16 SETLIST                          R1 R2 3 [1]
       18 SETTABLEKS                       R1 R0 K9 ["aBackground3"]
       20 NEWTABLE                         R1 0 3
       22 LOADN                            R2 0
       23 LOADN                            R3 95
       24 LOADN                            R4 95
       25 SETLIST                          R1 R2 3 [1]
       27 SETTABLEKS                       R1 R0 K10 ["bForeground3"]
       29 NEWTABLE                         R1 0 3
       31 LOADN                            R2 215
       32 LOADN                            R3 255
       33 LOADN                            R4 255
       34 SETLIST                          R1 R2 3 [1]
       36 SETTABLEKS                       R1 R0 K11 ["bBackground3"]
       38 RETURN                           R0 1
