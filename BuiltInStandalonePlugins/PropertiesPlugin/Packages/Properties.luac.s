MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K3 ["_Index"]
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Properties"]
       11 GETTABLEKS                       R2 R3 K6 ["Properties"]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
