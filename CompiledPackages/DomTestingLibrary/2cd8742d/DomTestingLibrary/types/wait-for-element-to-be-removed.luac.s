MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R6 K1 [script]
       20 GETTABLEKS                       R5 R6 K2 ["Parent"]
       22 GETTABLEKS                       R4 R5 K6 ["wait-for"]
       24 CALL                             R3 1 1
       25 RETURN                           R2 1
