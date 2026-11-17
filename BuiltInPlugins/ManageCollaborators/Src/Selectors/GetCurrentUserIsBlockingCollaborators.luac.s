PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["RequiresTrustedConnectionData"]
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
       22 NAMECALL                         R4 R4 K5 ["GetUserId"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [pairs]
       27 MOVE                             R6 R3
       28 CALL                             R5 1 3
       29 FORGPREP_NEXT                    R5
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K8 ["ActionKey"]
       33 GETTABLE                         R10 R9 R11
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K9 ["EditKey"]
       37 JUMPIFNOTEQ                      R10 R11 ; [+21]
       39 GETTABLE                         R10 R1 R8
       40 JUMPIF                           R10 ; [+2]
       41 NEWTABLE                         R10 0 0
       43 GETIMPORT                        R11 K7 [pairs]
       45 MOVE                             R12 R10
       46 CALL                             R11 1 3
       47 FORGPREP_NEXT                    R11
       48 GETTABLEKS                       R16 R15 K10 ["UserId"]
       50 JUMPIFNOT                        R16 ; [+6]
       51 GETTABLEKS                       R16 R15 K10 ["UserId"]
       53 JUMPIFNOTEQ                      R16 R4 ; [+3]
       55 LOADB                            R16 1
       56 RETURN                           R16 1
       57 FORGLOOP                         R11 2 ; [-10]
       59 FORGLOOP                         R5 2 ; [-30]
       61 LOADB                            R5 0
       62 RETURN                           R5 1

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
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["StudioService"]
       19 NAMECALL                         R2 R2 K12 ["GetService"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K13 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
