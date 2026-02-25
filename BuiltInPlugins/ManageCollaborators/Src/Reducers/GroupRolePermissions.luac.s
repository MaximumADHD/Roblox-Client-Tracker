PROTO_0:
        0 DUPTABLE                         R0 K1 [{"PermissionsByRole"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["PermissionsByRole"]
        5 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"PermissionsByRole"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["PermissionsByRole"]
        5 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"PermissionsByRole"}]
        7 GETTABLEKS                       R5 R1 K4 ["groupRolePermissions"]
        9 SETTABLEKS                       R5 R4 K2 ["PermissionsByRole"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R4 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetGroupRolePermissions"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K11 [PROTO_0]
       33 GETTABLEKS                       R6 R1 K12 ["createReducer"]
       35 DUPTABLE                         R7 K14 [{"PermissionsByRole"}]
       36 NEWTABLE                         R8 0 0
       38 SETTABLEKS                       R8 R7 K13 ["PermissionsByRole"]
       40 NEWTABLE                         R8 2 0
       42 DUPCLOSURE                       R9 K15 [PROTO_1]
       43 SETTABLEKS                       R9 R8 K16 ["ResetStore"]
       45 GETTABLEKS                       R9 R4 K17 ["name"]
       47 DUPCLOSURE                       R10 K18 [PROTO_2]
       48 CAPTURE                          VAL R2
       49 SETTABLE                         R10 R8 R9
       50 CALL                             R6 2 -1
       51 RETURN                           R6 -1
