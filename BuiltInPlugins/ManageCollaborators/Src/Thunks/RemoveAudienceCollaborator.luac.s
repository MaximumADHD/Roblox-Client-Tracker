PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIF                           R2 ; [+7]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R0 K1 ["dispatch"]
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0
       11 NAMECALL                         R2 R0 K2 ["getState"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K3 ["Permissions"]
       16 GETTABLEKS                       R3 R3 K4 ["NewPermissions"]
       18 JUMPIF                           R3 ; [+4]
       19 GETTABLEKS                       R3 R2 K3 ["Permissions"]
       21 GETTABLEKS                       R3 R3 K5 ["CurrentPermissions"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K6 ["UserSubjectKey"]
       26 GETTABLE                         R4 R3 R5
       27 JUMPIF                           R4 ; [+2]
       28 NEWTABLE                         R4 0 0
       30 GETUPVAL                         R6 2
       31 GETTABLE                         R5 R4 R6
       32 JUMPIFEQKNIL                     R5 ; [+7]
       34 GETUPVAL                         R7 1
       35 GETUPVAL                         R8 2
       36 CALL                             R7 1 -1
       37 NAMECALL                         R5 R0 K1 ["dispatch"]
       39 CALL                             R5 -1 0
       40 GETTABLEKS                       R5 R2 K7 ["PendingPlayTesters"]
       42 GETTABLEKS                       R6 R5 K8 ["NewPlayTesters"]
       44 JUMPIF                           R6 ; [+2]
       45 GETTABLEKS                       R6 R5 K9 ["CurrentPlayTesters"]
       47 GETUPVAL                         R8 2
       48 GETTABLE                         R7 R6 R8
       49 JUMPIFEQKNIL                     R7 ; [+7]
       51 GETUPVAL                         R9 4
       52 GETUPVAL                         R10 2
       53 CALL                             R9 1 -1
       54 NAMECALL                         R7 R0 K1 ["dispatch"]
       56 CALL                             R7 -1 0
       57 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["RemovePendingPlayTester"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R4 K11 ["RemoveUserCollaborator"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Util"]
       40 GETTABLEKS                       R5 R5 K13 ["PermissionsConstants"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 RETURN                           R5 1
