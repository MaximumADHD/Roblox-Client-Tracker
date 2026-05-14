PROTO_0:
        0 LOADN                            R0 1
        1 GETIMPORT                        R1 K1 [ipairs]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K2 ["GetCurrentPage"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_INEXT                   R1
        9 GETIMPORT                        R6 K5 [coroutine.yield]
       11 MOVE                             R7 R5
       12 MOVE                             R8 R0
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 [inext] ; [-6]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K6 ["IsFinished"]
       19 JUMPIF                           R1 ; [+6]
       20 GETUPVAL                         R1 0
       21 NAMECALL                         R1 R1 K7 ["AdvanceToNextPageAsync"]
       23 CALL                             R1 1 0
       24 ADDK                             R0 R0 K8 [1]
       25 JUMPBACK                         ; [-25]
       26 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [coroutine.wrap]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Players"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 -1
        8 NAMECALL                         R0 R0 K4 ["GetFriendsAsync"]
       10 CALL                             R0 -1 1
       11 LOADB                            R1 0
       12 NEWTABLE                         R2 0 0
       14 JUMPIFNOT                        R0 ; [+32]
       15 LOADB                            R1 1
       16 GETIMPORT                        R6 K7 [coroutine.wrap]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R0
       20 CALL                             R6 1 3
       21 MOVE                             R3 R6
       22 MOVE                             R4 R7
       23 MOVE                             R5 R8
       24 FORGPREP                         R3
       25 NEWTABLE                         R10 2 0
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R11 R11 K8 ["SubjectNameKey"]
       30 GETTABLEKS                       R12 R6 K9 ["Username"]
       32 SETTABLE                         R12 R10 R11
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K10 ["SubjectIdKey"]
       36 GETTABLEKS                       R12 R6 K11 ["Id"]
       38 SETTABLE                         R12 R10 R11
       39 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       41 MOVE                             R9 R2
       42 GETIMPORT                        R8 K14 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R3 2 ; [-21]
       47 GETUPVAL                         R3 2
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K15 ["LoadedLocalUserFriends"]
       51 MOVE                             R6 R1
       52 MOVE                             R7 R2
       53 CALL                             R5 2 -1
       54 NAMECALL                         R3 R3 K16 ["dispatch"]
       56 CALL                             R3 -1 0
       57 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["GroupService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 -1
        8 NAMECALL                         R0 R0 K4 ["GetGroupsAsync"]
       10 CALL                             R0 -1 1
       11 LOADB                            R1 0
       12 NEWTABLE                         R2 0 0
       14 JUMPIFNOT                        R0 ; [+28]
       15 LOADB                            R1 1
       16 GETIMPORT                        R3 K6 [ipairs]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 3
       20 FORGPREP_INEXT                   R3
       21 NEWTABLE                         R10 2 0
       23 GETUPVAL                         R11 1
       24 GETTABLEKS                       R11 R11 K7 ["SubjectNameKey"]
       26 GETTABLEKS                       R12 R7 K8 ["Name"]
       28 SETTABLE                         R12 R10 R11
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R11 R11 K9 ["SubjectIdKey"]
       32 GETTABLEKS                       R12 R7 K10 ["Id"]
       34 SETTABLE                         R12 R10 R11
       35 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       37 MOVE                             R9 R2
       38 GETIMPORT                        R8 K13 [table.insert]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 [inext] ; [-21]
       43 GETUPVAL                         R3 2
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K14 ["LoadedLocalUserGroups"]
       47 MOVE                             R6 R1
       48 MOVE                             R7 R2
       49 CALL                             R5 2 -1
       50 NAMECALL                         R3 R3 K15 ["dispatch"]
       52 CALL                             R3 -1 0
       53 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["SearchTextChanged"]
        6 GETUPVAL                         R5 1
        7 CALL                             R4 1 -1
        8 NAMECALL                         R2 R0 K2 ["dispatch"]
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 1
       12 JUMPIFNOTEQKS                    R2 K3 [""] ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R1 K4 ["localUserFriends"]
       17 JUMPIF                           R2 ; [+15]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["LoadingLocalUserFriends"]
       21 CALL                             R4 0 -1
       22 NAMECALL                         R2 R0 K2 ["dispatch"]
       24 CALL                             R2 -1 0
       25 GETIMPORT                        R2 K7 [spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U0
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 4
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+18]
       36 GETTABLEKS                       R2 R1 K8 ["localUserGroups"]
       38 JUMPIF                           R2 ; [+15]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K9 ["LoadingLocalUserGroups"]
       42 CALL                             R4 0 -1
       43 NAMECALL                         R2 R0 K2 ["dispatch"]
       45 CALL                             R2 -1 0
       46 GETIMPORT                        R2 K7 [spawn]
       48 NEWCLOSURE                       R3 P1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["getUserId"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K3 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Actions"]
       24 GETTABLEKS                       R4 R4 K9 ["CollaboratorSearchActions"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K3 ["Src"]
       31 GETTABLEKS                       R5 R5 K10 ["Components"]
       33 GETTABLEKS                       R5 R5 K11 ["AssetConfiguration"]
       35 GETTABLEKS                       R5 R5 K12 ["Permissions"]
       37 GETTABLEKS                       R5 R5 K13 ["PermissionsConstants"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K6 [require]
       42 GETTABLEKS                       R6 R0 K3 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Flags"]
       46 GETTABLEKS                       R6 R6 K15 ["getFFlagAACAddGroups"]
       48 CALL                             R5 1 1
       49 DUPCLOSURE                       R6 K16 [PROTO_1]
       50 DUPCLOSURE                       R7 K17 [PROTO_5]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
