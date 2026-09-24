PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R2 R0 K1 ["getState"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K2 ["PendingPlayTesters"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R3 K3 ["NewPlayTesters"]
       15 JUMPIF                           R4 ; [+5]
       16 GETTABLEKS                       R4 R3 K4 ["CurrentPlayTesters"]
       18 JUMPIF                           R4 ; [+2]
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R6 1
       22 GETTABLE                         R5 R4 R6
       23 JUMPIFEQKNIL                     R5 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 2
       27 MOVE                             R6 R2
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 3
       30 CALL                             R6 0 1
       31 JUMPIFNOTLE                      R6 R5 ; [+2]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R5 R2 K5 ["Permissions"]
       36 GETTABLEKS                       R5 R5 K6 ["NewPermissions"]
       38 JUMPIF                           R5 ; [+4]
       39 GETTABLEKS                       R5 R2 K5 ["Permissions"]
       41 GETTABLEKS                       R5 R5 K7 ["CurrentPermissions"]
       43 MOVE                             R6 R5
       44 JUMPIFNOT                        R6 ; [+4]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R7 R7 K8 ["UserSubjectKey"]
       48 GETTABLE                         R6 R5 R7
       49 JUMPIFNOT                        R6 ; [+5]
       50 GETUPVAL                         R8 1
       51 GETTABLE                         R7 R6 R8
       52 JUMPIFEQKNIL                     R7 ; [+2]
       54 RETURN                           R0 0
       55 GETUPVAL                         R9 5
       56 GETUPVAL                         R10 1
       57 GETUPVAL                         R11 4
       58 GETTABLEKS                       R11 R11 K9 ["PlayTestKey"]
       60 CALL                             R9 2 -1
       61 NAMECALL                         R7 R0 K10 ["dispatch"]
       63 CALL                             R7 -1 0
       64 GETUPVAL                         R9 6
       65 GETUPVAL                         R10 1
       66 GETUPVAL                         R11 7
       67 CALL                             R9 2 -1
       68 NAMECALL                         R7 R0 K10 ["dispatch"]
       70 CALL                             R7 -1 0
       71 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

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
       22 GETTABLEKS                       R3 R3 K9 ["AddPendingPlayTester"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["PermissionsConstants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Selectors"]
       40 GETTABLEKS                       R5 R5 K13 ["GetPendingPlayTesterCount"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K14 ["GetPlayTesterPermissionMaxCount"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K8 ["Actions"]
       58 GETTABLEKS                       R7 R7 K15 ["RecordAudienceOriginRole"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K16 [PROTO_1]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R2
       68 RETURN                           R7 1
