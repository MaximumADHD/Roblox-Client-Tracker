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
        4 GETIMPORT                        R4 K3 [game]
        6 GETTABLEKS                       R4 R4 K4 ["GameId"]
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
        1 GETTABLEKS                       R2 R2 K0 ["fflagManageCollaboratorsActionNeededLabel"]
        3 JUMPIF                           R2 ; [+17]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
        7 JUMPIF                           R2 ; [+13]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["fflagManageCollaboratorsEditorBlockingBanner"]
       11 JUMPIF                           R2 ; [+9]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       15 JUMPIF                           R2 ; [+5]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R1
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R0 K5 ["dispatch"]
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["fflagManageCollaboratorsActionNeededLabel"]
        5 JUMPIF                           R2 ; [+17]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
        9 JUMPIF                           R2 ; [+13]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["fflagManageCollaboratorsEditorBlockingBanner"]
       13 JUMPIF                           R2 ; [+9]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       17 JUMPIF                           R2 ; [+5]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K4 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R1
       25 CALL                             R4 1 -1
       26 NAMECALL                         R2 R0 K5 ["dispatch"]
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0

PROTO_5:
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
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["fflagOwnerRolesetDeprecation2"]
       18 JUMPIFNOT                        R4 ; [+10]
       19 GETIMPORT                        R4 K7 [Enum.CreatorType.Group]
       21 JUMPIFNOTEQ                      R2 R4 ; [+7]
       23 GETUPVAL                         R3 3
       24 MOVE                             R5 R1
       25 NAMECALL                         R3 R3 K8 ["getOwnerId"]
       27 CALL                             R3 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K3 ["fflagOwnerRolesetDeprecation2"]
       33 JUMPIFNOT                        R5 ; [+10]
       34 GETIMPORT                        R5 K7 [Enum.CreatorType.Group]
       36 JUMPIFNOTEQ                      R2 R5 ; [+7]
       38 GETUPVAL                         R4 3
       39 MOVE                             R6 R1
       40 NAMECALL                         R4 R4 K9 ["getOwnerName"]
       42 CALL                             R4 2 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K3 ["fflagOwnerRolesetDeprecation2"]
       50 JUMPIFNOT                        R7 ; [+13]
       51 GETUPVAL                         R7 4
       52 GETUPVAL                         R9 1
       53 MOVE                             R10 R0
       54 MOVE                             R11 R1
       55 MOVE                             R12 R2
       56 MOVE                             R13 R3
       57 MOVE                             R14 R4
       58 NAMECALL                         R7 R7 K10 ["getPermissions"]
       60 CALL                             R7 7 2
       61 MOVE                             R5 R7
       62 MOVE                             R6 R8
       63 JUMP                             ; [+10]
       64 GETUPVAL                         R7 4
       65 GETUPVAL                         R9 1
       66 MOVE                             R10 R0
       67 MOVE                             R11 R1
       68 MOVE                             R12 R2
       69 NAMECALL                         R7 R7 K11 ["getPermissions_DEPRECATED"]
       71 CALL                             R7 5 2
       72 MOVE                             R5 R7
       73 MOVE                             R6 R8
       74 GETUPVAL                         R7 5
       75 GETUPVAL                         R9 6
       76 MOVE                             R10 R5
       77 CALL                             R9 1 -1
       78 NAMECALL                         R7 R7 K12 ["dispatch"]
       80 CALL                             R7 -1 0
       81 GETUPVAL                         R7 5
       82 GETUPVAL                         R9 7
       83 MOVE                             R10 R6
       84 CALL                             R9 1 -1
       85 NAMECALL                         R7 R7 K12 ["dispatch"]
       87 CALL                             R7 -1 0
       88 GETUPVAL                         R7 2
       89 GETTABLEKS                       R7 R7 K13 ["fflagManageCollaboratorsActionNeededLabel"]
       91 JUMPIF                           R7 ; [+17]
       92 GETUPVAL                         R7 2
       93 GETTABLEKS                       R7 R7 K14 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       95 JUMPIF                           R7 ; [+13]
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K15 ["fflagManageCollaboratorsEditorBlockingBanner"]
       99 JUMPIF                           R7 ; [+9]
      100 GETUPVAL                         R7 2
      101 GETTABLEKS                       R7 R7 K16 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      103 JUMPIF                           R7 ; [+5]
      104 GETUPVAL                         R7 2
      105 GETTABLEKS                       R7 R7 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      107 JUMPIF                           R7 ; [+1]
      108 RETURN                           R0 0
      109 NEWTABLE                         R7 0 0
      111 GETUPVAL                         R9 8
      112 GETTABLEKS                       R9 R9 K18 ["UserSubjectKey"]
      114 GETTABLE                         R8 R5 R9
      115 JUMPIFNOT                        R8 ; [+17]
      116 GETIMPORT                        R8 K20 [pairs]
      118 GETUPVAL                         R11 8
      119 GETTABLEKS                       R11 R11 K18 ["UserSubjectKey"]
      121 GETTABLE                         R9 R5 R11
      122 CALL                             R8 1 3
      123 FORGPREP_NEXT                    R8
      124 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      126 MOVE                             R14 R7
      127 MOVE                             R15 R11
      128 GETIMPORT                        R13 K23 [table.insert]
      130 CALL                             R13 2 0
      131 FORGLOOP                         R8 2 ; [-8]
      133 GETIMPORT                        R8 K7 [Enum.CreatorType.Group]
      135 JUMPIFNOTEQ                      R2 R8 ; [+37]
      137 MOVE                             R8 R3
      138 JUMPIFNOTEQKNIL                  R8 ; [+19]
      140 GETUPVAL                         R9 2
      141 GETTABLEKS                       R9 R9 K3 ["fflagOwnerRolesetDeprecation2"]
      143 JUMPIF                           R9 ; [+14]
      144 GETUPVAL                         R9 2
      145 GETTABLEKS                       R9 R9 K16 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      147 JUMPIF                           R9 ; [+4]
      148 GETUPVAL                         R9 2
      149 GETTABLEKS                       R9 R9 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      151 JUMPIFNOT                        R9 ; [+6]
      152 GETUPVAL                         R9 3
      153 MOVE                             R11 R1
      154 NAMECALL                         R9 R9 K8 ["getOwnerId"]
      156 CALL                             R9 2 1
      157 MOVE                             R8 R9
      158 JUMPIFEQKNIL                     R8 ; [+14]
      160 GETUPVAL                         R9 9
      161 NAMECALL                         R9 R9 K24 ["GetUserId"]
      163 CALL                             R9 1 1
      164 JUMPIFNOTEQ                      R8 R9 ; [+8]
      166 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
      168 MOVE                             R10 R7
      169 MOVE                             R11 R8
      170 GETIMPORT                        R9 K23 [table.insert]
      172 CALL                             R9 2 0
      173 GETIMPORT                        R8 K27 [coroutine.wrap]
      175 NEWCLOSURE                       R9 P0
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          VAL R7
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          UPVAL U10
      180 CALL                             R8 1 1
      181 CALL                             R8 0 0
      182 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["gameMetadataController"]
        2 GETTABLEKS                       R3 R1 K1 ["groupMetadataController"]
        4 GETTABLEKS                       R4 R1 K2 ["groupRolePermisionsController"]
        6 GETTABLEKS                       R5 R1 K3 ["gamePermissionsController"]
        8 GETTABLEKS                       R6 R1 K4 ["granularPermissionsController"]
       10 GETIMPORT                        R7 K6 [game]
       12 GETTABLEKS                       R7 R7 K7 ["GameId"]
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
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 NEWCLOSURE                       R12 P2
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          VAL R8
       50 NEWCLOSURE                       R13 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U10
       55 NEWCLOSURE                       R14 P4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U11
       60 NEWCLOSURE                       R15 P5
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U12
       65 SETLIST                          R9 R10 6 [1]
       67 RETURN                           R9 1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 DUPCLOSURE                       R1 K0 [PROTO_12]
        1 RETURN                           R1 1

