MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Shared"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R9 K1 [script]
       27 GETTABLEKS                       R8 R9 K2 ["Parent"]
       29 GETTABLEKS                       R7 R8 K2 ["Parent"]
       31 GETTABLEKS                       R6 R7 K2 ["Parent"]
       33 GETTABLEKS                       R5 R6 K2 ["Parent"]
       35 GETTABLEKS                       R4 R5 K7 ["hydration"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETIMPORT                        R10 K1 [script]
       42 GETTABLEKS                       R9 R10 K2 ["Parent"]
       44 GETTABLEKS                       R8 R9 K2 ["Parent"]
       46 GETTABLEKS                       R7 R8 K2 ["Parent"]
       48 GETTABLEKS                       R6 R7 K2 ["Parent"]
       50 GETTABLEKS                       R5 R6 K8 ["types"]
       52 CALL                             R4 1 1
       53 NEWTABLE                         R5 0 0
       55 RETURN                           R5 1
