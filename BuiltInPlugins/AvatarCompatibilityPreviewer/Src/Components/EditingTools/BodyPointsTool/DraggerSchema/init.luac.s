MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K6 ["Packages"]
       16 GETTABLEKS                       R2 R3 K8 ["DraggerSchemaTemplate"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K9 ["DraggerSchema"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R1 K10 ["join"]
       25 MOVE                             R5 R3
       26 DUPTABLE                         R6 K15 [{"dispatchWorldClick", "getMouseTarget", "FreeformDragger", "SelectionInfo"}]
       27 GETIMPORT                        R7 K5 [require]
       29 GETIMPORT                        R9 K1 [script]
       31 GETTABLEKS                       R8 R9 K11 ["dispatchWorldClick"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K11 ["dispatchWorldClick"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R8 R9 K12 ["getMouseTarget"]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K12 ["getMouseTarget"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETIMPORT                        R9 K1 [script]
       49 GETTABLEKS                       R8 R9 K13 ["FreeformDragger"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K13 ["FreeformDragger"]
       54 GETIMPORT                        R7 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R8 R9 K14 ["SelectionInfo"]
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R7 R6 K14 ["SelectionInfo"]
       63 CALL                             R4 2 -1
       64 RETURN                           R4 -1
