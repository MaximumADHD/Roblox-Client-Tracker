MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["ReactGlobals"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["console"]
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R0 K8 ["consoleWithStackDev"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R2 K9 ["__DEV__"]
       26 JUMPIFNOT                        R6 ; [+18]
       27 DUPTABLE                         R7 K12 [{"warn", "error"}]
       28 GETTABLEKS                       R8 R5 K10 ["warn"]
       30 SETTABLEKS                       R8 R7 K10 ["warn"]
       32 GETTABLEKS                       R8 R5 K11 ["error"]
       34 SETTABLEKS                       R8 R7 K11 ["error"]
       36 DUPTABLE                         R8 K14 [{"__index"}]
       37 SETTABLEKS                       R4 R8 K13 ["__index"]
       39 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       41 GETIMPORT                        R6 K16 [setmetatable]
       43 CALL                             R6 2 1
       44 RETURN                           R6 1
       45 RETURN                           R4 1
