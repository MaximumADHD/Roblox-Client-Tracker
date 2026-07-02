MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Style"]
       20 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       22 DUPTABLE                         R3 K20 [{["Border"], ["ScrollHeaderPadding"], ["RowHeight"] = 24, ["HeaderCellPadding"] = 5, ["HeaderHeight"] = 32, ["FooterHeight"] = 36, ["IconColor"]}]
       23 GETTABLEKS                       R4 R2 K9 ["Border"]
       25 SETTABLEKS                       R4 R3 K9 ["Border"]
       27 DUPTABLE                         R4 K23 [{["Right"] = 8}]
       28 SETTABLEKS                       R4 R3 K10 ["ScrollHeaderPadding"]
       30 GETTABLEKS                       R4 R2 K24 ["Icon"]
       32 SETTABLEKS                       R4 R3 K19 ["IconColor"]
       34 RETURN                           R3 1
