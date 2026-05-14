PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["isActive"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["isFriendsOnly"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getCreatorName"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K1 ["dispatch"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getCreatorId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K1 ["dispatch"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getCreatorType"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K1 ["dispatch"]
       11 CALL                             R2 -1 0
       12 GETIMPORT                        R2 K5 [Enum.CreatorType.Group]
       14 JUMPIFNOTEQ                      R1 R2 ; [+31]
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R2 R2 K6 ["getCreatorId"]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 4
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K7 ["getOwnerId"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 4
       27 MOVE                             R6 R2
       28 NAMECALL                         R4 R4 K8 ["getOwnerName"]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 2
       32 GETUPVAL                         R7 5
       33 MOVE                             R8 R3
       34 CALL                             R7 1 -1
       35 NAMECALL                         R5 R5 K1 ["dispatch"]
       37 CALL                             R5 -1 0
       38 GETUPVAL                         R5 2
       39 GETUPVAL                         R7 6
       40 MOVE                             R8 R4
       41 CALL                             R7 1 -1
       42 NAMECALL                         R5 R5 K1 ["dispatch"]
       44 CALL                             R5 -1 0
       45 RETURN                           R0 0
       46 GETIMPORT                        R2 K10 [Enum.CreatorType.User]
       48 JUMPIFNOTEQ                      R1 R2 ; [+18]
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R4 1
       52 NAMECALL                         R2 R2 K6 ["getCreatorId"]
       54 CALL                             R2 2 1
       55 GETUPVAL                         R3 7
       56 MOVE                             R5 R2
       57 NAMECALL                         R3 R3 K11 ["getUserFriends"]
       59 CALL                             R3 2 1
       60 GETUPVAL                         R4 2
       61 GETUPVAL                         R6 8
       62 MOVE                             R7 R3
       63 CALL                             R6 1 -1
       64 NAMECALL                         R4 R4 K1 ["dispatch"]
       66 CALL                             R4 -1 0
       67 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getCreatorName"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R4 1
        7 NAMECALL                         R2 R2 K1 ["getCreatorId"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R5 1
       12 NAMECALL                         R3 R3 K2 ["getCreatorType"]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 2
       16 GETUPVAL                         R6 1
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 NAMECALL                         R4 R4 K3 ["getPermissions"]
       22 CALL                             R4 5 2
       23 SETTABLEKS                       R4 R0 K4 ["permissions"]
       25 SETTABLEKS                       R5 R0 K5 ["groupMetadata"]
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Settings"]
        3 GETTABLEKS                       R2 R2 K1 ["Current"]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOTEQKNIL                  R1 ; [+9]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 NAMECALL                         R1 R1 K2 ["getPaidAccessEnabled"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 CALL                             R2 0 1
       17 SETTABLE                         R1 R0 R2
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Settings"]
        3 GETTABLEKS                       R2 R2 K1 ["Current"]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOTEQKNIL                  R1 ; [+9]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 NAMECALL                         R1 R1 K2 ["getVIPServersEnabled"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 CALL                             R2 0 1
       17 SETTABLE                         R1 R0 R2
       18 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameMetadataController"]
        9 GETTABLEKS                       R5 R1 K4 ["groupMetadataController"]
       11 GETTABLEKS                       R6 R1 K5 ["gamePermissionsController"]
       13 GETTABLEKS                       R7 R1 K6 ["socialController"]
       15 GETTABLEKS                       R8 R1 K7 ["monetizationController"]
       17 NEWTABLE                         R9 0 8
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          VAL R6
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U0
       23 NEWCLOSURE                       R11 P1
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U1
       27 NEWCLOSURE                       R12 P2
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 NEWCLOSURE                       R13 P3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 NEWCLOSURE                       R14 P4
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R7
       46 CAPTURE                          UPVAL U7
       47 NEWCLOSURE                       R15 P5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 NEWCLOSURE                       R16 P6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R3
       56 NEWCLOSURE                       R17 P7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R3
       61 SETLIST                          R9 R10 8 [1]
       63 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["isActive"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setActive"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["isFriendsOnly"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setFriendsOnly"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Current"]
        5 GETTABLEKS                       R0 R0 K2 ["permissions"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Settings"]
       10 GETTABLEKS                       R1 R1 K3 ["Changed"]
       12 GETTABLEKS                       R1 R1 K2 ["permissions"]
       14 JUMPIFEQKNIL                     R1 ; [+8]
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 NAMECALL                         R2 R2 K4 ["setPermissions"]
       22 CALL                             R2 4 0
       23 RETURN                           R0 0

PROTO_12:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gamePermissionsController"]
        9 NEWTABLE                         R5 0 3
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R3
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 NEWCLOSURE                       R8 P2
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 SETLIST                          R5 R6 3 [1]
       25 RETURN                           R5 1

PROTO_13:
        0 DUPTABLE                         R2 K9 [{"IsActive", "IsFriendsOnly", "IsCurrentlyActive", "IsMonetized", "IsInitiallyEnabled", "OwnerId", "OwnerType", "GroupOwnerUserId", "GameId"}]
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 -1
        4 CALL                             R3 -1 1
        5 SETTABLEKS                       R3 R2 K0 ["IsActive"]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 -1
       10 CALL                             R3 -1 1
       11 SETTABLEKS                       R3 R2 K1 ["IsFriendsOnly"]
       13 GETTABLEKS                       R3 R1 K10 ["Settings"]
       15 GETTABLEKS                       R3 R3 K11 ["Current"]
       17 GETTABLEKS                       R3 R3 K12 ["isActive"]
       19 SETTABLEKS                       R3 R2 K2 ["IsCurrentlyActive"]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 2
       23 CALL                             R4 0 -1
       24 CALL                             R3 -1 1
       25 JUMPIF                           R3 ; [+4]
       26 MOVE                             R3 R0
       27 GETUPVAL                         R4 3
       28 CALL                             R4 0 -1
       29 CALL                             R3 -1 1
       30 SETTABLEKS                       R3 R2 K3 ["IsMonetized"]
       32 GETTABLEKS                       R5 R1 K10 ["Settings"]
       34 GETTABLEKS                       R5 R5 K11 ["Current"]
       36 GETUPVAL                         R6 0
       37 CALL                             R6 0 1
       38 GETTABLE                         R4 R5 R6
       39 JUMPIFNOT                        R4 ; [+8]
       40 GETTABLEKS                       R4 R1 K10 ["Settings"]
       42 GETTABLEKS                       R4 R4 K11 ["Current"]
       44 GETUPVAL                         R5 1
       45 CALL                             R5 0 1
       46 GETTABLE                         R3 R4 R5
       47 JUMPIFNOT                        R3 ; [+15]
       48 GETTABLEKS                       R4 R1 K10 ["Settings"]
       50 GETTABLEKS                       R4 R4 K11 ["Current"]
       52 GETUPVAL                         R5 2
       53 CALL                             R5 0 1
       54 GETTABLE                         R3 R4 R5
       55 JUMPIF                           R3 ; [+7]
       56 GETTABLEKS                       R4 R1 K10 ["Settings"]
       58 GETTABLEKS                       R4 R4 K11 ["Current"]
       60 GETUPVAL                         R5 3
       61 CALL                             R5 0 1
       62 GETTABLE                         R3 R4 R5
       63 SETTABLEKS                       R3 R2 K4 ["IsInitiallyEnabled"]
       65 GETTABLEKS                       R3 R1 K13 ["GameOwnerMetadata"]
       67 GETTABLEKS                       R3 R3 K14 ["creatorId"]
       69 SETTABLEKS                       R3 R2 K5 ["OwnerId"]
       71 GETTABLEKS                       R3 R1 K13 ["GameOwnerMetadata"]
       73 GETTABLEKS                       R3 R3 K15 ["creatorType"]
       75 SETTABLEKS                       R3 R2 K6 ["OwnerType"]
       77 GETTABLEKS                       R3 R1 K13 ["GameOwnerMetadata"]
       79 GETTABLEKS                       R3 R3 K16 ["groupOwnerId"]
       81 SETTABLEKS                       R3 R2 K7 ["GroupOwnerUserId"]
       83 GETTABLEKS                       R3 R1 K17 ["Metadata"]
       85 GETTABLEKS                       R3 R3 K18 ["gameId"]
       87 SETTABLEKS                       R3 R2 K8 ["GameId"]
       89 RETURN                           R2 1

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R4 0 -1
        5 CALL                             R3 -1 -1
        6 CALL                             R2 -1 0
        7 JUMP                             ; [+6]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 -1
       12 CALL                             R3 -1 -1
       13 CALL                             R2 -1 0
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R4 2
       17 CALL                             R4 0 1
       18 MOVE                             R5 R0
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R2 K2 [{"IsFriendsOnlyChanged", "IsActiveChanged"}]
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 -1
        4 CALL                             R3 -1 1
        5 SETTABLEKS                       R3 R2 K0 ["IsFriendsOnlyChanged"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 SETTABLEKS                       R3 R2 K1 ["IsActiveChanged"]
       15 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["playabilityWidthRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"playabilityWidth"}]
        9 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R4 K5 ["X"]
       13 SETTABLEKS                       R4 R3 K2 ["playabilityWidth"]
       15 NAMECALL                         R1 R1 K6 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K1 [{"playabilityWidth"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["playabilityWidth"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["playabilityWidthRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onPlayabilityResize"]
       16 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OwnerType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFEQ                         R2 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["OwnerId"]
        8 GETTABLEKS                       R4 R2 K3 ["GroupOwnerUserId"]
       10 NAMECALL                         R5 R0 K4 ["isGroupGame"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+5]
       14 JUMPIFEQ                         R1 R4 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 RETURN                           R5 1
       19 JUMPIFEQ                         R1 R3 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 RETURN                           R5 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["GameId"]
        4 CALL                             R0 1 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R1 1
        3 NOT                              R0 R1
        4 RETURN                           R0 1

PROTO_22:
        0 JUMPIFNOTEQKS                    R0 K0 ["Friends"] ; [+9]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 LOADB                            R3 0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 LOADB                            R2 0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 JUMPIFNOT                        R1 ; [+1]
       15 NOT                              R1 R0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["IsFriendsOnly"]
        5 GETTABLEKS                       R2 R0 K2 ["IsActive"]
        7 GETTABLEKS                       R3 R0 K3 ["IsCurrentlyActive"]
        9 GETTABLEKS                       R4 R0 K4 ["IsActiveChanged"]
       11 GETTABLEKS                       R5 R0 K5 ["IsFriendsOnlyChanged"]
       13 MOVE                             R6 R2
       14 JUMPIFNOT                        R6 ; [+1]
       15 NOT                              R6 R1
       16 GETTABLEKS                       R7 R0 K6 ["IsMonetized"]
       18 GETTABLEKS                       R8 R0 K7 ["IsInitiallyEnabled"]
       20 GETTABLEKS                       R9 R0 K8 ["Stylizer"]
       22 GETUPVAL                         R11 0
       23 NAMECALL                         R11 R11 K9 ["isLoggedInUserGameOwner"]
       25 CALL                             R11 1 1
       26 JUMPIF                           R11 ; [+5]
       27 GETUPVAL                         R10 0
       28 NAMECALL                         R10 R10 K10 ["isGroupGame"]
       30 CALL                             R10 1 1
       31 JUMPIFNOT                        R10 ; [+4]
       32 JUMPIF                           R6 ; [+2]
       33 MOVE                             R10 R8
       34 JUMPIF                           R10 ; [+1]
       35 NOT                              R10 R7
       36 NEWTABLE                         R11 0 2
       38 DUPTABLE                         R12 K15 [{"Description", "Disabled", "Key", "Text"}]
       39 GETUPVAL                         R13 1
       40 LOADK                            R15 K16 ["General"]
       41 LOADK                            R16 K17 ["PlayabilityPublicDesc"]
       42 NAMECALL                         R13 R13 K18 ["getText"]
       44 CALL                             R13 3 1
       45 SETTABLEKS                       R13 R12 K11 ["Description"]
       47 NOT                              R13 R10
       48 SETTABLEKS                       R13 R12 K12 ["Disabled"]
       50 LOADB                            R13 1
       51 SETTABLEKS                       R13 R12 K13 ["Key"]
       53 GETUPVAL                         R13 1
       54 LOADK                            R15 K16 ["General"]
       55 LOADK                            R16 K19 ["PlayabilityPublic"]
       56 NAMECALL                         R13 R13 K18 ["getText"]
       58 CALL                             R13 3 1
       59 SETTABLEKS                       R13 R12 K14 ["Text"]
       61 DUPTABLE                         R13 K15 [{"Description", "Disabled", "Key", "Text"}]
       62 GETUPVAL                         R15 2
       63 CALL                             R15 0 1
       64 JUMPIFNOT                        R15 ; [+7]
       65 GETUPVAL                         R14 1
       66 LOADK                            R16 K16 ["General"]
       67 LOADK                            R17 K20 ["PlayabilityPrivateDescExp"]
       68 NAMECALL                         R14 R14 K18 ["getText"]
       70 CALL                             R14 3 1
       71 JUMP                             ; [+6]
       72 GETUPVAL                         R14 1
       73 LOADK                            R16 K16 ["General"]
       74 LOADK                            R17 K21 ["PlayabilityPrivateDesc"]
       75 NAMECALL                         R14 R14 K18 ["getText"]
       77 CALL                             R14 3 1
       78 SETTABLEKS                       R14 R13 K11 ["Description"]
       80 NOT                              R14 R10
       81 SETTABLEKS                       R14 R13 K12 ["Disabled"]
       83 LOADB                            R14 0
       84 SETTABLEKS                       R14 R13 K13 ["Key"]
       86 GETUPVAL                         R14 1
       87 LOADK                            R16 K16 ["General"]
       88 LOADK                            R17 K22 ["PlayabilityPrivate"]
       89 NAMECALL                         R14 R14 K18 ["getText"]
       91 CALL                             R14 3 1
       92 SETTABLEKS                       R14 R13 K14 ["Text"]
       94 SETLIST                          R11 R12 2 [1]
       96 GETUPVAL                         R12 0
       97 NAMECALL                         R12 R12 K10 ["isGroupGame"]
       99 CALL                             R12 1 1
      100 JUMPIF                           R12 ; [+93]
      101 GETUPVAL                         R12 3
      102 CALL                             R12 0 1
      103 JUMPIFNOT                        R12 ; [+60]
      104 GETUPVAL                         R12 4
      105 LOADK                            R14 K23 ["RenameFriendsToConnections"]
      106 NAMECALL                         R12 R12 K24 ["GetPluginPolicy"]
      108 CALL                             R12 2 1
      109 JUMPIFNOT                        R12 ; [+6]
      110 GETTABLEKS                       R14 R12 K25 ["Enabled"]
      112 JUMPIFNOT                        R14 ; [+3]
      113 GETTABLEKS                       R13 R12 K25 ["Enabled"]
      115 JUMP                             ; [+1]
      116 LOADB                            R13 0
      117 LOADN                            R16 1
      118 DUPTABLE                         R17 K15 [{"Description", "Disabled", "Key", "Text"}]
      119 JUMPIFNOT                        R13 ; [+7]
      120 GETUPVAL                         R18 1
      121 LOADK                            R20 K16 ["General"]
      122 LOADK                            R21 K26 ["PlayabilityConnectionsDesc"]
      123 NAMECALL                         R18 R18 K18 ["getText"]
      125 CALL                             R18 3 1
      126 JUMP                             ; [+6]
      127 GETUPVAL                         R18 1
      128 LOADK                            R20 K16 ["General"]
      129 LOADK                            R21 K27 ["PlayabilityFriendsDesc"]
      130 NAMECALL                         R18 R18 K18 ["getText"]
      132 CALL                             R18 3 1
      133 SETTABLEKS                       R18 R17 K11 ["Description"]
      135 NOT                              R18 R10
      136 SETTABLEKS                       R18 R17 K12 ["Disabled"]
      138 LOADK                            R18 K28 ["Friends"]
      139 SETTABLEKS                       R18 R17 K13 ["Key"]
      141 JUMPIFNOT                        R13 ; [+7]
      142 GETUPVAL                         R18 1
      143 LOADK                            R20 K16 ["General"]
      144 LOADK                            R21 K29 ["PlayabilityConnections"]
      145 NAMECALL                         R18 R18 K18 ["getText"]
      147 CALL                             R18 3 1
      148 JUMP                             ; [+6]
      149 GETUPVAL                         R18 1
      150 LOADK                            R20 K16 ["General"]
      151 LOADK                            R21 K30 ["PlayabilityFriends"]
      152 NAMECALL                         R18 R18 K18 ["getText"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K14 ["Text"]
      157 FASTCALL3                        TABLE_INSERT R11 R16 R17
      159 MOVE                             R15 R11
      160 GETIMPORT                        R14 K33 [table.insert]
      162 CALL                             R14 3 0
      163 JUMP                             ; [+30]
      164 LOADN                            R14 1
      165 DUPTABLE                         R15 K15 [{"Description", "Disabled", "Key", "Text"}]
      166 GETUPVAL                         R16 1
      167 LOADK                            R18 K16 ["General"]
      168 LOADK                            R19 K27 ["PlayabilityFriendsDesc"]
      169 NAMECALL                         R16 R16 K18 ["getText"]
      171 CALL                             R16 3 1
      172 SETTABLEKS                       R16 R15 K11 ["Description"]
      174 NOT                              R16 R10
      175 SETTABLEKS                       R16 R15 K12 ["Disabled"]
      177 LOADK                            R16 K28 ["Friends"]
      178 SETTABLEKS                       R16 R15 K13 ["Key"]
      180 GETUPVAL                         R16 1
      181 LOADK                            R18 K16 ["General"]
      182 LOADK                            R19 K30 ["PlayabilityFriends"]
      183 NAMECALL                         R16 R16 K18 ["getText"]
      185 CALL                             R16 3 1
      186 SETTABLEKS                       R16 R15 K14 ["Text"]
      188 FASTCALL3                        TABLE_INSERT R11 R14 R15
      190 MOVE                             R13 R11
      191 GETIMPORT                        R12 K33 [table.insert]
      193 CALL                             R12 3 0
      194 NOT                              R12 R10
      195 GETUPVAL                         R13 5
      196 GETTABLEKS                       R13 R13 K34 ["new"]
      198 CALL                             R13 0 1
      199 DUPTABLE                         R14 K36 [{"PlayabilityWidget"}]
      200 GETUPVAL                         R15 6
      201 GETTABLEKS                       R15 R15 K37 ["createElement"]
      203 GETUPVAL                         R16 7
      204 DUPTABLE                         R17 K43 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Spacing", "LayoutOrder"}]
      205 GETIMPORT                        R18 K46 [Enum.AutomaticSize.Y]
      207 SETTABLEKS                       R18 R17 K38 ["AutomaticSize"]
      209 GETIMPORT                        R18 K48 [Enum.HorizontalAlignment.Left]
      211 SETTABLEKS                       R18 R17 K39 ["HorizontalAlignment"]
      213 GETIMPORT                        R18 K51 [Enum.FillDirection.Vertical]
      215 SETTABLEKS                       R18 R17 K40 ["Layout"]
      217 GETTABLEKS                       R18 R9 K52 ["playabilityWidget"]
      219 GETTABLEKS                       R18 R18 K53 ["spacing"]
      221 SETTABLEKS                       R18 R17 K41 ["Spacing"]
      223 LOADN                            R18 1
      224 SETTABLEKS                       R18 R17 K42 ["LayoutOrder"]
      226 DUPTABLE                         R18 K58 [{"PlayabilityWidthProbe", "GeneralPlaybilityWarning", "TitlePane", "PlayabilityWarning"}]
      227 GETUPVAL                         R19 6
      228 GETTABLEKS                       R19 R19 K37 ["createElement"]
      230 LOADK                            R20 K59 ["Frame"]
      231 NEWTABLE                         R21 8 0
      233 LOADN                            R22 1
      234 SETTABLEKS                       R22 R21 K60 ["BackgroundTransparency"]
      236 LOADN                            R22 20
      237 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      239 GETIMPORT                        R22 K62 [UDim2.new]
      241 LOADN                            R23 1
      242 LOADN                            R24 0
      243 LOADN                            R25 0
      244 LOADN                            R26 0
      245 CALL                             R22 4 1
      246 SETTABLEKS                       R22 R21 K63 ["Size"]
      248 GETUPVAL                         R22 6
      249 GETTABLEKS                       R22 R22 K64 ["Ref"]
      251 GETUPVAL                         R23 0
      252 GETTABLEKS                       R23 R23 K65 ["playabilityWidthRef"]
      254 SETTABLE                         R23 R21 R22
      255 GETUPVAL                         R22 6
      256 GETTABLEKS                       R22 R22 K66 ["Change"]
      258 GETTABLEKS                       R22 R22 K67 ["AbsoluteSize"]
      260 GETUPVAL                         R23 0
      261 GETTABLEKS                       R23 R23 K68 ["onPlayabilityResize"]
      263 SETTABLE                         R23 R21 R22
      264 CALL                             R19 2 1
      265 SETTABLEKS                       R19 R18 K54 ["PlayabilityWidthProbe"]
      267 GETUPVAL                         R19 6
      268 GETTABLEKS                       R19 R19 K37 ["createElement"]
      270 GETUPVAL                         R20 7
      271 DUPTABLE                         R21 K69 [{"Layout", "AutomaticSize", "Spacing", "LayoutOrder"}]
      272 GETIMPORT                        R22 K71 [Enum.FillDirection.Horizontal]
      274 SETTABLEKS                       R22 R21 K40 ["Layout"]
      276 GETIMPORT                        R22 K46 [Enum.AutomaticSize.Y]
      278 SETTABLEKS                       R22 R21 K38 ["AutomaticSize"]
      280 LOADN                            R22 6
      281 SETTABLEKS                       R22 R21 K41 ["Spacing"]
      283 LOADN                            R22 1
      284 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      286 DUPTABLE                         R22 K73 [{"Icon", "Text"}]
      287 GETUPVAL                         R23 6
      288 GETTABLEKS                       R23 R23 K37 ["createElement"]
      290 LOADK                            R24 K74 ["ImageLabel"]
      291 DUPTABLE                         R25 K77 [{"BackgroundTransparency", "Image", "ImageColor3", "Size", "LayoutOrder"}]
      292 LOADN                            R26 1
      293 SETTABLEKS                       R26 R25 K60 ["BackgroundTransparency"]
      295 GETTABLEKS                       R26 R9 K78 ["warningIcon"]
      297 SETTABLEKS                       R26 R25 K75 ["Image"]
      299 GETTABLEKS                       R26 R9 K79 ["warningColor"]
      301 SETTABLEKS                       R26 R25 K76 ["ImageColor3"]
      303 GETIMPORT                        R26 K81 [UDim2.fromOffset]
      305 LOADN                            R27 16
      306 LOADN                            R28 16
      307 CALL                             R26 2 1
      308 SETTABLEKS                       R26 R25 K63 ["Size"]
      310 LOADN                            R26 0
      311 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      313 CALL                             R23 2 1
      314 SETTABLEKS                       R23 R22 K72 ["Icon"]
      316 GETUPVAL                         R23 6
      317 GETTABLEKS                       R23 R23 K37 ["createElement"]
      319 GETUPVAL                         R24 8
      320 DUPTABLE                         R25 K88 [{"OnLinkClicked", "Text", "LinkPlaceholder", "LinkText", "MaxWidth", "Stylizer", "TextProps", "TextWrapped", "HorizontalAlignment", "LayoutOrder"}]
      321 NEWCLOSURE                       R26 P0
      322 CAPTURE                          UPVAL U9
      323 CAPTURE                          VAL R0
      324 SETTABLEKS                       R26 R25 K82 ["OnLinkClicked"]
      326 GETUPVAL                         R26 1
      327 LOADK                            R28 K16 ["General"]
      328 LOADK                            R29 K57 ["PlayabilityWarning"]
      329 DUPTABLE                         R30 K90 [{"link"}]
      330 GETUPVAL                         R31 1
      331 LOADK                            R33 K16 ["General"]
      332 LOADK                            R34 K91 ["PlayabilityWarningLink"]
      333 NAMECALL                         R31 R31 K18 ["getText"]
      335 CALL                             R31 3 1
      336 SETTABLEKS                       R31 R30 K89 ["link"]
      338 NAMECALL                         R26 R26 K18 ["getText"]
      340 CALL                             R26 4 1
      341 SETTABLEKS                       R26 R25 K14 ["Text"]
      343 GETUPVAL                         R26 1
      344 LOADK                            R28 K16 ["General"]
      345 LOADK                            R29 K91 ["PlayabilityWarningLink"]
      346 NAMECALL                         R26 R26 K18 ["getText"]
      348 CALL                             R26 3 1
      349 SETTABLEKS                       R26 R25 K83 ["LinkPlaceholder"]
      351 GETUPVAL                         R26 1
      352 LOADK                            R28 K16 ["General"]
      353 LOADK                            R29 K91 ["PlayabilityWarningLink"]
      354 NAMECALL                         R26 R26 K18 ["getText"]
      356 CALL                             R26 3 1
      357 SETTABLEKS                       R26 R25 K84 ["LinkText"]
      359 GETUPVAL                         R27 0
      360 GETTABLEKS                       R27 R27 K92 ["state"]
      362 GETTABLEKS                       R27 R27 K93 ["playabilityWidth"]
      364 LOADN                            R28 0
      365 JUMPIFNOTLT                      R28 R27 ; [+8]
      367 GETUPVAL                         R27 0
      368 GETTABLEKS                       R27 R27 K92 ["state"]
      370 GETTABLEKS                       R27 R27 K93 ["playabilityWidth"]
      372 SUBK                             R26 R27 K94 [22]
      373 JUMPIF                           R26 ; [+4]
      374 GETTABLEKS                       R26 R9 K95 ["textWithInlineLink"]
      376 GETTABLEKS                       R26 R26 K96 ["maxWidth"]
      378 SETTABLEKS                       R26 R25 K85 ["MaxWidth"]
      380 DUPTABLE                         R26 K98 [{"TextColor"}]
      381 GETTABLEKS                       R27 R9 K79 ["warningColor"]
      383 SETTABLEKS                       R27 R26 K97 ["TextColor"]
      385 SETTABLEKS                       R26 R25 K8 ["Stylizer"]
      387 GETUPVAL                         R26 10
      388 GETTABLEKS                       R26 R26 K99 ["Dictionary"]
      390 GETTABLEKS                       R26 R26 K100 ["join"]
      392 GETTABLEKS                       R27 R9 K101 ["fontStyle"]
      394 GETTABLEKS                       R27 R27 K102 ["Warning"]
      396 DUPTABLE                         R28 K104 [{"BackgroundTransparency", "TextXAlignment"}]
      397 LOADN                            R29 1
      398 SETTABLEKS                       R29 R28 K60 ["BackgroundTransparency"]
      400 GETIMPORT                        R29 K105 [Enum.TextXAlignment.Left]
      402 SETTABLEKS                       R29 R28 K103 ["TextXAlignment"]
      404 CALL                             R26 2 1
      405 SETTABLEKS                       R26 R25 K86 ["TextProps"]
      407 LOADB                            R26 1
      408 SETTABLEKS                       R26 R25 K87 ["TextWrapped"]
      410 GETIMPORT                        R26 K48 [Enum.HorizontalAlignment.Left]
      412 SETTABLEKS                       R26 R25 K39 ["HorizontalAlignment"]
      414 LOADN                            R26 1
      415 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      417 CALL                             R23 2 1
      418 SETTABLEKS                       R23 R22 K14 ["Text"]
      420 CALL                             R19 3 1
      421 SETTABLEKS                       R19 R18 K55 ["GeneralPlaybilityWarning"]
      423 GETUPVAL                         R19 6
      424 GETTABLEKS                       R19 R19 K37 ["createElement"]
      426 GETUPVAL                         R20 11
      427 DUPTABLE                         R21 K107 [{"LayoutOrder", "Title"}]
      428 LOADN                            R22 2
      429 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      431 GETUPVAL                         R22 1
      432 LOADK                            R24 K16 ["General"]
      433 LOADK                            R25 K108 ["TitlePlayability"]
      434 NAMECALL                         R22 R22 K18 ["getText"]
      436 CALL                             R22 3 1
      437 SETTABLEKS                       R22 R21 K106 ["Title"]
      439 NEWTABLE                         R22 0 1
      441 GETUPVAL                         R23 6
      442 GETTABLEKS                       R23 R23 K37 ["createElement"]
      444 GETUPVAL                         R24 11
      445 DUPTABLE                         R25 K110 [{"Title", "Style"}]
      446 GETUPVAL                         R27 2
      447 CALL                             R27 0 1
      448 JUMPIFNOT                        R27 ; [+7]
      449 GETUPVAL                         R26 1
      450 LOADK                            R28 K16 ["General"]
      451 LOADK                            R29 K111 ["PlayabilityHeaderExp"]
      452 NAMECALL                         R26 R26 K18 ["getText"]
      454 CALL                             R26 3 1
      455 JUMP                             ; [+6]
      456 GETUPVAL                         R26 1
      457 LOADK                            R28 K16 ["General"]
      458 LOADK                            R29 K112 ["PlayabilityHeader"]
      459 NAMECALL                         R26 R26 K18 ["getText"]
      461 CALL                             R26 3 1
      462 SETTABLEKS                       R26 R25 K106 ["Title"]
      464 LOADK                            R26 K113 ["Subtitle"]
      465 SETTABLEKS                       R26 R25 K109 ["Style"]
      467 DUPTABLE                         R26 K115 [{"List"}]
      468 GETUPVAL                         R27 6
      469 GETTABLEKS                       R27 R27 K37 ["createElement"]
      471 GETUPVAL                         R28 12
      472 DUPTABLE                         R29 K121 [{"Buttons", "OnClick", "SelectedKey", "CurrentSelectedKey", "TextSize"}]
      473 SETTABLEKS                       R11 R29 K116 ["Buttons"]
      475 NEWCLOSURE                       R30 P1
      476 CAPTURE                          VAL R5
      477 CAPTURE                          VAL R4
      478 CAPTURE                          VAL R3
      479 SETTABLEKS                       R30 R29 K117 ["OnClick"]
      481 LOADNIL                          R30
      482 SETTABLEKS                       R30 R29 K118 ["SelectedKey"]
      484 JUMPIFNOT                        R1 ; [+2]
      485 LOADK                            R30 K28 ["Friends"]
      486 JUMP                             ; [+1]
      487 MOVE                             R30 R2
      488 SETTABLEKS                       R30 R29 K119 ["CurrentSelectedKey"]
      490 DUPTABLE                         R30 K123 [{"Description", "MainText"}]
      491 GETTABLEKS                       R31 R9 K101 ["fontStyle"]
      493 GETTABLEKS                       R31 R31 K124 ["Subtext"]
      495 GETTABLEKS                       R31 R31 K120 ["TextSize"]
      497 SETTABLEKS                       R31 R30 K11 ["Description"]
      499 GETTABLEKS                       R31 R9 K101 ["fontStyle"]
      501 GETTABLEKS                       R31 R31 K125 ["Normal"]
      503 GETTABLEKS                       R31 R31 K120 ["TextSize"]
      505 SETTABLEKS                       R31 R30 K122 ["MainText"]
      507 SETTABLEKS                       R30 R29 K120 ["TextSize"]
      509 CALL                             R27 2 1
      510 SETTABLEKS                       R27 R26 K114 ["List"]
      512 CALL                             R23 3 -1
      513 SETLIST                          R22 R23 -1 [1]
      515 CALL                             R19 3 1
      516 SETTABLEKS                       R19 R18 K56 ["TitlePane"]
      518 MOVE                             R19 R12
      519 JUMPIFNOT                        R19 ; [+40]
      520 GETUPVAL                         R19 6
      521 GETTABLEKS                       R19 R19 K37 ["createElement"]
      523 GETUPVAL                         R20 13
      524 DUPTABLE                         R21 K126 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextColor", "TextSize", "TextXAlignment"}]
      525 GETIMPORT                        R22 K128 [Enum.AutomaticSize.XY]
      527 SETTABLEKS                       R22 R21 K38 ["AutomaticSize"]
      529 LOADN                            R22 15
      530 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      532 LOADK                            R22 K129 ["SubText"]
      533 SETTABLEKS                       R22 R21 K109 ["Style"]
      535 GETUPVAL                         R22 1
      536 LOADK                            R24 K130 ["AccessPermissions"]
      537 LOADK                            R25 K57 ["PlayabilityWarning"]
      538 NAMECALL                         R22 R22 K18 ["getText"]
      540 CALL                             R22 3 1
      541 SETTABLEKS                       R22 R21 K14 ["Text"]
      543 GETTABLEKS                       R22 R9 K79 ["warningColor"]
      545 SETTABLEKS                       R22 R21 K97 ["TextColor"]
      547 GETTABLEKS                       R22 R9 K101 ["fontStyle"]
      549 GETTABLEKS                       R22 R22 K113 ["Subtitle"]
      551 GETTABLEKS                       R22 R22 K120 ["TextSize"]
      553 SETTABLEKS                       R22 R21 K120 ["TextSize"]
      555 GETIMPORT                        R22 K105 [Enum.TextXAlignment.Left]
      557 SETTABLEKS                       R22 R21 K103 ["TextXAlignment"]
      559 CALL                             R19 2 1
      560 SETTABLEKS                       R19 R18 K57 ["PlayabilityWarning"]
      562 CALL                             R15 3 1
      563 SETTABLEKS                       R15 R14 K35 ["PlayabilityWidget"]
      565 RETURN                           R14 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K2 ["createElement"]
       22 GETUPVAL                         R4 12
       23 DUPTABLE                         R5 K8 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       24 GETUPVAL                         R6 13
       25 SETTABLEKS                       R6 R5 K3 ["SettingsLoadJobs"]
       27 GETUPVAL                         R6 14
       28 SETTABLEKS                       R6 R5 K4 ["SettingsSaveJobs"]
       30 LOADK                            R8 K9 ["General"]
       31 LOADK                            R10 K10 ["Category"]
       32 GETUPVAL                         R11 15
       33 CONCAT                           R9 R10 R11
       34 NAMECALL                         R6 R1 K11 ["getText"]
       36 CALL                             R6 3 1
       37 SETTABLEKS                       R6 R5 K5 ["Title"]
       39 GETUPVAL                         R6 15
       40 SETTABLEKS                       R6 R5 K6 ["PageId"]
       42 SETTABLEKS                       R2 R5 K7 ["CreateChildren"]
       44 CALL                             R3 2 -1
       45 RETURN                           R3 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_26:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_28:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_29:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PluginPolicyService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETIMPORT                        R3 K6 [script]
       19 GETTABLEKS                       R3 R3 K7 ["Parent"]
       21 GETTABLEKS                       R3 R3 K7 ["Parent"]
       23 GETTABLEKS                       R3 R3 K7 ["Parent"]
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R3 K10 ["Packages"]
       29 GETTABLEKS                       R5 R5 K11 ["Roact"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R3 K10 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["Framework"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R3 K10 ["Packages"]
       43 GETTABLEKS                       R7 R7 K13 ["RoactRodux"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R5 K14 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K15 ["withContext"]
       50 GETTABLEKS                       R9 R5 K16 ["UI"]
       52 GETTABLEKS                       R10 R9 K17 ["Pane"]
       54 GETTABLEKS                       R11 R9 K18 ["RadioButtonList"]
       56 GETTABLEKS                       R12 R9 K19 ["TextLabel"]
       58 GETTABLEKS                       R13 R9 K20 ["TitledFrame"]
       60 GETTABLEKS                       R14 R9 K21 ["TextWithInlineLink"]
       62 GETIMPORT                        R15 K9 [require]
       64 GETTABLEKS                       R16 R3 K10 ["Packages"]
       66 GETTABLEKS                       R16 R16 K22 ["Cryo"]
       68 CALL                             R15 1 1
       69 GETIMPORT                        R16 K9 [require]
       71 GETTABLEKS                       R17 R3 K23 ["Src"]
       73 GETTABLEKS                       R17 R17 K24 ["Util"]
       75 GETTABLEKS                       R17 R17 K25 ["BrowserUtils"]
       77 CALL                             R16 1 1
       78 GETTABLEKS                       R16 R16 K26 ["OpenExperienceQuestionnaire"]
       80 GETIMPORT                        R17 K9 [require]
       82 GETTABLEKS                       R18 R3 K23 ["Src"]
       84 GETTABLEKS                       R18 R18 K27 ["Components"]
       86 GETTABLEKS                       R18 R18 K28 ["SettingsPages"]
       88 GETTABLEKS                       R18 R18 K29 ["SettingsPage"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K9 [require]
       93 GETTABLEKS                       R19 R3 K23 ["Src"]
       95 GETTABLEKS                       R19 R19 K30 ["Actions"]
       97 GETTABLEKS                       R19 R19 K31 ["AddChange"]
       99 CALL                             R18 1 1
      100 GETIMPORT                        R19 K9 [require]
      102 GETTABLEKS                       R20 R3 K23 ["Src"]
      104 GETTABLEKS                       R20 R20 K30 ["Actions"]
      106 GETTABLEKS                       R20 R20 K32 ["AddWarning"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K9 [require]
      111 GETTABLEKS                       R21 R3 K23 ["Src"]
      113 GETTABLEKS                       R21 R21 K30 ["Actions"]
      115 GETTABLEKS                       R21 R21 K33 ["DiscardWarning"]
      117 CALL                             R20 1 1
      118 GETIMPORT                        R21 K9 [require]
      120 GETTABLEKS                       R22 R3 K23 ["Src"]
      122 GETTABLEKS                       R22 R22 K30 ["Actions"]
      124 GETTABLEKS                       R22 R22 K34 ["SetCreatorId"]
      126 CALL                             R21 1 1
      127 GETIMPORT                        R22 K9 [require]
      129 GETTABLEKS                       R23 R3 K23 ["Src"]
      131 GETTABLEKS                       R23 R23 K30 ["Actions"]
      133 GETTABLEKS                       R23 R23 K35 ["SetCreatorName"]
      135 CALL                             R22 1 1
      136 GETIMPORT                        R23 K9 [require]
      138 GETTABLEKS                       R24 R3 K23 ["Src"]
      140 GETTABLEKS                       R24 R24 K30 ["Actions"]
      142 GETTABLEKS                       R24 R24 K36 ["SetCreatorType"]
      144 CALL                             R23 1 1
      145 GETIMPORT                        R24 K9 [require]
      147 GETTABLEKS                       R25 R2 K30 ["Actions"]
      149 GETTABLEKS                       R25 R25 K37 ["SetGroupOwnerId"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K9 [require]
      154 GETTABLEKS                       R26 R2 K30 ["Actions"]
      156 GETTABLEKS                       R26 R26 K38 ["SetGroupOwnerName"]
      158 CALL                             R25 1 1
      159 GETIMPORT                        R26 K9 [require]
      161 GETTABLEKS                       R27 R3 K23 ["Src"]
      163 GETTABLEKS                       R27 R27 K30 ["Actions"]
      165 GETTABLEKS                       R27 R27 K39 ["SetCreatorFriends"]
      167 CALL                             R26 1 1
      168 GETIMPORT                        R27 K9 [require]
      170 GETTABLEKS                       R28 R3 K23 ["Src"]
      172 GETTABLEKS                       R28 R28 K40 ["Flags"]
      174 GETTABLEKS                       R28 R28 K41 ["getFFlagStudioFriendToConnection"]
      176 CALL                             R27 1 1
      177 GETIMPORT                        R28 K9 [require]
      179 GETTABLEKS                       R29 R3 K23 ["Src"]
      181 GETTABLEKS                       R29 R29 K40 ["Flags"]
      183 GETTABLEKS                       R29 R29 K42 ["getFFlagGameSettingsGameToExperience"]
      185 CALL                             R28 1 1
      186 GETIMPORT                        R29 K9 [require]
      188 GETTABLEKS                       R30 R3 K23 ["Src"]
      190 GETTABLEKS                       R30 R30 K24 ["Util"]
      192 GETTABLEKS                       R30 R30 K43 ["KeyProvider"]
      194 CALL                             R29 1 1
      195 GETTABLEKS                       R30 R29 K44 ["getIsFriendOnlyKeyName"]
      197 GETTABLEKS                       R31 R29 K45 ["getIsActiveKeyName"]
      199 GETTABLEKS                       R32 R29 K46 ["getIsForSaleKeyName"]
      201 GETTABLEKS                       R33 R29 K47 ["getVipServersIsEnabledKeyName"]
      203 GETIMPORT                        R34 K6 [script]
      205 GETTABLEKS                       R34 R34 K48 ["Name"]
      207 GETTABLEKS                       R35 R5 K24 ["Util"]
      209 GETTABLEKS                       R35 R35 K49 ["LayoutOrderIterator"]
      211 DUPCLOSURE                       R36 K50 [PROTO_8]
      212 CAPTURE                          VAL R31
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R25
      219 CAPTURE                          VAL R26
      220 CAPTURE                          VAL R32
      221 CAPTURE                          VAL R33
      222 DUPCLOSURE                       R37 K51 [PROTO_12]
      223 DUPCLOSURE                       R38 K52 [PROTO_13]
      224 CAPTURE                          VAL R31
      225 CAPTURE                          VAL R30
      226 CAPTURE                          VAL R32
      227 CAPTURE                          VAL R33
      228 DUPCLOSURE                       R39 K53 [PROTO_15]
      229 CAPTURE                          VAL R30
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R31
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R18
      234 GETTABLEKS                       R40 R4 K54 ["PureComponent"]
      236 GETIMPORT                        R42 K6 [script]
      238 GETTABLEKS                       R42 R42 K48 ["Name"]
      240 NAMECALL                         R40 R40 K55 ["extend"]
      242 CALL                             R40 2 1
      243 DUPCLOSURE                       R41 K56 [PROTO_17]
      244 CAPTURE                          VAL R4
      245 SETTABLEKS                       R41 R40 K57 ["init"]
      247 DUPCLOSURE                       R41 K58 [PROTO_18]
      248 SETTABLEKS                       R41 R40 K59 ["isGroupGame"]
      250 DUPCLOSURE                       R41 K60 [PROTO_19]
      251 CAPTURE                          VAL R1
      252 SETTABLEKS                       R41 R40 K61 ["isLoggedInUserGameOwner"]
      254 DUPCLOSURE                       R41 K62 [PROTO_24]
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R27
      257 CAPTURE                          VAL R0
      258 CAPTURE                          VAL R35
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R14
      262 CAPTURE                          VAL R16
      263 CAPTURE                          VAL R15
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R12
      267 CAPTURE                          VAL R17
      268 CAPTURE                          VAL R36
      269 CAPTURE                          VAL R37
      270 CAPTURE                          VAL R34
      271 SETTABLEKS                       R41 R40 K63 ["render"]
      273 MOVE                             R41 R8
      274 DUPTABLE                         R42 K66 [{"Localization", "Stylizer"}]
      275 GETTABLEKS                       R43 R7 K64 ["Localization"]
      277 SETTABLEKS                       R43 R42 K64 ["Localization"]
      279 GETTABLEKS                       R43 R7 K65 ["Stylizer"]
      281 SETTABLEKS                       R43 R42 K65 ["Stylizer"]
      283 CALL                             R41 1 1
      284 MOVE                             R42 R40
      285 CALL                             R41 1 1
      286 MOVE                             R40 R41
      287 GETIMPORT                        R41 K9 [require]
      289 GETTABLEKS                       R42 R3 K23 ["Src"]
      291 GETTABLEKS                       R42 R42 K67 ["Networking"]
      293 GETTABLEKS                       R42 R42 K68 ["settingFromState"]
      295 CALL                             R41 1 1
      296 GETTABLEKS                       R42 R6 K69 ["connect"]
      298 DUPCLOSURE                       R43 K70 [PROTO_26]
      299 CAPTURE                          VAL R41
      300 CAPTURE                          VAL R38
      301 DUPCLOSURE                       R44 K71 [PROTO_29]
      302 CAPTURE                          VAL R18
      303 CAPTURE                          VAL R39
      304 CALL                             R42 2 1
      305 MOVE                             R43 R40
      306 CALL                             R42 1 1
      307 MOVE                             R40 R42
      308 SETTABLEKS                       R34 R40 K72 ["LocalizationId"]
      310 RETURN                           R40 1
