MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["utils"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K6 [{"ValidationError"}]
        9 GETTABLEKS                       R2 R0 K5 ["ValidationError"]
       11 SETTABLEKS                       R2 R1 K5 ["ValidationError"]
       13 RETURN                           R1 1
