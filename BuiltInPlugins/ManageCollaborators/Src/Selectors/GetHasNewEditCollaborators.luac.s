PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R1 R1 K1 ["NewPermissions"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        9 GETTABLEKS                       R2 R2 K2 ["CurrentPermissions"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["UserSubjectKey"]
       14 GETTABLE                         R3 R1 R4
       15 JUMPIF                           R3 ; [+2]
       16 NEWTABLE                         R3 0 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K3 ["UserSubjectKey"]
       21 GETTABLE                         R4 R2 R5
       22 JUMPIF                           R4 ; [+2]
       23 NEWTABLE                         R4 0 0
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["RoleSubjectKey"]
       28 GETTABLE                         R5 R1 R6
       29 JUMPIF                           R5 ; [+2]
       30 NEWTABLE                         R5 0 0
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K4 ["RoleSubjectKey"]
       35 GETTABLE                         R6 R2 R7
       36 JUMPIF                           R6 ; [+2]
       37 NEWTABLE                         R6 0 0
       39 GETIMPORT                        R7 K6 [pairs]
       41 MOVE                             R8 R3
       42 CALL                             R7 1 3
       43 FORGPREP_NEXT                    R7
       44 GETTABLE                         R12 R4 R10
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K7 ["ActionKey"]
       48 GETTABLE                         R13 R11 R14
       49 GETUPVAL                         R14 0
       50 GETTABLEKS                       R14 R14 K8 ["EditKey"]
       52 JUMPIFNOTEQ                      R13 R14 ; [+13]
       54 JUMPIFNOT                        R12 ; [+9]
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K7 ["ActionKey"]
       58 GETTABLE                         R13 R12 R14
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R14 R14 K8 ["EditKey"]
       62 JUMPIFEQ                         R13 R14 ; [+3]
       64 LOADB                            R13 1
       65 RETURN                           R13 1
       66 FORGLOOP                         R7 2 ; [-23]
       68 GETIMPORT                        R7 K6 [pairs]
       70 MOVE                             R8 R5
       71 CALL                             R7 1 3
       72 FORGPREP_NEXT                    R7
       73 GETTABLE                         R12 R6 R10
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R14 R14 K7 ["ActionKey"]
       77 GETTABLE                         R13 R11 R14
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R14 R14 K8 ["EditKey"]
       81 JUMPIFNOTEQ                      R13 R14 ; [+13]
       83 JUMPIFNOT                        R12 ; [+9]
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R14 R14 K7 ["ActionKey"]
       87 GETTABLE                         R13 R12 R14
       88 GETUPVAL                         R14 0
       89 GETTABLEKS                       R14 R14 K8 ["EditKey"]
       91 JUMPIFEQ                         R13 R14 ; [+3]
       93 LOADB                            R13 1
       94 RETURN                           R13 1
       95 FORGLOOP                         R7 2 ; [-23]
       97 LOADB                            R7 0
       98 RETURN                           R7 1

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
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
