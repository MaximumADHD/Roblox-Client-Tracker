PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Permissions"]
        5 GETTABLEKS                       R3 R4 K2 ["NewPermissions"]
        7 JUMPIF                           R3 ; [+4]
        8 GETTABLEKS                       R4 R2 K1 ["Permissions"]
       10 GETTABLEKS                       R3 R4 K3 ["CurrentPermissions"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K4 ["UserSubjectKey"]
       15 GETTABLE                         R4 R3 R5
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K5 ["Dictionary"]
       19 GETTABLEKS                       R5 R6 K6 ["join"]
       21 MOVE                             R6 R3
       22 NEWTABLE                         R7 1 0
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K4 ["UserSubjectKey"]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R10 R11 K5 ["Dictionary"]
       30 GETTABLEKS                       R9 R10 K6 ["join"]
       32 MOVE                             R10 R4
       33 NEWTABLE                         R11 1 0
       35 GETUPVAL                         R12 2
       36 GETUPVAL                         R14 1
       37 GETTABLEKS                       R13 R14 K7 ["None"]
       39 SETTABLE                         R13 R11 R12
       40 CALL                             R9 2 1
       41 SETTABLE                         R9 R7 R8
       42 CALL                             R5 2 1
       43 GETUPVAL                         R8 3
       44 MOVE                             R9 R5
       45 CALL                             R8 1 -1
       46 NAMECALL                         R6 R0 K8 ["dispatch"]
       48 CALL                             R6 -1 0
       49 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Actions"]
       22 GETTABLEKS                       R3 R4 K9 ["SetUserPermission"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K7 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["PermissionsConstants"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_1]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 RETURN                           R4 1
