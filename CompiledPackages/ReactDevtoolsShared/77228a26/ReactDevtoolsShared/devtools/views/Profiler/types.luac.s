MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 0 0
       20 GETIMPORT                        R3 K4 [require]
       22 GETIMPORT                        R4 K1 [script]
       24 GETTABLEKS                       R4 R4 K2 ["Parent"]
       26 GETTABLEKS                       R4 R4 K2 ["Parent"]
       28 GETTABLEKS                       R4 R4 K2 ["Parent"]
       30 GETTABLEKS                       R4 R4 K2 ["Parent"]
       32 GETTABLEKS                       R4 R4 K6 ["types"]
       34 CALL                             R3 1 1
       35 RETURN                           R2 1
