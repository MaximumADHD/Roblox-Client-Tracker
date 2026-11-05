MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["makeConsoleImpl"]
        7 CALL                             R0 1 1
        8 MOVE                             R1 R0
        9 CALL                             R1 0 -1
       10 RETURN                           R1 -1
