PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["GranularPermissions"]
        5 GETTABLEKS                       R3 R4 K2 ["PermissionsMap"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R6 R2 K1 ["GranularPermissions"]
       10 GETTABLEKS                       R5 R6 K3 ["UpdatedPermissionValues"]
       12 NEWTABLE                         R6 0 0
       14 CALL                             R4 2 1
       15 GETUPVAL                         R7 1
       16 GETTABLE                         R6 R3 R7
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K4 ["ActionKey"]
       20 GETTABLE                         R5 R6 R7
       21 GETUPVAL                         R6 3
       22 JUMPIFNOTEQ                      R5 R6 ; [+5]
       24 GETUPVAL                         R5 1
       25 LOADNIL                          R6
       26 SETTABLE                         R6 R4 R5
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R5 1
       29 GETUPVAL                         R6 3
       30 SETTABLE                         R6 R4 R5
       31 GETUPVAL                         R7 4
       32 MOVE                             R8 R4
       33 CALL                             R7 1 -1
       34 NAMECALL                         R5 R0 K5 ["dispatch"]
       36 CALL                             R5 -1 0
       37 RETURN                           R0 0

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
       26 GETTABLEKS                       R4 R5 K11 ["SetGranularPermissions"]
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
