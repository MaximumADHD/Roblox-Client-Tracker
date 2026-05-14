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
       16 GETIMPORT                        R2 K1 [script]
       18 GETTABLEKS                       R2 R2 K2 ["Parent"]
       20 GETTABLEKS                       R3 R1 K7 ["combineReducers"]
       22 DUPTABLE                         R4 K11 [{"selectedIndex", "searchTerm", "events"}]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R2 K12 ["SelectedIndexReducer"]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R4 K8 ["selectedIndex"]
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R2 K13 ["SearchTermReducer"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K9 ["searchTerm"]
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R2 K14 ["EventsReducer"]
       41 CALL                             R5 1 1
       42 SETTABLEKS                       R5 R4 K10 ["events"]
       44 CALL                             R3 1 1
       45 RETURN                           R3 1
