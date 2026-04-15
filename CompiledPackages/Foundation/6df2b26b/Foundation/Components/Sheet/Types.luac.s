MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["DialogSize"]
       25 CALL                             R4 1 1
       26 DUPTABLE                         R5 K13 [{"nonSelectable", "isolatedSelectionGroup"}]
       27 GETTABLEKS                       R7 R3 K14 ["MODAL"]
       29 GETTABLEKS                       R6 R7 K15 ["DISABLE_SELECTION"]
       31 SETTABLEKS                       R6 R5 K11 ["nonSelectable"]
       33 GETTABLEKS                       R7 R3 K14 ["MODAL"]
       35 GETTABLEKS                       R6 R7 K16 ["TRAP_FOCUS"]
       37 SETTABLEKS                       R6 R5 K12 ["isolatedSelectionGroup"]
       39 RETURN                           R5 1
