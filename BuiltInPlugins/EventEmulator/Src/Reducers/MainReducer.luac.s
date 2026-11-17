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
       22 GETTABLEKS                       R3 R3 K9 ["Status"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Reducers"]
       31 GETTABLEKS                       R4 R4 K10 ["History"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["combineReducers"]
       36 DUPTABLE                         R5 K12 [{"Status", "History"}]
       37 SETTABLEKS                       R2 R5 K9 ["Status"]
       39 SETTABLEKS                       R3 R5 K10 ["History"]
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1
