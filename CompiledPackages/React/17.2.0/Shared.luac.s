MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K3 ["_Index"]
       11 GETIMPORT                        R1 K5 [require]
       13 GETTABLEKS                       R3 R0 K7 ["Shared-31ab8d40-17.2.0"]
       15 GETTABLEKS                       R2 R3 K6 ["Shared"]
       17 CALL                             R1 1 1
       18 RETURN                           R1 1
