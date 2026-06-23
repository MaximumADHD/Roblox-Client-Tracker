MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Constants"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["DialogSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 DUPTABLE                         R5 K13 [{"nonSelectable", "isolatedSelectionGroup"}]
       27 GETTABLEKS                       R6 R2 K14 ["MODAL"]
       29 GETTABLEKS                       R6 R6 K15 ["DISABLE_SELECTION"]
       31 SETTABLEKS                       R6 R5 K11 ["nonSelectable"]
       33 GETTABLEKS                       R6 R2 K14 ["MODAL"]
       35 GETTABLEKS                       R6 R6 K16 ["TRAP_FOCUS"]
       37 SETTABLEKS                       R6 R5 K12 ["isolatedSelectionGroup"]
       39 RETURN                           R5 1
