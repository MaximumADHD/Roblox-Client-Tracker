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
       49 JUMPIFNOT                        R6 ; [+36]
       50 GETUPVAL                         R8 1
       51 GETTABLE                         R7 R6 R8
       52 JUMPIFEQKNIL                     R7 ; [+33]
       54 GETUPVAL                         R9 5
       55 GETUPVAL                         R10 1
       56 GETIMPORT                        R11 K10 [select]
       58 LOADN                            R12 1
       59 GETUPVAL                         R13 6
       60 MOVE                             R14 R2
       61 GETUPVAL                         R15 1
       62 CALL                             R13 2 -1
       63 CALL                             R11 -1 1
       64 JUMPIF                           R11 ; [+3]
       65 GETUPVAL                         R11 4
       66 GETTABLEKS                       R11 R11 K11 ["PlayTestKey"]
       68 CALL                             R9 2 -1
       69 NAMECALL                         R7 R0 K12 ["dispatch"]
       71 CALL                             R7 -1 0
       72 GETUPVAL                         R9 7
       73 GETUPVAL                         R10 1
       74 GETUPVAL                         R11 8
       75 CALL                             R9 2 -1
       76 NAMECALL                         R7 R0 K12 ["dispatch"]
       78 CALL                             R7 -1 0
       79 GETUPVAL                         R9 9
       80 GETUPVAL                         R10 1
       81 CALL                             R9 1 -1
       82 NAMECALL                         R7 R0 K12 ["dispatch"]
       84 CALL                             R7 -1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R9 5
       87 GETUPVAL                         R10 1
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R11 R11 K11 ["PlayTestKey"]
       91 CALL                             R9 2 -1
       92 NAMECALL                         R7 R0 K12 ["dispatch"]
       94 CALL                             R7 -1 0
       95 GETUPVAL                         R9 7
       96 GETUPVAL                         R10 1
       97 GETUPVAL                         R11 8
       98 CALL                             R9 2 -1
       99 NAMECALL                         R7 R0 K12 ["dispatch"]
      101 CALL                             R7 -1 0
      102 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U7
       11 RETURN                           R2 1

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
       29 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R4 K11 ["RemoveUserCollaborator"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Selectors"]
       40 GETTABLEKS                       R5 R5 K13 ["GetAudienceRole"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["PermissionsConstants"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K12 ["Selectors"]
       58 GETTABLEKS                       R7 R7 K16 ["GetPendingPlayTesterCount"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K14 ["Util"]
       67 GETTABLEKS                       R8 R8 K17 ["GetPlayTesterPermissionMaxCount"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K7 ["Src"]
       74 GETTABLEKS                       R9 R9 K8 ["Actions"]
       76 GETTABLEKS                       R9 R9 K18 ["RecordAudienceOriginRole"]
       78 CALL                             R8 1 1
       79 DUPCLOSURE                       R9 K19 [PROTO_1]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R3
       88 RETURN                           R9 1
