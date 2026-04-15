MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["AuthCommon"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["Authorizer"]
       14 CALL                             R1 1 1
       15 DUPTABLE                         R2 K6 [{"AuthCommon", "Authorizer"}]
       16 SETTABLEKS                       R0 R2 K4 ["AuthCommon"]
       18 SETTABLEKS                       R1 R2 K5 ["Authorizer"]
       20 RETURN                           R2 1
