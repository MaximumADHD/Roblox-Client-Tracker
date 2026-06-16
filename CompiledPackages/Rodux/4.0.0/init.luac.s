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
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["types"]
       56 GETTABLEKS                       R8 R8 K12 ["actions"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K1 [require]
       61 GETIMPORT                        R9 K3 [script]
       63 GETTABLEKS                       R9 R9 K11 ["types"]
       65 GETTABLEKS                       R9 R9 K13 ["reducers"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K1 [require]
       70 GETIMPORT                        R10 K3 [script]
       72 GETTABLEKS                       R10 R10 K11 ["types"]
       74 GETTABLEKS                       R10 R10 K14 ["store"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K1 [require]
       79 GETIMPORT                        R11 K3 [script]
       81 GETTABLEKS                       R11 R11 K11 ["types"]
       83 GETTABLEKS                       R11 R11 K15 ["thunks"]
       85 CALL                             R10 1 1
       86 DUPTABLE                         R11 K16 [{"Store", "createReducer", "combineReducers", "makeActionCreator", "loggerMiddleware", "thunkMiddleware", "makeThunkMiddleware"}]
       87 SETTABLEKS                       R0 R11 K4 ["Store"]
       89 SETTABLEKS                       R1 R11 K5 ["createReducer"]
       91 SETTABLEKS                       R2 R11 K6 ["combineReducers"]
       93 SETTABLEKS                       R3 R11 K7 ["makeActionCreator"]
       95 GETTABLEKS                       R12 R4 K17 ["middleware"]
       97 SETTABLEKS                       R12 R11 K8 ["loggerMiddleware"]
       99 SETTABLEKS                       R5 R11 K9 ["thunkMiddleware"]
      101 SETTABLEKS                       R6 R11 K10 ["makeThunkMiddleware"]
      103 RETURN                           R11 1
