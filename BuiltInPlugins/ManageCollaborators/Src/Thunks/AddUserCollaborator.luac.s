PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 0 1
        4 GETUPVAL                         R4 2
        5 SETLIST                          R3 R4 1 [1]
        7 CALL                             R2 1 -1
        8 NAMECALL                         R0 R0 K0 ["dispatch"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Permissions"]
        5 GETTABLEKS                       R3 R3 K2 ["NewPermissions"]
        7 JUMPIF                           R3 ; [+4]
        8 GETTABLEKS                       R3 R2 K1 ["Permissions"]
       10 GETTABLEKS                       R3 R3 K3 ["CurrentPermissions"]
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R3
       14 NEWTABLE                         R6 1 0
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K4 ["UserSubjectKey"]
       19 NEWTABLE                         R8 1 0
       21 GETUPVAL                         R9 2
       22 NEWTABLE                         R10 4 0
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R11 R11 K5 ["SubjectNameKey"]
       27 GETUPVAL                         R12 3
       28 SETTABLE                         R12 R10 R11
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R11 R11 K6 ["SubjectIdKey"]
       32 GETUPVAL                         R12 2
       33 SETTABLE                         R12 R10 R11
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R11 R11 K7 ["ActionKey"]
       37 GETUPVAL                         R12 4
       38 SETTABLE                         R12 R10 R11
       39 SETTABLE                         R10 R8 R9
       40 SETTABLE                         R8 R6 R7
       41 CALL                             R4 2 1
       42 GETUPVAL                         R7 5
       43 MOVE                             R8 R4
       44 CALL                             R7 1 -1
       45 NAMECALL                         R5 R0 K8 ["dispatch"]
       47 CALL                             R5 -1 0
       48 GETUPVAL                         R5 6
       49 GETTABLEKS                       R5 R5 K9 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       51 JUMPIF                           R5 ; [+4]
       52 GETUPVAL                         R5 6
       53 GETTABLEKS                       R5 R5 K10 ["fflagManageCollaboratorsEditorBlockingBanner"]
       55 JUMPIFNOT                        R5 ; [+13]
       56 GETUPVAL                         R5 6
       57 GETTABLEKS                       R5 R5 K11 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       59 JUMPIF                           R5 ; [+9]
       60 GETIMPORT                        R5 K14 [coroutine.wrap]
       62 NEWCLOSURE                       R6 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U2
       66 CALL                             R5 1 1
       67 MOVE                             R6 R5
       68 CALL                             R6 0 0
       69 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Bin"]
       20 GETTABLEKS                       R3 R3 K8 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K9 ["Util"]
       25 GETTABLEKS                       R3 R3 K10 ["deepJoin"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Src"]
       31 GETTABLEKS                       R5 R5 K12 ["Actions"]
       33 GETTABLEKS                       R5 R5 K13 ["SetUserPermission"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K11 ["Src"]
       40 GETTABLEKS                       R6 R6 K9 ["Util"]
       42 GETTABLEKS                       R6 R6 K14 ["PermissionsConstants"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K11 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Thunks"]
       51 GETTABLEKS                       R7 R7 K16 ["FetchCanCollaborateResponses"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K17 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 RETURN                           R7 1
