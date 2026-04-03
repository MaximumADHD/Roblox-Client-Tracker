MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R3 K3 [script]
        7 GETTABLEKS                       R2 R3 K4 ["fromInfoAndParts"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K4 ["fromInfoAndParts"]
       12 RETURN                           R0 1
