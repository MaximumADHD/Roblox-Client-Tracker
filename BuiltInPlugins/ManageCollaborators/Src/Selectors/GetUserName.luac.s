PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R2 R3 K1 ["NewPermissions"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        7 GETTABLEKS                       R2 R3 K2 ["CurrentPermissions"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["UserSubjectKey"]
       12 GETTABLE                         R4 R2 R5
       13 GETTABLE                         R3 R4 R1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["SubjectNameKey"]
       17 GETTABLE                         R4 R3 R5
       18 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
