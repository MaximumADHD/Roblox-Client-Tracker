MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Reducers"]
       22 GETTABLEKS                       R3 R3 K9 ["MaterialBrowserReducer"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["combineReducers"]
       27 DUPTABLE                         R4 K11 [{"MaterialBrowserReducer"}]
       28 SETTABLEKS                       R2 R4 K9 ["MaterialBrowserReducer"]
       30 CALL                             R3 1 1
       31 RETURN                           R3 1
