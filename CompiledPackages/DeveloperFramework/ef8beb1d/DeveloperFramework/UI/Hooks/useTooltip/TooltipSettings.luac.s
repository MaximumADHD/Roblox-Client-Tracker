MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevFrameworkTooltipShowDelayMs"]
        4 LOADN                            R3 300
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K4 ["DevFrameworkTooltipHideDelayMs"]
       11 LOADN                            R4 300
       12 NAMECALL                         R1 R1 K3 ["DefineFastInt"]
       14 CALL                             R1 3 1
       15 DUPTABLE                         R2 K12 [{["showDelay"], ["hideDelay"], ["showCount"] = 0, ["hideCount"] = 0, ["disableAllTooltips"] = False}]
       16 DIVK                             R3 R0 K13 [1000]
       17 SETTABLEKS                       R3 R2 K5 ["showDelay"]
       19 DIVK                             R3 R1 K13 [1000]
       20 SETTABLEKS                       R3 R2 K6 ["hideDelay"]
       22 RETURN                           R2 1
