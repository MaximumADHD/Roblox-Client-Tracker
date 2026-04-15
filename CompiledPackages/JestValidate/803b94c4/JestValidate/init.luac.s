MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R3 K3 [script]
        7 GETTABLEKS                       R2 R3 K4 ["utils"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["ValidationError"]
       12 SETTABLEKS                       R2 R0 K5 ["ValidationError"]
       14 RETURN                           R0 1
