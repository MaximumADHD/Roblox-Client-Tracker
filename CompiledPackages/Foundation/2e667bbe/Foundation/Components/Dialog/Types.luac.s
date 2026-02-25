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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["DialogSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R6 K10 ["OnCloseCallbackReason"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Constants"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["Types"]
       39 CALL                             R6 1 1
       40 DUPTABLE                         R7 K16 [{"nonSelectable", "isolatedSelectionGroup"}]
       41 GETTABLEKS                       R9 R5 K17 ["MODAL"]
       43 GETTABLEKS                       R8 R9 K18 ["DISABLE_SELECTION"]
       45 SETTABLEKS                       R8 R7 K14 ["nonSelectable"]
       47 GETTABLEKS                       R9 R5 K17 ["MODAL"]
       49 GETTABLEKS                       R8 R9 K19 ["TRAP_FOCUS"]
       51 SETTABLEKS                       R8 R7 K15 ["isolatedSelectionGroup"]
       53 RETURN                           R7 1
