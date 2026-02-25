PROTO_0:
        0 DUPTABLE                         R0 K3 [{"RoleIds", "PermissionsMap", "UpdatedPermissionValues"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["RoleIds"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["PermissionsMap"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["UpdatedPermissionValues"]
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"RoleIds", "PermissionsMap"}]
        7 GETTABLEKS                       R5 R1 K5 ["roleIds"]
        9 SETTABLEKS                       R5 R4 K2 ["RoleIds"]
       11 GETTABLEKS                       R5 R1 K6 ["permissionsMap"]
       13 SETTABLEKS                       R5 R4 K3 ["PermissionsMap"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"UpdatedPermissionValues"}]
        7 GETTABLEKS                       R5 R1 K4 ["updatedPermissionValues"]
        9 SETTABLEKS                       R5 R4 K2 ["UpdatedPermissionValues"]
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
       29 GETTABLEKS                       R5 R3 K10 ["SetCurrentGranularPermissions"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["SetGranularPermissions"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 GETTABLEKS                       R7 R1 K13 ["createReducer"]
       40 MOVE                             R8 R6
       41 CALL                             R8 0 1
       42 NEWTABLE                         R9 4 0
       44 DUPCLOSURE                       R10 K14 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R10 R9 K15 ["ResetStore"]
       48 GETTABLEKS                       R10 R4 K16 ["name"]
       50 DUPCLOSURE                       R11 K17 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 SETTABLE                         R11 R9 R10
       53 GETTABLEKS                       R10 R5 K16 ["name"]
       55 DUPCLOSURE                       R11 K18 [PROTO_3]
       56 CAPTURE                          VAL R2
       57 SETTABLE                         R11 R9 R10
       58 CALL                             R7 2 -1
       59 RETURN                           R7 -1
