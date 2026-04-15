MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 NEWTABLE                         R1 0 0
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["PrettyFormat"]
       15 CALL                             R2 1 1
       16 RETURN                           R1 1
