PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["GranularPermissions"]
        2 GETTABLEKS                       R2 R2 K1 ["PermissionsMap"]
        4 GETTABLE                         R4 R2 R1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["AvailableActionsKey"]
        8 GETTABLE                         R3 R4 R5
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
