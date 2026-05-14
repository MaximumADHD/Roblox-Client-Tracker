PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLE                         R7 R1 R5
        6 JUMPIFEQKNIL                     R7 ; [+12]
        8 GETTABLE                         R8 R1 R5
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K2 ["ActionKey"]
       12 GETTABLE                         R7 R8 R9
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K2 ["ActionKey"]
       16 GETTABLE                         R8 R6 R9
       17 JUMPIFEQ                         R7 R8 ; [+3]
       19 LOADB                            R7 1
       20 RETURN                           R7 1
       21 FORGLOOP                         R2 2 ; [-17]
       23 GETIMPORT                        R2 K1 [pairs]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 3
       27 FORGPREP_NEXT                    R2
       28 GETTABLE                         R7 R0 R5
       29 JUMPIFNOTEQKNIL                  R7 ; [+3]
       31 LOADB                            R7 1
       32 RETURN                           R7 1
       33 FORGLOOP                         R2 2 ; [-6]
       35 LOADB                            R2 0
       36 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        3 GETTABLEKS                       R2 R2 K1 ["NewPermissions"]
        5 JUMPIFNOT                        R2 ; [+44]
        6 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        8 GETTABLEKS                       R3 R3 K1 ["NewPermissions"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["UserSubjectKey"]
       13 GETTABLE                         R2 R3 R4
       14 GETTABLEKS                       R4 R0 K0 ["Permissions"]
       16 GETTABLEKS                       R4 R4 K3 ["CurrentPermissions"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K2 ["UserSubjectKey"]
       21 GETTABLE                         R3 R4 R5
       22 GETTABLEKS                       R5 R0 K0 ["Permissions"]
       24 GETTABLEKS                       R5 R5 K1 ["NewPermissions"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K4 ["RoleSubjectKey"]
       29 GETTABLE                         R4 R5 R6
       30 GETTABLEKS                       R6 R0 K0 ["Permissions"]
       32 GETTABLEKS                       R6 R6 K3 ["CurrentPermissions"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K4 ["RoleSubjectKey"]
       37 GETTABLE                         R5 R6 R7
       38 GETGLOBAL                        R6 K5 ["checkForDifferenceInCollaborators"]
       40 MOVE                             R7 R2
       41 MOVE                             R8 R3
       42 CALL                             R6 2 1
       43 JUMPIF                           R6 ; [+5]
       44 GETGLOBAL                        R6 K5 ["checkForDifferenceInCollaborators"]
       46 MOVE                             R7 R4
       47 MOVE                             R8 R5
       48 CALL                             R6 2 1
       49 MOVE                             R1 R6
       50 GETTABLEKS                       R2 R0 K6 ["GranularPermissions"]
       52 GETTABLEKS                       R2 R2 K7 ["UpdatedPermissionValues"]
       54 JUMPIFNOT                        R2 ; [+13]
       55 JUMPIF                           R1 ; [+12]
       56 GETTABLEKS                       R2 R0 K6 ["GranularPermissions"]
       58 GETTABLEKS                       R2 R2 K7 ["UpdatedPermissionValues"]
       60 GETIMPORT                        R3 K9 [next]
       62 MOVE                             R4 R2
       63 CALL                             R3 1 1
       64 JUMPIFNOTEQKNIL                  R3 ; [+2]
       66 LOADB                            R1 0 +1
       67 LOADB                            R1 1
       68 RETURN                           R1 1

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
       20 SETGLOBAL                        R2 K9 ["checkForDifferenceInCollaborators"]
       22 DUPCLOSURE                       R2 K10 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1
