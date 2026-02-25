MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K2 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["AudioReducer"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K8 ["combineReducers"]
       27 DUPTABLE                         R4 K10 [{"Audio"}]
       28 SETTABLEKS                       R2 R4 K9 ["Audio"]
       30 CALL                             R3 1 1
       31 RETURN                           R3 1
