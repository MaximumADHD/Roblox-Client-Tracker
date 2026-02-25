MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R6 K3 [script]
        5 GETTABLEKS                       R5 R6 K4 ["Parent"]
        7 GETTABLEKS                       R4 R5 K4 ["Parent"]
        9 GETTABLEKS                       R3 R4 K4 ["Parent"]
       11 GETTABLEKS                       R2 R3 K4 ["Parent"]
       13 GETTABLEKS                       R1 R2 K5 ["Signal"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1
