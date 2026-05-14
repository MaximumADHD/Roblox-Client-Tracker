MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["named"]
       12 LOADK                            R2 K7 ["Portal"]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
