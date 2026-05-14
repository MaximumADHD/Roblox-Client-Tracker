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
       22 DUPTABLE                         R3 K16 [{"Border", "ScrollHeaderPadding", "RowHeight", "HeaderCellPadding", "HeaderHeight", "FooterHeight", "IconColor"}]
       23 GETTABLEKS                       R4 R2 K9 ["Border"]
       25 SETTABLEKS                       R4 R3 K9 ["Border"]
       27 DUPTABLE                         R4 K18 [{"Right"}]
       28 LOADN                            R5 8
       29 SETTABLEKS                       R5 R4 K17 ["Right"]
       31 SETTABLEKS                       R4 R3 K10 ["ScrollHeaderPadding"]
       33 LOADN                            R4 24
       34 SETTABLEKS                       R4 R3 K11 ["RowHeight"]
       36 LOADN                            R4 5
       37 SETTABLEKS                       R4 R3 K12 ["HeaderCellPadding"]
       39 LOADN                            R4 32
       40 SETTABLEKS                       R4 R3 K13 ["HeaderHeight"]
       42 LOADN                            R4 36
       43 SETTABLEKS                       R4 R3 K14 ["FooterHeight"]
       45 GETTABLEKS                       R4 R2 K19 ["Icon"]
       47 SETTABLEKS                       R4 R3 K15 ["IconColor"]
       49 RETURN                           R3 1
