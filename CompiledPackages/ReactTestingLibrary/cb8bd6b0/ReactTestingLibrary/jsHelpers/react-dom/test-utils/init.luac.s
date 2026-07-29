MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["ReactTestUtilsPublicAct"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R1 R1 K5 ["default"]
       12 SETTABLEKS                       R1 R0 K6 ["act"]
       14 RETURN                           R0 1
