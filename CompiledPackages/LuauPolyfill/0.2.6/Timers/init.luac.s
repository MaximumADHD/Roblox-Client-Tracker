MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["makeTimerImpl"]
        7 CALL                             R0 1 1
        8 MOVE                             R1 R0
        9 GETIMPORT                        R2 K6 [delay]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
