PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["__permissionsCache"]
        8 GETUPVAL                         R4 0
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K3 [setmetatable]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["groups"]
        3 LOADK                            R7 K2 ["/v1/groups/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/roles/permissions"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["__permissionsCache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+46]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["groupRolePermissionsV1GET"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K2 ["await"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K3 ["responseCode"]
       13 JUMPIFEQKN                       R3 K4 [200] ; [+10]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K5 ["ManageCollaboratorsPlugin.FetchRolePermsFailed"]
       17 LOADN                            R6 1
       18 NAMECALL                         R3 R3 K6 ["reportCounter"]
       20 CALL                             R3 3 0
       21 NEWTABLE                         R3 0 0
       23 RETURN                           R3 1
       24 GETTABLEKS                       R4 R0 K0 ["__permissionsCache"]
       26 GETTABLE                         R3 R4 R1
       27 JUMPIF                           R3 ; [+22]
       28 NEWTABLE                         R3 0 0
       30 GETIMPORT                        R4 K8 [ipairs]
       32 GETTABLEKS                       R7 R2 K9 ["responseBody"]
       34 GETTABLEKS                       R5 R7 K10 ["data"]
       36 CALL                             R4 1 3
       37 FORGPREP_INEXT                   R4
       38 GETTABLEKS                       R10 R8 K11 ["role"]
       40 GETTABLEKS                       R9 R10 K12 ["id"]
       42 GETTABLEKS                       R10 R8 K13 ["permissions"]
       44 SETTABLE                         R10 R3 R9
       45 FORGLOOP                         R4 2 [inext] ; [-8]
       47 GETTABLEKS                       R4 R0 K0 ["__permissionsCache"]
       49 SETTABLE                         R3 R4 R1
       50 GETTABLEKS                       R3 R0 K0 ["__permissionsCache"]
       52 GETTABLE                         R2 R3 R1
       53 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["__permissionsCache"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RbxAnalyticsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K6 ["new"]
       15 DUPCLOSURE                       R2 K7 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K8 ["groupRolePermissionsV1GET"]
       18 DUPCLOSURE                       R2 K9 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["getGroupRolePermissions"]
       22 DUPCLOSURE                       R2 K11 [PROTO_3]
       23 SETTABLEKS                       R2 R1 K12 ["clearCache"]
       25 RETURN                           R1 1
