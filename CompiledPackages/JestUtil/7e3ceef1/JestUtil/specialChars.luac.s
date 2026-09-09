MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 [" › "]
        4 SETTABLEKS                       R1 R0 K1 ["ARROW"]
        6 DUPTABLE                         R1 K10 [{["failed"] = "✕", ["pending"] = "○", ["success"] = "✓", ["todo"] = "✎"}]
        7 SETTABLEKS                       R1 R0 K11 ["ICONS"]
        9 LOADK                            R2 K12 ["\x[2J\x[3J\x[H"]
       10 SETTABLEKS                       R2 R0 K13 ["CLEAR"]
       12 RETURN                           R0 1
