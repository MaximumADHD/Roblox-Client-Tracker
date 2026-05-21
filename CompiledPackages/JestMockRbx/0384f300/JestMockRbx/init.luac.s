MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["InstanceProxy"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R3 R0 K5 ["DataModelMocker"]
       12 CALL                             R2 1 1
       13 NEWTABLE                         R3 1 0
       15 SETTABLEKS                       R2 R3 K5 ["DataModelMocker"]
       17 RETURN                           R3 1
