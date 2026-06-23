PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["CanCollaborateResponses"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 GETTABLEKS                       R2 R0 K1 ["Permissions"]
        7 GETTABLEKS                       R2 R2 K2 ["NewPermissions"]
        9 JUMPIF                           R2 ; [+4]
       10 GETTABLEKS                       R2 R0 K1 ["Permissions"]
       12 GETTABLEKS                       R2 R2 K3 ["CurrentPermissions"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["UserSubjectKey"]
       17 GETTABLE                         R3 R2 R4
       18 JUMPIF                           R3 ; [+2]
       19 NEWTABLE                         R3 0 0
       21 GETUPVAL                         R4 1
       22 JUMPIFNOTEQ                      R1 R4 ; [+6]
       24 GETUPVAL                         R4 2
       25 JUMPIFNOTEQ                      R3 R4 ; [+3]
       27 GETUPVAL                         R4 3
       28 RETURN                           R4 1
       29 SETUPVAL                         R1 1
       30 SETUPVAL                         R3 2
       31 LOADB                            R4 0
       32 GETIMPORT                        R5 K6 [pairs]
       34 MOVE                             R6 R3
       35 CALL                             R5 1 3
       36 FORGPREP_NEXT                    R5
       37 GETTABLE                         R10 R1 R8
       38 JUMPIFEQKNIL                     R10 ; [+26]
       40 GETTABLEKS                       R11 R10 K7 ["error"]
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K8 ["OutsideAgeBucket"]
       45 JUMPIFEQ                         R11 R12 ; [+8]
       47 GETTABLEKS                       R11 R10 K7 ["error"]
       49 GETUPVAL                         R12 4
       50 GETTABLEKS                       R12 R12 K9 ["OutsideAgeBucketTcPc"]
       52 JUMPIFNOTEQ                      R11 R12 ; [+12]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R12 R12 K10 ["ActionKey"]
       57 GETTABLE                         R11 R9 R12
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R12 R12 K11 ["EditKey"]
       61 JUMPIFNOTEQ                      R11 R12 ; [+3]
       63 LOADB                            R4 1
       64 JUMP                             ; [+2]
       65 FORGLOOP                         R5 2 ; [-29]
       67 SETUPVAL                         R4 3
       68 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["PermissionsConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Enums"]
       22 GETTABLEKS                       R3 R3 K10 ["CanCollaborateError"]
       24 CALL                             R2 1 1
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 LOADB                            R5 0
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          REF R3
       31 CAPTURE                          REF R4
       32 CAPTURE                          REF R5
       33 CAPTURE                          VAL R2
       34 CLOSEUPVALS                      R3
       35 RETURN                           R6 1
