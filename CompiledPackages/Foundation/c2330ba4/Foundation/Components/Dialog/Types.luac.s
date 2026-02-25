MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["DialogSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["OnCloseCallbackReason"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Constants"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K12 [{"nonSelectable", "isolatedSelectionGroup"}]
       27 GETTABLEKS                       R6 R3 K13 ["MODAL"]
       29 GETTABLEKS                       R5 R6 K14 ["DISABLE_SELECTION"]
       31 SETTABLEKS                       R5 R4 K10 ["nonSelectable"]
       33 GETTABLEKS                       R6 R3 K13 ["MODAL"]
       35 GETTABLEKS                       R5 R6 K15 ["TRAP_FOCUS"]
       37 SETTABLEKS                       R5 R4 K11 ["isolatedSelectionGroup"]
       39 RETURN                           R4 1
