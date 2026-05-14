MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Components"]
       15 GETTABLEKS                       R2 R2 K7 ["RoundElement"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 LOADB                            R3 0
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1
