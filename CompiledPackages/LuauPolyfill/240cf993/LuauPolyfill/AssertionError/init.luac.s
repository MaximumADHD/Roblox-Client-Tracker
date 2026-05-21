MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K4 [script]
        5 GETTABLEKS                       R1 R2 K2 ["AssertionError.global"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K5 ["AssertionError"]
       10 RETURN                           R1 1
