MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K17 [{"Border", "ScrollHeaderPadding", "ListPadding", "RowHeight", "HeaderCellPadding", "HeaderHeight", "FooterHeight", "IconColor"}]
       17 GETTABLEKS                       R3 R1 K9 ["Border"]
       19 SETTABLEKS                       R3 R2 K9 ["Border"]
       21 DUPTABLE                         R3 K19 [{"Right"}]
       22 LOADN                            R4 10
       23 SETTABLEKS                       R4 R3 K18 ["Right"]
       25 SETTABLEKS                       R3 R2 K10 ["ScrollHeaderPadding"]
       27 DUPTABLE                         R3 K23 [{"Top", "Left", "Bottom", "Right"}]
       28 LOADN                            R4 1
       29 SETTABLEKS                       R4 R3 K20 ["Top"]
       31 LOADN                            R4 0
       32 SETTABLEKS                       R4 R3 K21 ["Left"]
       34 LOADN                            R4 0
       35 SETTABLEKS                       R4 R3 K22 ["Bottom"]
       37 LOADN                            R4 0
       38 SETTABLEKS                       R4 R3 K18 ["Right"]
       40 SETTABLEKS                       R3 R2 K11 ["ListPadding"]
       42 LOADN                            R3 24
       43 SETTABLEKS                       R3 R2 K12 ["RowHeight"]
       45 LOADN                            R3 5
       46 SETTABLEKS                       R3 R2 K13 ["HeaderCellPadding"]
       48 LOADN                            R3 32
       49 SETTABLEKS                       R3 R2 K14 ["HeaderHeight"]
       51 LOADN                            R3 36
       52 SETTABLEKS                       R3 R2 K15 ["FooterHeight"]
       54 GETTABLEKS                       R3 R1 K24 ["Icon"]
       56 SETTABLEKS                       R3 R2 K16 ["IconColor"]
       58 RETURN                           R2 1
