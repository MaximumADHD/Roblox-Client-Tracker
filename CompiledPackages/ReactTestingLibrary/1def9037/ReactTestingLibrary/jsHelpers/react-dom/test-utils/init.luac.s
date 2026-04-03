MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R2 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["ReactTestUtilsPublicAct"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R1 R2 K5 ["default"]
       12 SETTABLEKS                       R1 R0 K6 ["act"]
       14 RETURN                           R0 1
