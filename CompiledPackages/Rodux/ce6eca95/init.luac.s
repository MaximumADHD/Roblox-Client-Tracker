MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Store"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["createReducer"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["combineReducers"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["makeActionCreator"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["loggerMiddleware"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["thunkMiddleware"]
       42 CALL                             R5 1 1
       43 DUPTABLE                         R6 K10 [{"Store", "createReducer", "combineReducers", "makeActionCreator", "loggerMiddleware", "thunkMiddleware"}]
       44 SETTABLEKS                       R0 R6 K4 ["Store"]
       46 SETTABLEKS                       R1 R6 K5 ["createReducer"]
       48 SETTABLEKS                       R2 R6 K6 ["combineReducers"]
       50 SETTABLEKS                       R3 R6 K7 ["makeActionCreator"]
       52 GETTABLEKS                       R7 R4 K11 ["middleware"]
       54 SETTABLEKS                       R7 R6 K8 ["loggerMiddleware"]
       56 SETTABLEKS                       R5 R6 K9 ["thunkMiddleware"]
       58 RETURN                           R6 1
