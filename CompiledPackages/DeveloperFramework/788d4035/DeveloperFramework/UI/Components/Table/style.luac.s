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
       16 DUPTABLE                         R2 K21 [{["Border"], ["ScrollHeaderPadding"], ["ListPadding"], ["RowHeight"] = 24, ["HeaderCellPadding"] = 5, ["HeaderHeight"] = 32, ["FooterHeight"] = 36, ["IconColor"]}]
       17 GETTABLEKS                       R3 R1 K9 ["Border"]
       19 SETTABLEKS                       R3 R2 K9 ["Border"]
       21 DUPTABLE                         R3 K24 [{["Right"] = 10}]
       22 SETTABLEKS                       R3 R2 K10 ["ScrollHeaderPadding"]
       24 DUPTABLE                         R3 K30 [{["Top"] = 1, ["Left"] = 0, ["Bottom"] = 0, ["Right"] = 0}]
       25 SETTABLEKS                       R3 R2 K11 ["ListPadding"]
       27 GETTABLEKS                       R3 R1 K31 ["Icon"]
       29 SETTABLEKS                       R3 R2 K20 ["IconColor"]
       31 RETURN                           R2 1
