MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["state"]
        9 GETTABLEKS                       R2 R2 K6 ["Signals"]
       11 CALL                             R1 1 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1
