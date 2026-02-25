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

PROTO_3:
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
       37 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       34 NEWCLOSURE                       R12 P2
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R8
       45 NEWCLOSURE                       R13 P3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U7
       50 NEWCLOSURE                       R14 P4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U8
       55 NEWCLOSURE                       R15 P5
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U9
       60 SETLIST                          R9 R10 6 [1]
       62 RETURN                           R9 1

PROTO_9:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 DUPCLOSURE                       R1 K0 [PROTO_10]
        1 RETURN                           R1 1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 DUPCLOSURE                       R1 K0 [PROTO_13]
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
       11 GETIMPORT                        R2 K4 [game]
       13 LOADK                            R4 K5 ["StudioService"]
       14 NAMECALL                         R2 R2 K6 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K4 [game]
       19 LOADK                            R5 K7 ["Players"]
       20 NAMECALL                         R3 R3 K6 ["GetService"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R7 R1 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Actions"]
       29 GETTABLEKS                       R5 R6 K12 ["SetLoadState"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R8 R1 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Util"]
       38 GETTABLEKS                       R6 R7 K14 ["LoadState"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R9 R1 K10 ["Src"]
       45 GETTABLEKS                       R8 R9 K11 ["Actions"]
       47 GETTABLEKS                       R7 R8 K15 ["SetCurrentUserPermissions"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R10 R1 K10 ["Src"]
       54 GETTABLEKS                       R9 R10 K11 ["Actions"]
       56 GETTABLEKS                       R8 R9 K16 ["SetCurrentGranularPermissions"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R11 R1 K10 ["Src"]
       63 GETTABLEKS                       R10 R11 K11 ["Actions"]
       65 GETTABLEKS                       R9 R10 K17 ["SetCurrentGroupMetadata"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R12 R1 K10 ["Src"]
       72 GETTABLEKS                       R11 R12 K11 ["Actions"]
       74 GETTABLEKS                       R10 R11 K18 ["SetCreatorType"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R13 R1 K10 ["Src"]
       81 GETTABLEKS                       R12 R13 K11 ["Actions"]
       83 GETTABLEKS                       R11 R12 K19 ["SetCreatorName"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R14 R1 K10 ["Src"]
       90 GETTABLEKS                       R13 R14 K11 ["Actions"]
       92 GETTABLEKS                       R12 R13 K20 ["SetCreatorId"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R15 R1 K10 ["Src"]
       99 GETTABLEKS                       R14 R15 K11 ["Actions"]
      101 GETTABLEKS                       R13 R14 K21 ["SetCreatorFriends"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R16 R1 K10 ["Src"]
      108 GETTABLEKS                       R15 R16 K11 ["Actions"]
      110 GETTABLEKS                       R14 R15 K22 ["SetGroupOwnerId"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K9 [require]
      115 GETTABLEKS                       R17 R1 K10 ["Src"]
      117 GETTABLEKS                       R16 R17 K11 ["Actions"]
      119 GETTABLEKS                       R15 R16 K23 ["SetGroupRolePermissions"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K9 [require]
      124 GETTABLEKS                       R18 R1 K10 ["Src"]
      126 GETTABLEKS                       R17 R18 K11 ["Actions"]
      128 GETTABLEKS                       R16 R17 K24 ["SetUserMinimumAge"]
      130 CALL                             R15 1 1
      131 GETIMPORT                        R16 K9 [require]
      133 GETTABLEKS                       R19 R1 K10 ["Src"]
      135 GETTABLEKS                       R18 R19 K13 ["Util"]
      137 GETTABLEKS                       R17 R18 K25 ["getFFlagCallNewFriendsAPI"]
      139 CALL                             R16 1 1
      140 DUPCLOSURE                       R17 K26 [PROTO_1]
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R12
      144 SETGLOBAL                        R17 K27 ["GetLoadFriendsJob"]
      146 DUPCLOSURE                       R17 K28 [PROTO_8]
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R15
      157 SETGLOBAL                        R17 K29 ["GetPermissionsLoadJobs"]
      159 DUPCLOSURE                       R17 K30 [PROTO_11]
      160 SETTABLEKS                       R17 R0 K31 ["LoadFriends"]
      162 DUPCLOSURE                       R17 K32 [PROTO_14]
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R5
      165 SETTABLEKS                       R17 R0 K33 ["LoadPermissions"]
      167 RETURN                           R0 1
