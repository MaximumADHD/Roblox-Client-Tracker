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
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["makeThunkMiddleware"]
       49 CALL                             R6 1 1
       50 DUPTABLE                         R7 K11 [{"Store", "createReducer", "combineReducers", "makeActionCreator", "loggerMiddleware", "thunkMiddleware", "makeThunkMiddleware"}]
       51 SETTABLEKS                       R0 R7 K4 ["Store"]
       53 SETTABLEKS                       R1 R7 K5 ["createReducer"]
       55 SETTABLEKS                       R2 R7 K6 ["combineReducers"]
       57 SETTABLEKS                       R3 R7 K7 ["makeActionCreator"]
       59 GETTABLEKS                       R8 R4 K12 ["middleware"]
       61 SETTABLEKS                       R8 R7 K8 ["loggerMiddleware"]
       63 SETTABLEKS                       R5 R7 K9 ["thunkMiddleware"]
       65 SETTABLEKS                       R6 R7 K10 ["makeThunkMiddleware"]
       67 RETURN                           R7 1
