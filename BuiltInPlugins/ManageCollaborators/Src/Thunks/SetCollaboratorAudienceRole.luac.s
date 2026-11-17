PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R2 R0 K1 ["getState"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 GETUPVAL                         R5 2
       11 CALL                             R3 2 2
       12 GETUPVAL                         R5 3
       13 JUMPIFNOTEQ                      R5 R4 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R5 4
       17 MOVE                             R6 R2
       18 GETUPVAL                         R7 2
       19 CALL                             R5 2 1
       20 JUMPIFNOTEQKNIL                  R5 ; [+6]
       22 GETUPVAL                         R6 5
       23 MOVE                             R7 R2
       24 GETUPVAL                         R8 2
       25 CALL                             R6 2 1
       26 MOVE                             R5 R6
       27 JUMPIFNOTEQKNIL                  R5 ; [+2]
       29 RETURN                           R0 0
       30 GETUPVAL                         R6 3
       31 GETUPVAL                         R7 6
       32 GETTABLEKS                       R7 R7 K2 ["PlayTestKey"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+63]
       36 GETTABLEKS                       R6 R2 K3 ["PendingPlayTesters"]
       38 GETTABLEKS                       R7 R6 K4 ["NewPlayTesters"]
       40 JUMPIF                           R7 ; [+2]
       41 GETTABLEKS                       R7 R6 K5 ["CurrentPlayTesters"]
       43 GETUPVAL                         R9 2
       44 GETTABLE                         R8 R7 R9
       45 JUMPIFNOTEQKNIL                  R8 ; [+9]
       47 GETUPVAL                         R8 7
       48 MOVE                             R9 R2
       49 CALL                             R8 1 1
       50 GETUPVAL                         R9 8
       51 CALL                             R9 0 1
       52 JUMPIFNOTLE                      R9 R8 ; [+2]
       54 RETURN                           R0 0
       55 GETUPVAL                         R10 9
       56 GETUPVAL                         R11 2
       57 MOVE                             R12 R3
       58 JUMPIF                           R12 ; [+1]
       59 GETUPVAL                         R12 3
       60 CALL                             R10 2 -1
       61 NAMECALL                         R8 R0 K6 ["dispatch"]
       63 CALL                             R8 -1 0
       64 GETUPVAL                         R10 10
       65 GETUPVAL                         R11 2
       66 MOVE                             R12 R5
       67 CALL                             R10 2 -1
       68 NAMECALL                         R8 R0 K6 ["dispatch"]
       70 CALL                             R8 -1 0
       71 GETTABLEKS                       R8 R2 K7 ["Permissions"]
       73 GETTABLEKS                       R8 R8 K8 ["NewPermissions"]
       75 JUMPIF                           R8 ; [+4]
       76 GETTABLEKS                       R8 R2 K7 ["Permissions"]
       78 GETTABLEKS                       R8 R8 K9 ["CurrentPermissions"]
       80 GETUPVAL                         R10 6
       81 GETTABLEKS                       R10 R10 K10 ["UserSubjectKey"]
       83 GETTABLE                         R9 R8 R10
       84 JUMPIF                           R9 ; [+2]
       85 NEWTABLE                         R9 0 0
       87 GETUPVAL                         R11 2
       88 GETTABLE                         R10 R9 R11
       89 JUMPIFEQKNIL                     R10 ; [+31]
       91 GETUPVAL                         R12 11
       92 GETUPVAL                         R13 2
       93 CALL                             R12 1 -1
       94 NAMECALL                         R10 R0 K6 ["dispatch"]
       96 CALL                             R10 -1 0
       97 RETURN                           R0 0
       98 GETUPVAL                         R8 9
       99 GETUPVAL                         R9 2
      100 MOVE                             R10 R3
      101 JUMPIF                           R10 ; [+1]
      102 GETUPVAL                         R10 3
      103 CALL                             R8 2 -1
      104 NAMECALL                         R6 R0 K6 ["dispatch"]
      106 CALL                             R6 -1 0
      107 GETUPVAL                         R8 12
      108 GETUPVAL                         R9 2
      109 CALL                             R8 1 -1
      110 NAMECALL                         R6 R0 K6 ["dispatch"]
      112 CALL                             R6 -1 0
      113 GETUPVAL                         R8 13
      114 GETUPVAL                         R9 2
      115 MOVE                             R10 R5
      116 GETUPVAL                         R11 3
      117 CALL                             R8 3 -1
      118 NAMECALL                         R6 R0 K6 ["dispatch"]
      120 CALL                             R6 -1 0
      121 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 RETURN                           R2 1

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
       29 GETTABLEKS                       R4 R4 K8 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["RemovePendingPlayTester"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Actions"]
       40 GETTABLEKS                       R5 R5 K11 ["RecordAudienceOriginRole"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Thunks"]
       49 GETTABLEKS                       R6 R6 K13 ["AddUserCollaborator"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K12 ["Thunks"]
       58 GETTABLEKS                       R7 R7 K14 ["RemoveUserCollaborator"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K15 ["Selectors"]
       67 GETTABLEKS                       R8 R8 K16 ["GetAudienceRole"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K7 ["Src"]
       74 GETTABLEKS                       R9 R9 K15 ["Selectors"]
       76 GETTABLEKS                       R9 R9 K17 ["GetPendingPlayTesterName"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K4 [require]
       81 GETTABLEKS                       R10 R0 K7 ["Src"]
       83 GETTABLEKS                       R10 R10 K15 ["Selectors"]
       85 GETTABLEKS                       R10 R10 K18 ["GetUserName"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K4 [require]
       90 GETTABLEKS                       R11 R0 K7 ["Src"]
       92 GETTABLEKS                       R11 R11 K19 ["Util"]
       94 GETTABLEKS                       R11 R11 K20 ["PermissionsConstants"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K4 [require]
       99 GETTABLEKS                       R12 R0 K7 ["Src"]
      101 GETTABLEKS                       R12 R12 K15 ["Selectors"]
      103 GETTABLEKS                       R12 R12 K21 ["GetPendingPlayTesterCount"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K4 [require]
      108 GETTABLEKS                       R13 R0 K7 ["Src"]
      110 GETTABLEKS                       R13 R13 K19 ["Util"]
      112 GETTABLEKS                       R13 R13 K22 ["GetPlayTesterPermissionMaxCount"]
      114 CALL                             R12 1 1
      115 DUPCLOSURE                       R13 K23 [PROTO_1]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R5
      128 RETURN                           R13 1
