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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["fflagAddPlayTesterPermission"]
        6 JUMPIFNOT                        R3 ; [+37]
        7 GETTABLEKS                       R3 R2 K2 ["PendingPlayTesters"]
        9 JUMPIFNOT                        R3 ; [+34]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 GETUPVAL                         R5 2
       13 CALL                             R3 2 1
       14 GETUPVAL                         R6 3
       15 GETUPVAL                         R7 2
       16 MOVE                             R8 R3
       17 JUMPIF                           R8 ; [+1]
       18 GETUPVAL                         R8 4
       19 CALL                             R6 2 -1
       20 NAMECALL                         R4 R0 K3 ["dispatch"]
       22 CALL                             R4 -1 0
       23 GETTABLEKS                       R4 R2 K2 ["PendingPlayTesters"]
       25 GETTABLEKS                       R4 R4 K4 ["NewPlayTesters"]
       27 JUMPIF                           R4 ; [+7]
       28 GETTABLEKS                       R4 R2 K2 ["PendingPlayTesters"]
       30 GETTABLEKS                       R4 R4 K5 ["CurrentPlayTesters"]
       32 JUMPIF                           R4 ; [+2]
       33 NEWTABLE                         R4 0 0
       35 GETUPVAL                         R6 2
       36 GETTABLE                         R5 R4 R6
       37 JUMPIFNOT                        R5 ; [+6]
       38 GETUPVAL                         R7 5
       39 GETUPVAL                         R8 2
       40 CALL                             R7 1 -1
       41 NAMECALL                         R5 R0 K3 ["dispatch"]
       43 CALL                             R5 -1 0
       44 GETTABLEKS                       R3 R2 K6 ["Permissions"]
       46 GETTABLEKS                       R3 R3 K7 ["NewPermissions"]
       48 JUMPIF                           R3 ; [+4]
       49 GETTABLEKS                       R3 R2 K6 ["Permissions"]
       51 GETTABLEKS                       R3 R3 K8 ["CurrentPermissions"]
       53 GETUPVAL                         R4 6
       54 MOVE                             R5 R3
       55 NEWTABLE                         R6 1 0
       57 GETUPVAL                         R7 7
       58 GETTABLEKS                       R7 R7 K9 ["UserSubjectKey"]
       60 NEWTABLE                         R8 1 0
       62 GETUPVAL                         R9 2
       63 NEWTABLE                         R10 4 0
       65 GETUPVAL                         R11 7
       66 GETTABLEKS                       R11 R11 K10 ["SubjectNameKey"]
       68 GETUPVAL                         R12 8
       69 SETTABLE                         R12 R10 R11
       70 GETUPVAL                         R11 7
       71 GETTABLEKS                       R11 R11 K11 ["SubjectIdKey"]
       73 GETUPVAL                         R12 2
       74 SETTABLE                         R12 R10 R11
       75 GETUPVAL                         R11 7
       76 GETTABLEKS                       R11 R11 K12 ["ActionKey"]
       78 GETUPVAL                         R12 4
       79 SETTABLE                         R12 R10 R11
       80 SETTABLE                         R10 R8 R9
       81 SETTABLE                         R8 R6 R7
       82 CALL                             R4 2 1
       83 GETUPVAL                         R7 9
       84 MOVE                             R8 R4
       85 CALL                             R7 1 -1
       86 NAMECALL                         R5 R0 K3 ["dispatch"]
       88 CALL                             R5 -1 0
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K13 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       92 JUMPIF                           R5 ; [+4]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K14 ["fflagManageCollaboratorsEditorBlockingBanner"]
       96 JUMPIFNOT                        R5 ; [+13]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      100 JUMPIF                           R5 ; [+9]
      101 GETIMPORT                        R5 K18 [coroutine.wrap]
      103 NEWCLOSURE                       R6 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          UPVAL U2
      107 CALL                             R5 1 1
      108 MOVE                             R6 R5
      109 CALL                             R6 0 0
      110 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 RETURN                           R3 1

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
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K12 ["Actions"]
       60 GETTABLEKS                       R8 R8 K17 ["RemovePendingPlayTester"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K11 ["Src"]
       67 GETTABLEKS                       R9 R9 K12 ["Actions"]
       69 GETTABLEKS                       R9 R9 K18 ["RecordAudienceOriginRole"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R0 K11 ["Src"]
       76 GETTABLEKS                       R10 R10 K19 ["Selectors"]
       78 GETTABLEKS                       R10 R10 K20 ["GetAudienceRole"]
       80 CALL                             R9 1 1
       81 DUPCLOSURE                       R10 K21 [PROTO_2]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 RETURN                           R10 1
