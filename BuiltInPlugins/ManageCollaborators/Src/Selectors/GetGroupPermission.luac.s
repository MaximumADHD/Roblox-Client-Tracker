PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R2 R3 K1 ["NewPermissions"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        7 GETTABLEKS                       R2 R3 K2 ["CurrentPermissions"]
        9 LOADB                            R3 1
       10 LOADB                            R4 1
       11 GETIMPORT                        R5 K4 [pairs]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K5 ["RoleSubjectKey"]
       16 GETTABLE                         R6 R2 R8
       17 CALL                             R5 1 3
       18 FORGPREP_NEXT                    R5
       19 GETUPVAL                         R12 0
       20 GETTABLEKS                       R11 R12 K6 ["ActionKey"]
       22 GETTABLE                         R10 R9 R11
       23 GETUPVAL                         R12 0
       24 GETTABLEKS                       R11 R12 K7 ["PlayKey"]
       26 JUMPIFEQ                         R10 R11 ; [+8]
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R11 R12 K8 ["GroupIdKey"]
       31 GETTABLE                         R10 R9 R11
       32 JUMPIFNOTEQ                      R10 R1 ; [+2]
       34 LOADB                            R3 0
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R11 R12 K6 ["ActionKey"]
       38 GETTABLE                         R10 R9 R11
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R11 R12 K9 ["NoAccessKey"]
       42 JUMPIFEQ                         R10 R11 ; [+8]
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R11 R12 K8 ["GroupIdKey"]
       47 GETTABLE                         R10 R9 R11
       48 JUMPIFNOTEQ                      R10 R1 ; [+2]
       50 LOADB                            R4 0
       51 FORGLOOP                         R5 2 ; [-33]
       53 JUMPIFNOT                        R3 ; [+4]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K7 ["PlayKey"]
       57 RETURN                           R5 1
       58 JUMPIFNOT                        R4 ; [+4]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K9 ["NoAccessKey"]
       62 RETURN                           R5 1
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R5 R6 K10 ["MultipleKey"]
       66 RETURN                           R5 1

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