PROTO_14:
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
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K5 ["LoadFailed"]
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
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K8 ["Loaded"]
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K6 ["dispatch"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_15:
        0 GETGLOBAL                        R2 K0 ["GetPermissionsLoadJobs"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R5 0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["Loading"]
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

PROTO_16:
        0 DUPCLOSURE                       R1 K0 [PROTO_15]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Bin"]
       15 GETTABLEKS                       R3 R3 K6 ["defineLuaFlags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [game]
       20 LOADK                            R5 K9 ["StudioService"]
       21 NAMECALL                         R3 R3 K10 ["GetService"]
       23 CALL                             R3 2 1
       24 GETIMPORT                        R4 K8 [game]
       26 LOADK                            R6 K11 ["Players"]
       27 NAMECALL                         R4 R4 K10 ["GetService"]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R1 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Actions"]
       36 GETTABLEKS                       R6 R6 K14 ["SetLoadState"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R1 K12 ["Src"]
       43 GETTABLEKS                       R7 R7 K15 ["Util"]
       45 GETTABLEKS                       R7 R7 K16 ["LoadState"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R1 K12 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Util"]
       54 GETTABLEKS                       R8 R8 K17 ["PermissionsConstants"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K4 [require]
       59 GETTABLEKS                       R9 R1 K12 ["Src"]
       61 GETTABLEKS                       R9 R9 K13 ["Actions"]
       63 GETTABLEKS                       R9 R9 K18 ["SetCurrentUserPermissions"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R10 R1 K12 ["Src"]
       70 GETTABLEKS                       R10 R10 K13 ["Actions"]
       72 GETTABLEKS                       R10 R10 K19 ["SetCurrentGranularPermissions"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K4 [require]
       77 GETTABLEKS                       R11 R1 K12 ["Src"]
       79 GETTABLEKS                       R11 R11 K13 ["Actions"]
       81 GETTABLEKS                       R11 R11 K20 ["SetCurrentGroupMetadata"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K4 [require]
       86 GETTABLEKS                       R12 R1 K12 ["Src"]
       88 GETTABLEKS                       R12 R12 K13 ["Actions"]
       90 GETTABLEKS                       R12 R12 K21 ["SetCreatorType"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K4 [require]
       95 GETTABLEKS                       R13 R1 K12 ["Src"]
       97 GETTABLEKS                       R13 R13 K13 ["Actions"]
       99 GETTABLEKS                       R13 R13 K22 ["SetCreatorName"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K4 [require]
      104 GETTABLEKS                       R14 R1 K12 ["Src"]
      106 GETTABLEKS                       R14 R14 K13 ["Actions"]
      108 GETTABLEKS                       R14 R14 K23 ["SetCreatorId"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K4 [require]
      113 GETTABLEKS                       R15 R1 K12 ["Src"]
      115 GETTABLEKS                       R15 R15 K13 ["Actions"]
      117 GETTABLEKS                       R15 R15 K24 ["SetCreatorFriends"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K4 [require]
      122 GETTABLEKS                       R16 R1 K12 ["Src"]
      124 GETTABLEKS                       R16 R16 K13 ["Actions"]
      126 GETTABLEKS                       R16 R16 K25 ["SetGroupOwnerId"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K4 [require]
      131 GETTABLEKS                       R17 R1 K12 ["Src"]
      133 GETTABLEKS                       R17 R17 K13 ["Actions"]
      135 GETTABLEKS                       R17 R17 K26 ["SetGroupRolePermissions"]
      137 CALL                             R16 1 1
      138 GETIMPORT                        R17 K4 [require]
      140 GETTABLEKS                       R18 R1 K12 ["Src"]
      142 GETTABLEKS                       R18 R18 K13 ["Actions"]
      144 GETTABLEKS                       R18 R18 K27 ["SetUserMinimumAge"]
      146 CALL                             R17 1 1
      147 GETIMPORT                        R18 K4 [require]
      149 GETTABLEKS                       R19 R1 K12 ["Src"]
      151 GETTABLEKS                       R19 R19 K28 ["Thunks"]
      153 GETTABLEKS                       R19 R19 K29 ["FetchCanCollaborateResponses"]
      155 CALL                             R18 1 1
      156 GETIMPORT                        R19 K4 [require]
      158 GETTABLEKS                       R20 R1 K12 ["Src"]
      160 GETTABLEKS                       R20 R20 K15 ["Util"]
      162 GETTABLEKS                       R20 R20 K30 ["getFFlagCallNewFriendsAPI"]
      164 CALL                             R19 1 1
      165 DUPCLOSURE                       R20 K31 [PROTO_1]
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R14
      169 SETGLOBAL                        R20 K32 ["GetLoadFriendsJob"]
      171 DUPCLOSURE                       R20 K33 [PROTO_2]
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R18
      174 DUPCLOSURE                       R21 K34 [PROTO_10]
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R16
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R17
      188 SETGLOBAL                        R21 K35 ["GetPermissionsLoadJobs"]
      190 DUPCLOSURE                       R21 K36 [PROTO_13]
      191 SETTABLEKS                       R21 R0 K37 ["LoadFriends"]
      193 DUPCLOSURE                       R21 K38 [PROTO_16]
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R6
      196 SETTABLEKS                       R21 R0 K39 ["LoadPermissions"]
      198 RETURN                           R0 1
