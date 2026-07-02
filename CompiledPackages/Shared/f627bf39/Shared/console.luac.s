MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["console"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["consoleWithStackDev"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K9 [_G]
       21 GETTABLEKS                       R5 R5 K10 ["__DEV__"]
       23 JUMPIFNOT                        R5 ; [+18]
       24 DUPTABLE                         R6 K13 [{"warn", "error"}]
       25 GETTABLEKS                       R7 R4 K11 ["warn"]
       27 SETTABLEKS                       R7 R6 K11 ["warn"]
       29 GETTABLEKS                       R7 R4 K12 ["error"]
       31 SETTABLEKS                       R7 R6 K12 ["error"]
       33 DUPTABLE                         R7 K15 [{"__index"}]
       34 SETTABLEKS                       R3 R7 K14 ["__index"]
       36 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       38 GETIMPORT                        R5 K17 [setmetatable]
       40 CALL                             R5 2 1
       41 RETURN                           R5 1
       42 RETURN                           R3 1
