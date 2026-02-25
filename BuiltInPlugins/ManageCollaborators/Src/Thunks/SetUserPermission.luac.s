PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Permissions"]
        5 GETTABLEKS                       R3 R4 K2 ["NewPermissions"]
        7 JUMPIF                           R3 ; [+4]
        8 GETTABLEKS                       R4 R2 K1 ["Permissions"]
       10 GETTABLEKS                       R3 R4 K3 ["CurrentPermissions"]
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R3
       14 NEWTABLE                         R6 1 0
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K4 ["UserSubjectKey"]
       19 NEWTABLE                         R8 1 0
       21 GETUPVAL                         R9 2
       22 NEWTABLE                         R10 1 0
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R11 R12 K5 ["ActionKey"]
       27 GETUPVAL                         R12 3
       28 SETTABLE                         R12 R10 R11
       29 SETTABLE                         R10 R8 R9
       30 SETTABLE                         R8 R6 R7
       31 CALL                             R4 2 1
       32 GETUPVAL                         R7 4
       33 MOVE                             R8 R4
       34 CALL                             R7 1 -1
       35 NAMECALL                         R5 R0 K6 ["dispatch"]
       37 CALL                             R5 -1 0
       38 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["deepJoin"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R6 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R6 K10 ["Actions"]
       26 GETTABLEKS                       R4 R5 K11 ["SetUserPermission"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R7 R0 K9 ["Src"]
       33 GETTABLEKS                       R6 R7 K7 ["Util"]
       35 GETTABLEKS                       R5 R6 K12 ["PermissionsConstants"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K13 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 RETURN                           R5 1
