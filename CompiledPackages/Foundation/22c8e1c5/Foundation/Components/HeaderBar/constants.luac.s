MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K12 [{"LEADING_ACTIONS_LAYOUT_ORDER", "LEADING_LAYOUT_ORDER", "CONTENT_LAYOUT_ORDER", "TRAILING_LAYOUT_ORDER", "TRAILING_ACTIONS_LAYOUT_ORDER"}]
       13 GETTABLEKS                       R3 R1 K13 ["MIN_LAYOUT_ORDER"]
       15 SETTABLEKS                       R3 R2 K7 ["LEADING_ACTIONS_LAYOUT_ORDER"]
       17 LOADN                            R3 1
       18 SETTABLEKS                       R3 R2 K8 ["LEADING_LAYOUT_ORDER"]
       20 LOADN                            R3 2
       21 SETTABLEKS                       R3 R2 K9 ["CONTENT_LAYOUT_ORDER"]
       23 LOADN                            R3 3
       24 SETTABLEKS                       R3 R2 K10 ["TRAILING_LAYOUT_ORDER"]
       26 GETTABLEKS                       R4 R1 K15 ["MAX_LAYOUT_ORDER"]
       28 SUBK                             R3 R4 K14 [1]
       29 SETTABLEKS                       R3 R2 K11 ["TRAILING_ACTIONS_LAYOUT_ORDER"]
       31 RETURN                           R2 1
