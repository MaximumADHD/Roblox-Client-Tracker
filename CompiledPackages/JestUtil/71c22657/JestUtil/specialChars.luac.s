MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 [" › "]
        4 SETTABLEKS                       R1 R0 K1 ["ARROW"]
        6 DUPTABLE                         R1 K6 [{"failed", "pending", "success", "todo"}]
        7 LOADK                            R2 K7 ["✕"]
        8 SETTABLEKS                       R2 R1 K2 ["failed"]
       10 LOADK                            R2 K8 ["○"]
       11 SETTABLEKS                       R2 R1 K3 ["pending"]
       13 LOADK                            R2 K9 ["✓"]
       14 SETTABLEKS                       R2 R1 K4 ["success"]
       16 LOADK                            R2 K10 ["✎"]
       17 SETTABLEKS                       R2 R1 K5 ["todo"]
       19 SETTABLEKS                       R1 R0 K11 ["ICONS"]
       21 LOADK                            R2 K12 ["\x[2J\x[3J\x[H"]
       22 SETTABLEKS                       R2 R0 K13 ["CLEAR"]
       24 RETURN                           R0 1
