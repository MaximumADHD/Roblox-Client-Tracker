PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorId"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+17]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R3 4
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K1 ["GetFriendsAsync"]
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R1 K2 ["getUserFriendsNew"]
       16 CALL                             R1 -1 1
       17 GETUPVAL                         R2 5
       18 GETUPVAL                         R4 6
       19 MOVE                             R5 R1
       20 CALL                             R4 1 -1
       21 NAMECALL                         R2 R2 K3 ["dispatch"]
       23 CALL                             R2 -1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 3
       26 MOVE                             R3 R0
       27 NAMECALL                         R1 R1 K4 ["getUserFriends"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 5
       31 GETUPVAL                         R4 6
       32 MOVE                             R5 R1
       33 CALL                             R4 1 -1
       34 NAMECALL                         R2 R2 K3 ["dispatch"]
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["gameMetadataController"]
        2 GETTABLEKS                       R3 R1 K1 ["socialController"]
        4 GETIMPORT                        R5 K3 [game]
        6 GETTABLEKS                       R4 R5 K4 ["GameId"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Disconnect"]
        5 CALL                             R2 1 0
        6 LOADNIL                          R2
        7 SETUPVAL                         R2 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["MultiGetCanCollaborate"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["MultiGetCanCollaborateRetrieved"]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R3 R3 K1 ["Connect"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETIMPORT                        R3 K3 [pcall]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CALL                             R3 1 2
       17 JUMPIF                           R3 ; [+8]
       18 JUMPIFNOT                        R2 ; [+4]
       19 NAMECALL                         R5 R2 K4 ["Disconnect"]
       21 CALL                             R5 1 0
       22 LOADNIL                          R2
       23 MOVE                             R5 R1
       24 MOVE                             R6 R4
       25 CALL                             R5 1 0
       26 CLOSEUPVALS                      R2
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K1 ["await"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["fflagManageCollaboratorsActionNeededLabel"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 LENGTH                           R2 R1
        6 LOADN                            R3 0
        7 JUMPIFNOTLE                      R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETIMPORT                        R2 K3 [table.concat]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K4 [","]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R2
       19 GETIMPORT                        R4 K6 [pcall]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CALL                             R4 1 2
       26 JUMPIFNOT                        R4 ; [+1]
       27 JUMPIF                           R5 ; [+1]
       28 RETURN                           R0 0
       29 NEWTABLE                         R6 0 0
       31 GETIMPORT                        R7 K8 [pairs]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 3
       35 FORGPREP_NEXT                    R7
       36 GETTABLEKS                       R12 R11 K9 ["UserId"]
       38 GETTABLEKS                       R13 R11 K10 ["Error"]
       40 SETTABLE                         R13 R6 R12
       41 FORGLOOP                         R7 2 ; [-6]
       43 GETUPVAL                         R9 3
       44 MOVE                             R10 R6
       45 CALL                             R9 1 -1
       46 NAMECALL                         R7 R0 K11 ["dispatch"]
       48 CALL                             R7 -1 0
       49 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorName"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R1 K1 ["getCreatorId"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K2 ["getCreatorType"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K6 [Enum.CreatorType.Group]
       17 JUMPIFNOTEQ                      R2 R3 ; [+16]
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R1
       22 MOVE                             R7 R0
       23 NAMECALL                         R3 R3 K7 ["getGranularPermissions"]
       25 CALL                             R3 4 2
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R7 4
       28 MOVE                             R8 R3
       29 MOVE                             R9 R4
       30 CALL                             R7 2 -1
       31 NAMECALL                         R5 R5 K8 ["dispatch"]
       33 CALL                             R5 -1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorName"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R1 K1 ["getCreatorId"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K2 ["getCreatorType"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R0
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 NAMECALL                         R3 R3 K3 ["getPermissions"]
       22 CALL                             R3 5 2
       23 GETUPVAL                         R5 3
       24 GETUPVAL                         R7 4
       25 MOVE                             R8 R3
       26 CALL                             R7 1 -1
       27 NAMECALL                         R5 R5 K4 ["dispatch"]
       29 CALL                             R5 -1 0
       30 GETUPVAL                         R5 3
       31 GETUPVAL                         R7 5
       32 MOVE                             R8 R4
       33 CALL                             R7 1 -1
       34 NAMECALL                         R5 R5 K4 ["dispatch"]
       36 CALL                             R5 -1 0
       37 GETUPVAL                         R6 6
       38 GETTABLEKS                       R5 R6 K5 ["fflagManageCollaboratorsActionNeededLabel"]
       40 JUMPIF                           R5 ; [+1]
       41 RETURN                           R0 0
       42 NEWTABLE                         R5 0 0
       44 GETUPVAL                         R8 7
       45 GETTABLEKS                       R7 R8 K6 ["UserSubjectKey"]
       47 GETTABLE                         R6 R3 R7
       48 JUMPIF                           R6 ; [+1]
       49 RETURN                           R0 0
       50 GETIMPORT                        R6 K8 [pairs]
       52 GETUPVAL                         R10 7
       53 GETTABLEKS                       R9 R10 K6 ["UserSubjectKey"]
       55 GETTABLE                         R7 R3 R9
       56 CALL                             R6 1 3
       57 FORGPREP_NEXT                    R6
       58 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       60 MOVE                             R12 R5
       61 MOVE                             R13 R9
       62 GETIMPORT                        R11 K11 [table.insert]
       64 CALL                             R11 2 0
       65 FORGLOOP                         R6 2 ; [-8]
       67 GETUPVAL                         R6 8
       68 GETUPVAL                         R7 3
       69 MOVE                             R8 R5
       70 CALL                             R6 2 0
       71 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorType"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 GETIMPORT                        R1 K5 [Enum.CreatorType.Group]
       14 JUMPIFNOTEQ                      R0 R1 ; [+41]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R3 1
       18 NAMECALL                         R1 R1 K6 ["getCreatorId"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 4
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K7 ["getOwnerId"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 2
       27 GETUPVAL                         R5 5
       28 MOVE                             R6 R2
       29 CALL                             R5 1 -1
       30 NAMECALL                         R3 R3 K1 ["dispatch"]
       32 CALL                             R3 -1 0
       33 GETUPVAL                         R3 6
       34 NAMECALL                         R3 R3 K8 ["GetUserId"]
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQ                      R2 R3 ; [+24]
       39 GETUPVAL                         R3 7
       40 NAMECALL                         R3 R3 K9 ["clearCache"]
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 7
       44 MOVE                             R5 R1
       45 NAMECALL                         R3 R3 K10 ["getGroupRolePermissions"]
       47 CALL                             R3 2 1
       48 GETUPVAL                         R4 2
       49 GETUPVAL                         R6 8
       50 MOVE                             R7 R3
       51 CALL                             R6 1 -1
       52 NAMECALL                         R4 R4 K1 ["dispatch"]
       54 CALL                             R4 -1 0
       55 RETURN                           R0 0
       56 GETIMPORT                        R1 K12 [Enum.CreatorType.User]
       58 JUMPIFNOTEQ                      R0 R1 ; [+3]
       60 GETUPVAL                         R1 9
       61 CALL                             R1 0 0
       62 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorName"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorId"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getMinimumAgeRecommendation"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 MOVE                             R4 R0
        9 CALL                             R3 1 -1
       10 NAMECALL                         R1 R1 K1 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["gameMetadataController"]
        2 GETTABLEKS                       R3 R1 K1 ["groupMetadataController"]
        4 GETTABLEKS                       R4 R1 K2 ["groupRolePermisionsController"]
        6 GETTABLEKS                       R5 R1 K3 ["gamePermissionsController"]
        8 GETTABLEKS                       R6 R1 K4 ["granularPermissionsController"]
       10 GETIMPORT                        R8 K6 [game]
       12 GETTABLEKS                       R7 R8 K7 ["GameId"]
       14 GETGLOBAL                        R8 K8 ["GetLoadFriendsJob"]
       16 MOVE                             R9 R0
       17 MOVE                             R10 R1
       18 CALL                             R8 2 1
       19 NEWTABLE                         R9 0 6
       21 NEWCLOSURE                       R10 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R7
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 NEWCLOSURE                       R11 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R7
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 NEWCLOSURE                       R12 P2
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          VAL R8
       48 NEWCLOSURE                       R13 P3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U10
       53 NEWCLOSURE                       R14 P4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U11
       58 NEWCLOSURE                       R15 P5
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U12
       63 SETLIST                          R9 R10 6 [1]
       65 RETURN                           R9 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETGLOBAL                        R2 K0 ["GetLoadFriendsJob"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETIMPORT                        R3 K3 [coroutine.wrap]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 1
       10 MOVE                             R4 R3
       11 CALL                             R4 0 0
       12 RETURN                           R0 0

PROTO_17:
        0 DUPCLOSURE                       R1 K0 [PROTO_16]
        1 RETURN                           R1 1

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+18]
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+16]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Failed"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 LOADB                            R2 1
       13 SETUPVAL                         R2 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 3
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K5 ["LoadFailed"]
       19 CALL                             R4 1 -1
       20 NAMECALL                         R2 R2 K6 ["dispatch"]
       22 CALL                             R2 -1 0
       23 GETUPVAL                         R3 5
       24 ADDK                             R2 R3 K7 [1]
       25 SETUPVAL                         R2 5
       26 GETUPVAL                         R2 5
       27 GETUPVAL                         R4 6
       28 LENGTH                           R3 R4
       29 JUMPIFNOTEQ                      R2 R3 ; [+12]
       31 GETUPVAL                         R2 1
       32 JUMPIF                           R2 ; [+9]
       33 GETUPVAL                         R2 2
       34 GETUPVAL                         R4 3
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R5 R6 K8 ["Loaded"]
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K6 ["dispatch"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_19:
        0 GETGLOBAL                        R2 K0 ["GetPermissionsLoadJobs"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R5 0
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["Loading"]
        9 CALL                             R5 1 -1
       10 NAMECALL                         R3 R0 K2 ["dispatch"]
       12 CALL                             R3 -1 0
       13 LOADN                            R3 0
       14 LOADB                            R4 0
       15 GETIMPORT                        R5 K4 [ipairs]
       17 MOVE                             R6 R2
       18 CALL                             R5 1 3
       19 FORGPREP_INEXT                   R5
       20 GETIMPORT                        R10 K7 [coroutine.wrap]
       22 NEWCLOSURE                       R11 P0
       23 CAPTURE                          VAL R9
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R2
       30 CALL                             R10 1 1
       31 MOVE                             R11 R10
       32 CALL                             R11 0 0
       33 FORGLOOP                         R5 2 [inext] ; [-14]
       35 CLOSEUPVALS                      R3
       36 RETURN                           R0 0

PROTO_20:
        0 DUPCLOSURE                       R1 K0 [PROTO_19]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R4 K1 [script]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["Bin"]
       15 GETTABLEKS                       R3 R4 K6 ["defineLuaFlags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R1 K7 ["Packages"]
       22 GETTABLEKS                       R4 R5 K8 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K9 ["Util"]
       27 GETTABLEKS                       R5 R4 K10 ["Promise"]
       29 GETIMPORT                        R6 K12 [game]
       31 LOADK                            R8 K13 ["StudioService"]
       32 NAMECALL                         R6 R6 K14 ["GetService"]
       34 CALL                             R6 2 1
       35 GETIMPORT                        R7 K12 [game]
       37 LOADK                            R9 K15 ["Players"]
       38 NAMECALL                         R7 R7 K14 ["GetService"]
       40 CALL                             R7 2 1
       41 GETIMPORT                        R8 K12 [game]
       43 LOADK                            R10 K16 ["CollaboratorsService"]
       44 NAMECALL                         R8 R8 K14 ["GetService"]
       46 CALL                             R8 2 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R12 R1 K17 ["Src"]
       51 GETTABLEKS                       R11 R12 K18 ["Actions"]
       53 GETTABLEKS                       R10 R11 K19 ["SetLoadState"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R13 R1 K17 ["Src"]
       60 GETTABLEKS                       R12 R13 K9 ["Util"]
       62 GETTABLEKS                       R11 R12 K20 ["LoadState"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K4 [require]
       67 GETTABLEKS                       R14 R1 K17 ["Src"]
       69 GETTABLEKS                       R13 R14 K9 ["Util"]
       71 GETTABLEKS                       R12 R13 K21 ["PermissionsConstants"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K4 [require]
       76 GETTABLEKS                       R15 R1 K17 ["Src"]
       78 GETTABLEKS                       R14 R15 K18 ["Actions"]
       80 GETTABLEKS                       R13 R14 K22 ["SetCurrentUserPermissions"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K4 [require]
       85 GETTABLEKS                       R16 R1 K17 ["Src"]
       87 GETTABLEKS                       R15 R16 K18 ["Actions"]
       89 GETTABLEKS                       R14 R15 K23 ["SetCurrentGranularPermissions"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R17 R1 K17 ["Src"]
       96 GETTABLEKS                       R16 R17 K18 ["Actions"]
       98 GETTABLEKS                       R15 R16 K24 ["SetCurrentGroupMetadata"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K4 [require]
      103 GETTABLEKS                       R18 R1 K17 ["Src"]
      105 GETTABLEKS                       R17 R18 K18 ["Actions"]
      107 GETTABLEKS                       R16 R17 K25 ["SetCreatorType"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K4 [require]
      112 GETTABLEKS                       R19 R1 K17 ["Src"]
      114 GETTABLEKS                       R18 R19 K18 ["Actions"]
      116 GETTABLEKS                       R17 R18 K26 ["SetCreatorName"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K4 [require]
      121 GETTABLEKS                       R20 R1 K17 ["Src"]
      123 GETTABLEKS                       R19 R20 K18 ["Actions"]
      125 GETTABLEKS                       R18 R19 K27 ["SetCreatorId"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K4 [require]
      130 GETTABLEKS                       R21 R1 K17 ["Src"]
      132 GETTABLEKS                       R20 R21 K18 ["Actions"]
      134 GETTABLEKS                       R19 R20 K28 ["SetCreatorFriends"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K4 [require]
      139 GETTABLEKS                       R22 R1 K17 ["Src"]
      141 GETTABLEKS                       R21 R22 K18 ["Actions"]
      143 GETTABLEKS                       R20 R21 K29 ["SetGroupOwnerId"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K4 [require]
      148 GETTABLEKS                       R23 R1 K17 ["Src"]
      150 GETTABLEKS                       R22 R23 K18 ["Actions"]
      152 GETTABLEKS                       R21 R22 K30 ["SetGroupRolePermissions"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K4 [require]
      157 GETTABLEKS                       R24 R1 K17 ["Src"]
      159 GETTABLEKS                       R23 R24 K18 ["Actions"]
      161 GETTABLEKS                       R22 R23 K31 ["SetUserMinimumAge"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K4 [require]
      166 GETTABLEKS                       R25 R1 K17 ["Src"]
      168 GETTABLEKS                       R24 R25 K18 ["Actions"]
      170 GETTABLEKS                       R23 R24 K32 ["SetCanCollaborateResponses"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K4 [require]
      175 GETTABLEKS                       R26 R1 K17 ["Src"]
      177 GETTABLEKS                       R25 R26 K9 ["Util"]
      179 GETTABLEKS                       R24 R25 K33 ["getFFlagCallNewFriendsAPI"]
      181 CALL                             R23 1 1
      182 DUPCLOSURE                       R24 K34 [PROTO_1]
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R18
      186 SETGLOBAL                        R24 K35 ["GetLoadFriendsJob"]
      188 DUPCLOSURE                       R24 K36 [PROTO_7]
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R22
      193 DUPCLOSURE                       R25 K37 [PROTO_14]
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R21
      207 SETGLOBAL                        R25 K38 ["GetPermissionsLoadJobs"]
      209 DUPCLOSURE                       R25 K39 [PROTO_17]
      210 SETTABLEKS                       R25 R0 K40 ["LoadFriends"]
      212 DUPCLOSURE                       R25 K41 [PROTO_20]
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R10
      215 SETTABLEKS                       R25 R0 K42 ["LoadPermissions"]
      217 RETURN                           R0 1
