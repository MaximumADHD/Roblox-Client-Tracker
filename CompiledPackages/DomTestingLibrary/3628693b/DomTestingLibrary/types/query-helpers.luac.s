MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K2 ["Parent"]
       22 GETTABLEKS                       R4 R4 K6 ["matches"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K2 ["Parent"]
       31 GETTABLEKS                       R5 R6 K7 ["wait-for"]
       33 CALL                             R4 1 1
       34 RETURN                           R2 1
