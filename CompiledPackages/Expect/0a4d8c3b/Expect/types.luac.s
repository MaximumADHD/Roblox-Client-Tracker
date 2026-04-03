MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["RegExp"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 NEWTABLE                         R4 0 0
       19 RETURN                           R4 1
