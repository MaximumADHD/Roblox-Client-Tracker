MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K20 [{["Padding"] = 2, ["Spacing"] = 5, ["ButtonSize"] = 32, ["IconSize"] = 24, ["IconColor"], ["InputWidth"] = 38}]
       17 GETTABLEKS                       R3 R1 K21 ["Icon"]
       19 SETTABLEKS                       R3 R2 K17 ["IconColor"]
       21 RETURN                           R2 1
