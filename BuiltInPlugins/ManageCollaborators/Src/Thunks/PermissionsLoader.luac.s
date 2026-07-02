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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["RoleSubjectKey"]
        3 GETTABLE                         R2 R0 R3
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 1
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K2 [pairs]
       10 MOVE                             R5 R2
       11 CALL                             R4 1 3
       12 FORGPREP_NEXT                    R4
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K3 ["GroupIdKey"]
       16 GETTABLE                         R9 R8 R10
       17 JUMPIFEQ                         R9 R1 ; [+2]
       19 SETTABLE                         R8 R3 R7
       20 FORGLOOP                         R4 2 ; [-8]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       25 GETTABLEKS                       R4 R4 K5 ["join"]
       27 MOVE                             R5 R0
       28 NEWTABLE                         R6 1 0
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K0 ["RoleSubjectKey"]
       33 SETTABLE                         R3 R6 R7
       34 CALL                             R4 2 -1
       35 RETURN                           R4 -1

PROTO_4:
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
       16 GETTABLEKS                       R3 R3 K3 ["fflagCollabPV2GroupMigration"]
       18 JUMPIFNOT                        R3 ; [+26]
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R4 R4 K4 ["MIGRATED"]
       23 JUMPIFNOTEQ                      R3 R4 ; [+21]
       25 GETIMPORT                        R3 K8 [Enum.CreatorType.Group]
       27 JUMPIFNOTEQ                      R2 R3 ; [+17]
       29 GETUPVAL                         R3 5
       30 GETUPVAL                         R5 1
       31 MOVE                             R6 R1
       32 MOVE                             R7 R0
       33 NAMECALL                         R3 R3 K9 ["getGranularPermissionsFromGroupsAPI"]
       35 CALL                             R3 4 2
       36 GETUPVAL                         R5 6
       37 GETUPVAL                         R7 7
       38 MOVE                             R8 R3
       39 MOVE                             R9 R4
       40 CALL                             R7 2 -1
       41 NAMECALL                         R5 R5 K10 ["dispatch"]
       43 CALL                             R5 -1 0
       44 RETURN                           R0 0
       45 GETIMPORT                        R3 K8 [Enum.CreatorType.Group]
       47 JUMPIFNOTEQ                      R2 R3 ; [+16]
       49 GETUPVAL                         R3 5
       50 GETUPVAL                         R5 1
       51 MOVE                             R6 R1
       52 MOVE                             R7 R0
       53 NAMECALL                         R3 R3 K11 ["getGranularPermissions"]
       55 CALL                             R3 4 2
       56 GETUPVAL                         R5 6
       57 GETUPVAL                         R7 7
       58 MOVE                             R8 R3
       59 MOVE                             R9 R4
       60 CALL                             R7 2 -1
       61 NAMECALL                         R5 R5 K10 ["dispatch"]
       63 CALL                             R5 -1 0
       64 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R7 R7 K12 ["fflagCollabPV2GroupMigration"]
       77 JUMPIFNOT                        R7 ; [+15]
       78 GETIMPORT                        R7 K7 [Enum.CreatorType.Group]
       80 JUMPIFNOTEQ                      R2 R7 ; [+12]
       82 GETUPVAL                         R7 5
       83 GETUPVAL                         R8 6
       84 GETTABLEKS                       R8 R8 K13 ["MIGRATED"]
       86 JUMPIFNOTEQ                      R7 R8 ; [+6]
       88 GETUPVAL                         R7 7
       89 MOVE                             R8 R5
       90 MOVE                             R9 R1
       91 CALL                             R7 2 1
       92 MOVE                             R5 R7
       93 GETUPVAL                         R7 8
       94 GETUPVAL                         R9 9
       95 MOVE                             R10 R5
       96 CALL                             R9 1 -1
       97 NAMECALL                         R7 R7 K14 ["dispatch"]
       99 CALL                             R7 -1 0
      100 GETUPVAL                         R7 8
      101 GETUPVAL                         R9 10
      102 MOVE                             R10 R6
      103 CALL                             R9 1 -1
      104 NAMECALL                         R7 R7 K14 ["dispatch"]
      106 CALL                             R7 -1 0
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R7 R7 K15 ["fflagManageCollaboratorsActionNeededLabel"]
      110 JUMPIF                           R7 ; [+17]
      111 GETUPVAL                         R7 2
      112 GETTABLEKS                       R7 R7 K16 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      114 JUMPIF                           R7 ; [+13]
      115 GETUPVAL                         R7 2
      116 GETTABLEKS                       R7 R7 K17 ["fflagManageCollaboratorsEditorBlockingBanner"]
      118 JUMPIF                           R7 ; [+9]
      119 GETUPVAL                         R7 2
      120 GETTABLEKS                       R7 R7 K18 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      122 JUMPIF                           R7 ; [+5]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R7 R7 K19 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      126 JUMPIF                           R7 ; [+1]
      127 RETURN                           R0 0
      128 NEWTABLE                         R7 0 0
      130 GETUPVAL                         R9 11
      131 GETTABLEKS                       R9 R9 K20 ["UserSubjectKey"]
      133 GETTABLE                         R8 R5 R9
      134 JUMPIFNOT                        R8 ; [+17]
      135 GETIMPORT                        R8 K22 [pairs]
      137 GETUPVAL                         R11 11
      138 GETTABLEKS                       R11 R11 K20 ["UserSubjectKey"]
      140 GETTABLE                         R9 R5 R11
      141 CALL                             R8 1 3
      142 FORGPREP_NEXT                    R8
      143 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      145 MOVE                             R14 R7
      146 MOVE                             R15 R11
      147 GETIMPORT                        R13 K25 [table.insert]
      149 CALL                             R13 2 0
      150 FORGLOOP                         R8 2 ; [-8]
      152 GETIMPORT                        R8 K7 [Enum.CreatorType.Group]
      154 JUMPIFNOTEQ                      R2 R8 ; [+37]
      156 MOVE                             R8 R3
      157 JUMPIFNOTEQKNIL                  R8 ; [+19]
      159 GETUPVAL                         R9 2
      160 GETTABLEKS                       R9 R9 K3 ["fflagOwnerRolesetDeprecation2"]
      162 JUMPIF                           R9 ; [+14]
      163 GETUPVAL                         R9 2
      164 GETTABLEKS                       R9 R9 K18 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      166 JUMPIF                           R9 ; [+4]
      167 GETUPVAL                         R9 2
      168 GETTABLEKS                       R9 R9 K19 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      170 JUMPIFNOT                        R9 ; [+6]
      171 GETUPVAL                         R9 3
      172 MOVE                             R11 R1
      173 NAMECALL                         R9 R9 K8 ["getOwnerId"]
      175 CALL                             R9 2 1
      176 MOVE                             R8 R9
      177 JUMPIFEQKNIL                     R8 ; [+14]
      179 GETUPVAL                         R9 12
      180 NAMECALL                         R9 R9 K26 ["GetUserId"]
      182 CALL                             R9 1 1
      183 JUMPIFNOTEQ                      R8 R9 ; [+8]
      185 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
      187 MOVE                             R10 R7
      188 MOVE                             R11 R8
      189 GETIMPORT                        R9 K25 [table.insert]
      191 CALL                             R9 2 0
      192 GETIMPORT                        R8 K29 [coroutine.wrap]
      194 NEWCLOSURE                       R9 P0
      195 CAPTURE                          UPVAL U8
      196 CAPTURE                          VAL R7
      197 CAPTURE                          UPVAL U2
      198 CAPTURE                          UPVAL U13
      199 CALL                             R8 1 1
      200 CALL                             R8 0 0
      201 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["gameMetadataController"]
        2 GETTABLEKS                       R4 R1 K1 ["groupMetadataController"]
        4 GETTABLEKS                       R5 R1 K2 ["groupRolePermisionsController"]
        6 GETTABLEKS                       R6 R1 K3 ["gamePermissionsController"]
        8 GETTABLEKS                       R7 R1 K4 ["granularPermissionsController"]
       10 GETIMPORT                        R8 K6 [game]
       12 GETTABLEKS                       R8 R8 K7 ["GameId"]
       14 GETGLOBAL                        R9 K8 ["GetLoadFriendsJob"]
       16 MOVE                             R10 R0
       17 MOVE                             R11 R1
       18 CALL                             R9 2 1
       19 NEWTABLE                         R10 0 6
       21 NEWCLOSURE                       R11 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R8
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R7
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U2
       30 NEWCLOSURE                       R12 P1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R8
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 NEWCLOSURE                       R13 P2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R5
       54 CAPTURE                          UPVAL U11
       55 CAPTURE                          VAL R9
       56 NEWCLOSURE                       R14 P3
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U12
       61 NEWCLOSURE                       R15 P4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U13
       66 NEWCLOSURE                       R16 P5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U14
       71 SETLIST                          R10 R11 6 [1]
       73 RETURN                           R10 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 DUPCLOSURE                       R1 K0 [PROTO_13]
        1 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NOT_MIGRATED"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["fflagCollabPV2GroupMigration"]
        6 JUMPIFNOT                        R3 ; [+31]
        7 GETTABLEKS                       R3 R1 K2 ["gameMetadataController"]
        9 GETTABLEKS                       R4 R1 K3 ["networking"]
       11 GETIMPORT                        R5 K5 [game]
       13 GETTABLEKS                       R5 R5 K6 ["GameId"]
       15 MOVE                             R8 R5
       16 NAMECALL                         R6 R3 K7 ["getCreatorType"]
       18 CALL                             R6 2 1
       19 GETIMPORT                        R7 K11 [Enum.CreatorType.Group]
       21 JUMPIFNOTEQ                      R6 R7 ; [+16]
       23 MOVE                             R9 R5
       24 NAMECALL                         R7 R3 K12 ["getCreatorId"]
       26 CALL                             R7 2 1
       27 GETUPVAL                         R8 2
       28 MOVE                             R9 R4
       29 MOVE                             R10 R7
       30 CALL                             R8 2 1
       31 MOVE                             R2 R8
       32 GETUPVAL                         R10 3
       33 MOVE                             R11 R2
       34 CALL                             R10 1 -1
       35 NAMECALL                         R8 R0 K13 ["dispatch"]
       37 CALL                             R8 -1 0
       38 LOADNIL                          R3
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K1 ["fflagCollabPV2GroupMigration"]
       42 JUMPIFNOT                        R4 ; [+8]
       43 GETGLOBAL                        R4 K14 ["GetPermissionsLoadJobs"]
       45 MOVE                             R5 R0
       46 MOVE                             R6 R1
       47 MOVE                             R7 R2
       48 CALL                             R4 3 1
       49 MOVE                             R3 R4
       50 JUMP                             ; [+6]
       51 GETGLOBAL                        R4 K14 ["GetPermissionsLoadJobs"]
       53 MOVE                             R5 R0
       54 MOVE                             R6 R1
       55 CALL                             R4 2 1
       56 MOVE                             R3 R4
       57 GETUPVAL                         R6 4
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R7 R7 K15 ["Loading"]
       61 CALL                             R6 1 -1
       62 NAMECALL                         R4 R0 K13 ["dispatch"]
       64 CALL                             R4 -1 0
       65 LOADN                            R4 0
       66 LOADB                            R5 0
       67 GETIMPORT                        R6 K17 [ipairs]
       69 MOVE                             R7 R3
       70 CALL                             R6 1 3
       71 FORGPREP_INEXT                   R6
       72 GETIMPORT                        R11 K20 [coroutine.wrap]
       74 NEWCLOSURE                       R12 P0
       75 CAPTURE                          VAL R10
       76 CAPTURE                          REF R5
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          REF R4
       81 CAPTURE                          REF R3
       82 CALL                             R11 1 1
       83 MOVE                             R12 R11
       84 CALL                             R12 0 0
       85 FORGLOOP                         R6 2 [inext] ; [-14]
       87 CLOSEUPVALS                      R3
       88 RETURN                           R0 0

