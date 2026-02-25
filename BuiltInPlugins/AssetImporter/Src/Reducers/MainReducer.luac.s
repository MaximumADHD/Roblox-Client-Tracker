MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R3 K9 ["Reducers"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["Preview"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R2 K11 ["Dialogs"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R2 K12 ["Sessions"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R1 K13 ["combineReducers"]
       35 DUPTABLE                         R7 K14 [{"Preview", "Dialogs", "Sessions"}]
       36 SETTABLEKS                       R3 R7 K10 ["Preview"]
       38 SETTABLEKS                       R4 R7 K11 ["Dialogs"]
       40 SETTABLEKS                       R5 R7 K12 ["Sessions"]
       42 CALL                             R6 1 1
       43 RETURN                           R6 1
