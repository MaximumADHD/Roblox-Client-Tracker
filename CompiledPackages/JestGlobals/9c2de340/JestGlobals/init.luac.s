MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Expect"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETIMPORT                        R3 K1 [script]
       14 GETTABLEKS                       R3 R3 K6 ["index"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
