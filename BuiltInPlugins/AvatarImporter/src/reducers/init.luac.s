MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["src"]
       18 GETTABLEKS                       R3 R3 K8 ["reducers"]
       20 GETTABLEKS                       R3 R3 K9 ["PluginReducer"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["src"]
       27 GETTABLEKS                       R4 R4 K8 ["reducers"]
       29 GETTABLEKS                       R4 R4 K10 ["ErrorReducer"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["combineReducers"]
       34 DUPTABLE                         R5 K14 [{"plugin", "error"}]
       35 SETTABLEKS                       R2 R5 K12 ["plugin"]
       37 SETTABLEKS                       R3 R5 K13 ["error"]
       39 CALL                             R4 1 -1
       40 RETURN                           R4 -1
