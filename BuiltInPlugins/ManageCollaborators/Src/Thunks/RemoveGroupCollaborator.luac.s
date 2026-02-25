PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["GroupMetadata"]
        5 GETTABLEKS                       R3 R4 K2 ["NewGroupMetadata"]
        7 JUMPIF                           R3 ; [+4]
        8 GETTABLEKS                       R4 R2 K1 ["GroupMetadata"]
       10 GETTABLEKS                       R3 R4 K3 ["CurrentGroupMetadata"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       15 GETTABLEKS                       R4 R5 K5 ["join"]
       17 MOVE                             R5 R3
       18 NEWTABLE                         R6 1 0
       20 GETUPVAL                         R7 1
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K6 ["None"]
       24 SETTABLE                         R8 R6 R7
       25 CALL                             R4 2 1
       26 GETTABLEKS                       R6 R2 K7 ["Permissions"]
       28 GETTABLEKS                       R5 R6 K8 ["NewPermissions"]
       30 JUMPIF                           R5 ; [+4]
       31 GETTABLEKS                       R6 R2 K7 ["Permissions"]
       33 GETTABLEKS                       R5 R6 K9 ["CurrentPermissions"]
       35 MOVE                             R6 R5
       36 GETIMPORT                        R7 K11 [pairs]
       38 GETUPVAL                         R11 2
       39 GETTABLEKS                       R10 R11 K12 ["RoleSubjectKey"]
       41 GETTABLE                         R8 R6 R10
       42 CALL                             R7 1 3
       43 FORGPREP_NEXT                    R7
       44 GETUPVAL                         R14 2
       45 GETTABLEKS                       R13 R14 K13 ["GroupIdKey"]
       47 GETTABLE                         R12 R11 R13
       48 GETUPVAL                         R13 1
       49 JUMPIFNOTEQ                      R12 R13 ; [+31]
       51 GETUPVAL                         R14 0
       52 GETTABLEKS                       R13 R14 K4 ["Dictionary"]
       54 GETTABLEKS                       R12 R13 K5 ["join"]
       56 MOVE                             R13 R6
       57 NEWTABLE                         R14 1 0
       59 GETUPVAL                         R16 2
       60 GETTABLEKS                       R15 R16 K12 ["RoleSubjectKey"]
       62 GETUPVAL                         R18 0
       63 GETTABLEKS                       R17 R18 K4 ["Dictionary"]
       65 GETTABLEKS                       R16 R17 K5 ["join"]
       67 GETUPVAL                         R19 2
       68 GETTABLEKS                       R18 R19 K12 ["RoleSubjectKey"]
       70 GETTABLE                         R17 R6 R18
       71 NEWTABLE                         R18 1 0
       73 GETUPVAL                         R20 0
       74 GETTABLEKS                       R19 R20 K6 ["None"]
       76 SETTABLE                         R19 R18 R10
       77 CALL                             R16 2 1
       78 SETTABLE                         R16 R14 R15
       79 CALL                             R12 2 1
       80 MOVE                             R6 R12
       81 FORGLOOP                         R7 2 ; [-38]
       83 GETUPVAL                         R9 3
       84 MOVE                             R10 R6
       85 CALL                             R9 1 -1
       86 NAMECALL                         R7 R0 K14 ["dispatch"]
       88 CALL                             R7 -1 0
       89 GETUPVAL                         R9 4
       90 MOVE                             R10 R4
       91 CALL                             R9 1 -1
       92 NAMECALL                         R7 R0 K14 ["dispatch"]
       94 CALL                             R7 -1 0
       95 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

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
       29 GETTABLEKS                       R5 R6 K8 ["Actions"]
       31 GETTABLEKS                       R4 R5 K10 ["SetGroupMetadata"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R7 R0 K7 ["Src"]
       38 GETTABLEKS                       R6 R7 K11 ["Util"]
       40 GETTABLEKS                       R5 R6 K12 ["PermissionsConstants"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 RETURN                           R5 1
