PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Permissions"]
        5 GETTABLEKS                       R3 R3 K2 ["NewPermissions"]
        7 JUMPIF                           R3 ; [+4]
        8 GETTABLEKS                       R3 R2 K1 ["Permissions"]
       10 GETTABLEKS                       R3 R3 K3 ["CurrentPermissions"]
       12 MOVE                             R4 R3
       13 GETIMPORT                        R5 K5 [pairs]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K6 ["RoleSubjectKey"]
       18 GETTABLE                         R6 R3 R8
       19 CALL                             R5 1 3
       20 FORGPREP_NEXT                    R5
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R11 R11 K7 ["GroupIdKey"]
       24 GETTABLE                         R10 R9 R11
       25 GETUPVAL                         R11 1
       26 JUMPIFNOTEQ                      R10 R11 ; [+21]
       28 GETUPVAL                         R10 2
       29 MOVE                             R11 R4
       30 NEWTABLE                         R12 1 0
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K6 ["RoleSubjectKey"]
       35 NEWTABLE                         R14 1 0
       37 NEWTABLE                         R15 1 0
       39 GETUPVAL                         R16 0
       40 GETTABLEKS                       R16 R16 K8 ["ActionKey"]
       42 GETUPVAL                         R17 3
       43 SETTABLE                         R17 R15 R16
       44 SETTABLE                         R15 R14 R8
       45 SETTABLE                         R14 R12 R13
       46 CALL                             R10 2 1
       47 MOVE                             R4 R10
       48 FORGLOOP                         R5 2 ; [-28]
       50 GETUPVAL                         R7 4
       51 MOVE                             R8 R4
       52 CALL                             R7 1 -1
       53 NAMECALL                         R5 R0 K9 ["dispatch"]
       55 CALL                             R5 -1 0
       56 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["deepJoin"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K10 ["Actions"]
       26 GETTABLEKS                       R4 R4 K11 ["SetUserPermission"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R0 K9 ["Src"]
       33 GETTABLEKS                       R5 R5 K7 ["Util"]
       35 GETTABLEKS                       R5 R5 K12 ["PermissionsConstants"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K13 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 RETURN                           R5 1
