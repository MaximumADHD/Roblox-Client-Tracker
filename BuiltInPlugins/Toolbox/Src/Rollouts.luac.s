MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Util"]
       13 GETTABLEKS                       R2 R2 K7 ["getUserId"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Src"]
       20 GETTABLEKS                       R3 R3 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K8 ["isUserIdInGradualRollout"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 0 0
       27 RETURN                           R3 1
