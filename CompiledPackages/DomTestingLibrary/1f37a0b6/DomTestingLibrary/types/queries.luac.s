MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["LuauRegExp"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 0 0
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K2 ["Parent"]
       27 GETTABLEKS                       R5 R5 K7 ["matches"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K2 ["Parent"]
       36 GETTABLEKS                       R6 R7 K8 ["query-helpers"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K2 ["Parent"]
       45 GETTABLEKS                       R7 R8 K9 ["wait-for"]
       47 CALL                             R6 1 1
       48 RETURN                           R3 1