PROTO_17:
        0 DUPCLOSURE                       R1 K0 [PROTO_16]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R1 1

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
      165 GETIMPORT                        R20 K4 [require]
      167 GETTABLEKS                       R21 R1 K12 ["Src"]
      169 GETTABLEKS                       R21 R21 K15 ["Util"]
      171 GETTABLEKS                       R21 R21 K31 ["MigrationStatus"]
      173 CALL                             R20 1 1
      174 GETIMPORT                        R21 K4 [require]
      176 GETTABLEKS                       R22 R1 K12 ["Src"]
      178 GETTABLEKS                       R22 R22 K32 ["Networking"]
      180 GETTABLEKS                       R22 R22 K33 ["Requests"]
      182 GETTABLEKS                       R22 R22 K34 ["GetGroupMigrationStatus"]
      184 CALL                             R21 1 1
      185 GETIMPORT                        R22 K4 [require]
      187 GETTABLEKS                       R23 R1 K12 ["Src"]
      189 GETTABLEKS                       R23 R23 K13 ["Actions"]
      191 GETTABLEKS                       R23 R23 K35 ["SetGroupMigrationStatus"]
      193 CALL                             R22 1 1
      194 GETIMPORT                        R23 K4 [require]
      196 GETTABLEKS                       R24 R1 K36 ["Packages"]
      198 GETTABLEKS                       R24 R24 K37 ["Cryo"]
      200 CALL                             R23 1 1
      201 DUPCLOSURE                       R24 K38 [PROTO_1]
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R14
      205 SETGLOBAL                        R24 K39 ["GetLoadFriendsJob"]
      207 DUPCLOSURE                       R24 K40 [PROTO_2]
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R18
      210 DUPCLOSURE                       R25 K41 [PROTO_3]
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R23
      213 DUPCLOSURE                       R26 K42 [PROTO_11]
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R11
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R17
      229 SETGLOBAL                        R26 K43 ["GetPermissionsLoadJobs"]
      231 DUPCLOSURE                       R26 K44 [PROTO_14]
      232 SETTABLEKS                       R26 R0 K45 ["LoadFriends"]
      234 DUPCLOSURE                       R26 K46 [PROTO_17]
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R6
      241 SETTABLEKS                       R26 R0 K47 ["LoadPermissions"]
      243 RETURN                           R0 1
