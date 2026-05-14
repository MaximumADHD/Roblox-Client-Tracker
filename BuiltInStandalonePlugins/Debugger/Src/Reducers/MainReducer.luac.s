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
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K7 ["Breakpoint"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K2 ["Parent"]
       31 GETTABLEKS                       R4 R4 K8 ["Callstack"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K2 ["Parent"]
       40 GETTABLEKS                       R5 R5 K9 ["Common"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K2 ["Parent"]
       49 GETTABLEKS                       R6 R6 K10 ["Watch"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETIMPORT                        R7 K1 [script]
       56 GETTABLEKS                       R7 R7 K2 ["Parent"]
       58 GETTABLEKS                       R7 R7 K11 ["ScriptInfo"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R1 K12 ["combineReducers"]
       63 DUPTABLE                         R8 K13 [{"Breakpoint", "Watch", "Callstack", "Common", "ScriptInfo"}]
       64 SETTABLEKS                       R2 R8 K7 ["Breakpoint"]
       66 SETTABLEKS                       R5 R8 K10 ["Watch"]
       68 SETTABLEKS                       R3 R8 K8 ["Callstack"]
       70 SETTABLEKS                       R4 R8 K9 ["Common"]
       72 SETTABLEKS                       R6 R8 K11 ["ScriptInfo"]
       74 CALL                             R7 1 -1
       75 RETURN                           R7 -1
