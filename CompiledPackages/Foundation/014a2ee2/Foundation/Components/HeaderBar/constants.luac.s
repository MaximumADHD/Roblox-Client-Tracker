MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K15 [{["LEADING_ACTIONS_LAYOUT_ORDER"], ["LEADING_LAYOUT_ORDER"] = 1, ["CONTENT_LAYOUT_ORDER"] = 2, ["TRAILING_LAYOUT_ORDER"] = 3, ["TRAILING_ACTIONS_LAYOUT_ORDER"]}]
       13 GETTABLEKS                       R3 R1 K16 ["MIN_LAYOUT_ORDER"]
       15 SETTABLEKS                       R3 R2 K7 ["LEADING_ACTIONS_LAYOUT_ORDER"]
       17 GETTABLEKS                       R4 R1 K17 ["MAX_LAYOUT_ORDER"]
       19 SUBK                             R3 R4 K9 [1]
       20 SETTABLEKS                       R3 R2 K14 ["TRAILING_ACTIONS_LAYOUT_ORDER"]
       22 RETURN                           R2 1
