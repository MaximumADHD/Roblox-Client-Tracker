MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Components"]
       15 GETTABLEKS                       R2 R3 K7 ["RoundElement"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 LOADB                            R3 1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1
