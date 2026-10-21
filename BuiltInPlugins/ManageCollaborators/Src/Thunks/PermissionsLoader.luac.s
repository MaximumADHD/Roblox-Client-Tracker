PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["responseCode = 403"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagManageCollaboratorsActionNeededLabel"]
        3 JUMPIF                           R2 ; [+21]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
        7 JUMPIF                           R2 ; [+17]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["fflagManageCollaboratorsEditorBlockingBanner"]
       11 JUMPIF                           R2 ; [+13]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       15 JUMPIF                           R2 ; [+9]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       19 JUMPIF                           R2 ; [+5]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["fflagGroupGameEarlyTesters"]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R1
       27 CALL                             R4 1 -1
       28 NAMECALL                         R2 R0 K6 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_4:
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
       15 GETIMPORT                        R3 K6 [Enum.CreatorType.Group]
       17 JUMPIFNOTEQ                      R2 R3 ; [+16]
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R1
       22 MOVE                             R7 R0
       23 NAMECALL                         R3 R3 K7 ["getGranularPermissionsFromGroupsAPI"]
       25 CALL                             R3 4 2
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R7 4
       28 MOVE                             R8 R3
       29 MOVE                             R9 R4
       30 CALL                             R7 2 -1
       31 NAMECALL                         R5 R5 K8 ["dispatch"]
       33 CALL                             R5 -1 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["fflagManageCollaboratorsActionNeededLabel"]
        5 JUMPIF                           R2 ; [+21]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
        9 JUMPIF                           R2 ; [+17]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["fflagManageCollaboratorsEditorBlockingBanner"]
       13 JUMPIF                           R2 ; [+13]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       17 JUMPIF                           R2 ; [+9]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K4 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       21 JUMPIF                           R2 ; [+5]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["fflagGroupGameEarlyTesters"]
       25 JUMPIF                           R2 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R1
       29 CALL                             R4 1 -1
       30 NAMECALL                         R2 R0 K6 ["dispatch"]
       32 CALL                             R2 -1 0
       33 RETURN                           R0 0

PROTO_7:
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
       74 GETIMPORT                        R7 K7 [Enum.CreatorType.Group]
       76 JUMPIFNOTEQ                      R2 R7 ; [+6]
       78 GETUPVAL                         R7 5
       79 MOVE                             R8 R5
       80 MOVE                             R9 R1
       81 CALL                             R7 2 1
       82 MOVE                             R5 R7
       83 GETUPVAL                         R7 6
       84 GETUPVAL                         R9 7
       85 MOVE                             R10 R5
       86 CALL                             R9 1 -1
       87 NAMECALL                         R7 R7 K12 ["dispatch"]
       89 CALL                             R7 -1 0
       90 GETUPVAL                         R7 6
       91 GETUPVAL                         R9 8
       92 MOVE                             R10 R6
       93 CALL                             R9 1 -1
       94 NAMECALL                         R7 R7 K12 ["dispatch"]
       96 CALL                             R7 -1 0
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K13 ["fflagManageCollaboratorsActionNeededLabel"]
      100 JUMPIF                           R7 ; [+21]
      101 GETUPVAL                         R7 2
      102 GETTABLEKS                       R7 R7 K14 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      104 JUMPIF                           R7 ; [+17]
      105 GETUPVAL                         R7 2
      106 GETTABLEKS                       R7 R7 K15 ["fflagManageCollaboratorsEditorBlockingBanner"]
      108 JUMPIF                           R7 ; [+13]
      109 GETUPVAL                         R7 2
      110 GETTABLEKS                       R7 R7 K16 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      112 JUMPIF                           R7 ; [+9]
      113 GETUPVAL                         R7 2
      114 GETTABLEKS                       R7 R7 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      116 JUMPIF                           R7 ; [+5]
      117 GETUPVAL                         R7 2
      118 GETTABLEKS                       R7 R7 K18 ["fflagGroupGameEarlyTesters"]
      120 JUMPIF                           R7 ; [+1]
      121 RETURN                           R0 0
      122 NEWTABLE                         R7 0 0
      124 GETUPVAL                         R9 9
      125 GETTABLEKS                       R9 R9 K19 ["UserSubjectKey"]
      127 GETTABLE                         R8 R5 R9
      128 JUMPIFNOT                        R8 ; [+17]
      129 GETIMPORT                        R8 K21 [pairs]
      131 GETUPVAL                         R11 9
      132 GETTABLEKS                       R11 R11 K19 ["UserSubjectKey"]
      134 GETTABLE                         R9 R5 R11
      135 CALL                             R8 1 3
      136 FORGPREP_NEXT                    R8
      137 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      139 MOVE                             R14 R7
      140 MOVE                             R15 R11
      141 GETIMPORT                        R13 K24 [table.insert]
      143 CALL                             R13 2 0
      144 FORGLOOP                         R8 2 ; [-8]
      146 GETIMPORT                        R8 K7 [Enum.CreatorType.Group]
      148 JUMPIFNOTEQ                      R2 R8 ; [+41]
      150 MOVE                             R8 R3
      151 JUMPIFNOTEQKNIL                  R8 ; [+23]
      153 GETUPVAL                         R9 2
      154 GETTABLEKS                       R9 R9 K3 ["fflagOwnerRolesetDeprecation2"]
      156 JUMPIF                           R9 ; [+18]
      157 GETUPVAL                         R9 2
      158 GETTABLEKS                       R9 R9 K16 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      160 JUMPIF                           R9 ; [+8]
      161 GETUPVAL                         R9 2
      162 GETTABLEKS                       R9 R9 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      164 JUMPIF                           R9 ; [+4]
      165 GETUPVAL                         R9 2
      166 GETTABLEKS                       R9 R9 K18 ["fflagGroupGameEarlyTesters"]
      168 JUMPIFNOT                        R9 ; [+6]
      169 GETUPVAL                         R9 3
      170 MOVE                             R11 R1
      171 NAMECALL                         R9 R9 K8 ["getOwnerId"]
      173 CALL                             R9 2 1
      174 MOVE                             R8 R9
      175 JUMPIFEQKNIL                     R8 ; [+14]
      177 GETUPVAL                         R9 10
      178 NAMECALL                         R9 R9 K25 ["GetUserId"]
      180 CALL                             R9 1 1
      181 JUMPIFNOTEQ                      R8 R9 ; [+8]
      183 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
      185 MOVE                             R10 R7
      186 MOVE                             R11 R8
      187 GETIMPORT                        R9 K24 [table.insert]
      189 CALL                             R9 2 0
      190 GETIMPORT                        R8 K28 [coroutine.wrap]
      192 NEWCLOSURE                       R9 P0
      193 CAPTURE                          UPVAL U6
      194 CAPTURE                          VAL R7
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          UPVAL U11
      197 CALL                             R8 1 1
      198 CALL                             R8 0 0
      199 RETURN                           R0 0

PROTO_8:
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
       37 JUMPIFNOTEQ                      R2 R3 ; [+39]
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
       58 JUMPIFNOTEQ                      R0 R1 ; [+18]
       60 GETUPVAL                         R1 9
       61 CALL                             R1 0 0
       62 GETUPVAL                         R1 10
       63 GETTABLEKS                       R1 R1 K13 ["fflagAddPlayTesterPermission"]
       65 JUMPIFNOT                        R1 ; [+11]
       66 GETUPVAL                         R1 10
       67 GETTABLEKS                       R1 R1 K14 ["fflagEarlyTesterEligibilityFilter"]
       69 JUMPIFNOT                        R1 ; [+7]
       70 GETUPVAL                         R1 2
       71 GETUPVAL                         R3 11
       72 GETUPVAL                         R4 1
       73 CALL                             R3 1 -1
       74 NAMECALL                         R1 R1 K1 ["dispatch"]
       76 CALL                             R1 -1 0
       77 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["getCreatorType"]
        8 CALL                             R0 2 1
        9 GETIMPORT                        R1 K5 [Enum.CreatorType.User]
       11 JUMPIFNOTEQ                      R0 R1 ; [+13]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R2 2
       15 NAMECALL                         R0 R0 K6 ["getPlayTesters"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 4
       19 GETUPVAL                         R3 5
       20 MOVE                             R4 R0
       21 CALL                             R3 1 -1
       22 NAMECALL                         R1 R1 K7 ["dispatch"]
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["getAssignment"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["id"]
        5 NAMECALL                         R0 R0 K1 ["getRoleMembers"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["id"]
        5 NAMECALL                         R0 R0 K1 ["getCanAssignRole"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getCreatorType"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["fflagGroupGameEarlyTesters"]
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETIMPORT                        R1 K5 [Enum.CreatorType.Group]
       11 JUMPIFEQ                         R0 R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K6 ["earlyTesterController"]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R4 1
       19 NAMECALL                         R2 R2 K7 ["getCreatorId"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K9 [pcall]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U1
       28 CALL                             R3 1 2
       29 JUMPIF                           R3 ; [+34]
       30 LOADB                            R5 0
       31 FASTCALL1                        TYPEOF R4 ; [+3]
       32 MOVE                             R7 R4
       33 GETIMPORT                        R6 K11 [typeof]
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKS                    R6 K12 ["string"] ; [+12]
       38 GETIMPORT                        R6 K14 [string.find]
       40 MOVE                             R7 R4
       41 LOADK                            R8 K15 ["responseCode = 403"]
       42 LOADN                            R9 1
       43 LOADB                            R10 1
       44 CALL                             R6 4 1
       45 JUMPIFNOTEQKNIL                  R6 ; [+2]
       47 LOADB                            R5 0 +1
       48 LOADB                            R5 1
       49 JUMPIFNOT                        R5 ; [+1]
       50 RETURN                           R0 0
       51 GETIMPORT                        R5 K17 [warn]
       53 LOADK                            R6 K18 ["getAssignment failed"]
       54 MOVE                             R7 R4
       55 CALL                             R5 2 0
       56 GETUPVAL                         R5 4
       57 GETUPVAL                         R7 5
       58 LOADB                            R8 1
       59 CALL                             R7 1 -1
       60 NAMECALL                         R5 R5 K19 ["dispatch"]
       62 CALL                             R5 -1 0
       63 RETURN                           R0 0
       64 NEWTABLE                         R5 0 0
       66 JUMPIFEQKNIL                     R4 ; [+63]
       68 GETIMPORT                        R6 K9 [pcall]
       70 NEWCLOSURE                       R7 P1
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R4
       74 CALL                             R6 1 2
       75 JUMPIF                           R6 ; [+13]
       76 GETIMPORT                        R8 K17 [warn]
       78 LOADK                            R9 K20 ["getRoleMembers failed"]
       79 MOVE                             R10 R7
       80 CALL                             R8 2 0
       81 GETUPVAL                         R8 4
       82 GETUPVAL                         R10 5
       83 LOADB                            R11 1
       84 CALL                             R10 1 -1
       85 NAMECALL                         R8 R8 K19 ["dispatch"]
       87 CALL                             R8 -1 0
       88 RETURN                           R0 0
       89 MOVE                             R5 R7
       90 GETUPVAL                         R8 2
       91 GETTABLEKS                       R8 R8 K21 ["fflagEarlyTestersRoleAssigners"]
       93 JUMPIFNOT                        R8 ; [+36]
       94 GETUPVAL                         R8 6
       95 MOVE                             R10 R2
       96 NAMECALL                         R8 R8 K22 ["getOwnerId"]
       98 CALL                             R8 2 1
       99 GETUPVAL                         R9 7
      100 NAMECALL                         R9 R9 K23 ["GetUserId"]
      102 CALL                             R9 1 1
      103 JUMPIFEQ                         R8 R9 ; [+26]
      105 GETIMPORT                        R8 K9 [pcall]
      107 NEWCLOSURE                       R9 P2
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R4
      111 CALL                             R8 1 2
      112 JUMPIF                           R8 ; [+5]
      113 GETIMPORT                        R10 K17 [warn]
      115 LOADK                            R11 K24 ["getCanAssignRole failed"]
      116 MOVE                             R12 R9
      117 CALL                             R10 2 0
      118 GETUPVAL                         R10 4
      119 GETUPVAL                         R12 8
      120 MOVE                             R13 R8
      121 JUMPIFNOT                        R13 ; [+4]
      122 JUMPIFEQKB                       R9 TRUE ; [+2]
      124 LOADB                            R13 0 +1
      125 LOADB                            R13 1
      126 CALL                             R12 1 -1
      127 NAMECALL                         R10 R10 K19 ["dispatch"]
      129 CALL                             R10 -1 0
      130 GETUPVAL                         R6 4
      131 GETUPVAL                         R8 9
      132 MOVE                             R9 R4
      133 MOVE                             R10 R5
      134 CALL                             R8 2 -1
      135 NAMECALL                         R6 R6 K19 ["dispatch"]
      137 CALL                             R6 -1 0
      138 GETUPVAL                         R6 4
      139 GETUPVAL                         R8 10
      140 MOVE                             R9 R5
      141 CALL                             R8 1 -1
      142 NAMECALL                         R6 R6 K19 ["dispatch"]
      144 CALL                             R6 -1 0
      145 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["gameMetadataController"]
        2 GETTABLEKS                       R3 R1 K1 ["groupMetadataController"]
        4 GETTABLEKS                       R4 R1 K2 ["groupRolePermisionsController"]
        6 GETTABLEKS                       R5 R1 K3 ["gamePermissionsController"]
        8 GETTABLEKS                       R6 R1 K4 ["granularPermissionsController"]
       10 GETTABLEKS                       R7 R1 K5 ["playTestersController"]
       12 GETIMPORT                        R8 K7 [game]
       14 GETTABLEKS                       R8 R8 K8 ["GameId"]
       16 GETGLOBAL                        R9 K9 ["GetLoadFriendsJob"]
       18 MOVE                             R10 R0
       19 MOVE                             R11 R1
       20 CALL                             R9 2 1
       21 NEWTABLE                         R10 0 8
       23 NEWCLOSURE                       R11 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 NEWCLOSURE                       R12 P1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R8
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 NEWCLOSURE                       R13 P2
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U11
       55 NEWCLOSURE                       R14 P3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U12
       60 NEWCLOSURE                       R15 P4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U13
       65 NEWCLOSURE                       R16 P5
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U14
       72 NEWCLOSURE                       R17 P6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U15
       77 NEWCLOSURE                       R18 P7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U16
       84 CAPTURE                          VAL R3
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U17
       87 CAPTURE                          UPVAL U18
       88 CAPTURE                          UPVAL U19
       89 SETLIST                          R10 R11 8 [1]
       91 RETURN                           R10 1

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 DUPCLOSURE                       R1 K0 [PROTO_19]
        1 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 DUPCLOSURE                       R1 K0 [PROTO_22]
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
       72 GETTABLEKS                       R10 R10 K19 ["SetCurrentPlayTesters"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K4 [require]
       77 GETTABLEKS                       R11 R1 K12 ["Src"]
       79 GETTABLEKS                       R11 R11 K13 ["Actions"]
       81 GETTABLEKS                       R11 R11 K20 ["SetCurrentGranularPermissions"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K4 [require]
       86 GETTABLEKS                       R12 R1 K12 ["Src"]
       88 GETTABLEKS                       R12 R12 K13 ["Actions"]
       90 GETTABLEKS                       R12 R12 K21 ["SetCurrentGroupMetadata"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K4 [require]
       95 GETTABLEKS                       R13 R1 K12 ["Src"]
       97 GETTABLEKS                       R13 R13 K13 ["Actions"]
       99 GETTABLEKS                       R13 R13 K22 ["SetCreatorType"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K4 [require]
      104 GETTABLEKS                       R14 R1 K12 ["Src"]
      106 GETTABLEKS                       R14 R14 K13 ["Actions"]
      108 GETTABLEKS                       R14 R14 K23 ["SetCreatorName"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K4 [require]
      113 GETTABLEKS                       R15 R1 K12 ["Src"]
      115 GETTABLEKS                       R15 R15 K13 ["Actions"]
      117 GETTABLEKS                       R15 R15 K24 ["SetCreatorId"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K4 [require]
      122 GETTABLEKS                       R16 R1 K12 ["Src"]
      124 GETTABLEKS                       R16 R16 K13 ["Actions"]
      126 GETTABLEKS                       R16 R16 K25 ["SetCreatorFriends"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K4 [require]
      131 GETTABLEKS                       R17 R1 K12 ["Src"]
      133 GETTABLEKS                       R17 R17 K13 ["Actions"]
      135 GETTABLEKS                       R17 R17 K26 ["SetGroupOwnerId"]
      137 CALL                             R16 1 1
      138 GETIMPORT                        R17 K4 [require]
      140 GETTABLEKS                       R18 R1 K12 ["Src"]
      142 GETTABLEKS                       R18 R18 K13 ["Actions"]
      144 GETTABLEKS                       R18 R18 K27 ["SetGroupRolePermissions"]
      146 CALL                             R17 1 1
      147 GETIMPORT                        R18 K4 [require]
      149 GETTABLEKS                       R19 R1 K12 ["Src"]
      151 GETTABLEKS                       R19 R19 K13 ["Actions"]
      153 GETTABLEKS                       R19 R19 K28 ["SetUserMinimumAge"]
      155 CALL                             R18 1 1
      156 GETIMPORT                        R19 K4 [require]
      158 GETTABLEKS                       R20 R1 K12 ["Src"]
      160 GETTABLEKS                       R20 R20 K29 ["Thunks"]
      162 GETTABLEKS                       R20 R20 K30 ["FetchCanCollaborateResponses"]
      164 CALL                             R19 1 1
      165 GETIMPORT                        R20 K4 [require]
      167 GETTABLEKS                       R21 R1 K12 ["Src"]
      169 GETTABLEKS                       R21 R21 K15 ["Util"]
      171 GETTABLEKS                       R21 R21 K31 ["getFFlagCallNewFriendsAPI"]
      173 CALL                             R20 1 1
      174 GETIMPORT                        R21 K4 [require]
      176 GETTABLEKS                       R22 R1 K12 ["Src"]
      178 GETTABLEKS                       R22 R22 K13 ["Actions"]
      180 GETTABLEKS                       R22 R22 K32 ["SetEarlyTesterLoadedData"]
      182 CALL                             R21 1 1
      183 GETIMPORT                        R22 K4 [require]
      185 GETTABLEKS                       R23 R1 K12 ["Src"]
      187 GETTABLEKS                       R23 R23 K13 ["Actions"]
      189 GETTABLEKS                       R23 R23 K33 ["SetEarlyTesterLoadError"]
      191 CALL                             R22 1 1
      192 GETIMPORT                        R23 K4 [require]
      194 GETTABLEKS                       R24 R1 K12 ["Src"]
      196 GETTABLEKS                       R24 R24 K13 ["Actions"]
      198 GETTABLEKS                       R24 R24 K34 ["SetEarlyTesterCanAssignRole"]
      200 CALL                             R23 1 1
      201 GETIMPORT                        R24 K4 [require]
      203 GETTABLEKS                       R25 R1 K12 ["Src"]
      205 GETTABLEKS                       R25 R25 K29 ["Thunks"]
      207 GETTABLEKS                       R25 R25 K35 ["LoadPlayTesterEligibility"]
      209 CALL                             R24 1 1
      210 GETIMPORT                        R25 K4 [require]
      212 GETTABLEKS                       R26 R1 K12 ["Src"]
      214 GETTABLEKS                       R26 R26 K29 ["Thunks"]
      216 GETTABLEKS                       R26 R26 K36 ["LoadEarlyTesterMemberEligibility"]
      218 CALL                             R25 1 1
      219 GETIMPORT                        R26 K4 [require]
      221 GETTABLEKS                       R27 R1 K37 ["Packages"]
      223 GETTABLEKS                       R27 R27 K38 ["Cryo"]
      225 CALL                             R26 1 1
      226 DUPCLOSURE                       R27 K39 [PROTO_0]
      227 DUPCLOSURE                       R28 K40 [PROTO_2]
      228 CAPTURE                          VAL R20
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R15
      231 SETGLOBAL                        R28 K41 ["GetLoadFriendsJob"]
      233 DUPCLOSURE                       R28 K42 [PROTO_3]
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R19
      236 DUPCLOSURE                       R29 K43 [PROTO_4]
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R26
      239 DUPCLOSURE                       R30 K44 [PROTO_17]
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R19
      248 CAPTURE                          VAL R12
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R18
      256 CAPTURE                          VAL R22
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R25
      260 SETGLOBAL                        R30 K45 ["GetPermissionsLoadJobs"]
      262 DUPCLOSURE                       R30 K46 [PROTO_20]
      263 SETTABLEKS                       R30 R0 K47 ["LoadFriends"]
      265 DUPCLOSURE                       R30 K48 [PROTO_23]
      266 CAPTURE                          VAL R5
      267 CAPTURE                          VAL R6
      268 SETTABLEKS                       R30 R0 K49 ["LoadPermissions"]
      270 RETURN                           R0 1
