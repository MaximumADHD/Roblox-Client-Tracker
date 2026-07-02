PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GROUPS_ROLES_USERS_URL"]
        4 GETTABLEKS                       R2 R2 K1 ["Prefix"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["GROUPS_ROLES_USERS_URL"]
        9 GETTABLEKS                       R3 R3 K2 ["Url"]
       11 LOADN                            R4 12345
       12 MOVE                             R5 R0
       13 CALL                             R3 2 1
       14 DUPTABLE                         R4 K7 [{["limit"] = "100", ["sortOrder"] = "Asc"}]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K1 [{"__index"}]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["apis"]
        2 GETTABLEKS                       R4 R1 K1 ["Url"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+40]
        6 FASTCALL1                        TYPEOF R2 ; [+3]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R3 K3 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+11]
       13 GETTABLEKS                       R3 R2 K5 ["error"]
       15 JUMPIFNOT                        R3 ; [+7]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["reject"]
       19 GETTABLEKS                       R4 R2 K5 ["error"]
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R5 R2
       25 GETIMPORT                        R4 K3 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K7 ["function"] ; [+6]
       30 MOVE                             R3 R2
       31 GETTABLEKS                       R4 R1 K8 ["Body"]
       33 CALL                             R3 1 1
       34 JUMP                             ; [+1]
       35 MOVE                             R3 R2
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K9 ["resolve"]
       39 DUPTABLE                         R5 K12 [{"responseBody", "requestOptions"}]
       40 SETTABLEKS                       R3 R5 K10 ["responseBody"]
       42 SETTABLEKS                       R1 R5 K11 ["requestOptions"]
       44 CALL                             R4 1 -1
       45 RETURN                           R4 -1
       46 GETIMPORT                        R3 K13 [error]
       48 LOADK                            R5 K14 ["Unexpected url: %*"]
       49 GETTABLEKS                       R7 R1 K1 ["Url"]
       51 NAMECALL                         R5 R5 K15 ["format"]
       53 CALL                             R5 2 1
       54 MOVE                             R4 R5
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R2 ; [+35]
        1 NEWTABLE                         R3 8 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["UNIVERSES_SEARCH_TEST_URL"]
        6 LOADK                            R5 K1 ["{\"id\":0,\"name\":\"test place\",\"description\":null,\"isArchived\":false,\"rootPlaceId\":0,\"isActive\":false,\"privacyType\":\"Private\",\"creatorType\":\"Group\",\"creatorTargetId\":12345,\"creatorName\":\"testgroup\",\"created\":\"2024-09-10T21:14:20.017Z\",\"updated\":\"2024-09-10T21:14:21.953Z\"}"]
        7 SETTABLE                         R5 R3 R4
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["UNIVERSES_PERMISSIONS_TEST_URL"]
       11 LOADK                            R5 K3 ["{\"data\":[{\"groupId\":\"12345\",\"groupName\":\"testgroup\",\"action\":null,\"allowedPermissions\":\"\"},{\"rolesetId\":\"0\",\"rolesetName\":\"Guest\",\"groupId\":\"12345\",\"rank\":\"1\",\"groupName\":\"testgroup\",\"action\":\"\",\"allowedPermissions\":\"\"},{\"rolesetId\":\"99088181\",\"rolesetName\":\"Admin\",\"groupId\":\"12345\",\"rank\":\"254\",\"groupName\":\"testgroup\",\"action\":\"Edit\",\"allowedPermissions\":\"\"},{\"rolesetId\":\"99088180\",\"rolesetName\":\"Owner\",\"groupId\":\"12345\",\"rank\":\"255\",\"groupName\":\"testgroup\",\"action\":null,\"allowedPermissions\":\"\"}]}"]
       12 SETTABLE                         R5 R3 R4
       13 GETUPVAL                         R4 1
       14 LOADK                            R5 K4 ["{\"data\":[{\"hasVerifiedBadge\":false,\"userId\":54321,\"username\":\"testGroupOwner\",\"displayName\":\"TestGroupOwner\"}]}"]
       15 SETTABLE                         R5 R3 R4
       16 GETUPVAL                         R4 2
       17 LOADK                            R5 K5 ["{\"data\":[{\"hasVerifiedBadge\":false,\"userId\":654321,\"username\":\"testGroupAdmin\",\"displayName\":\"TestGroupAdmin\"}]}"]
       18 SETTABLE                         R5 R3 R4
       19 GETUPVAL                         R4 3
       20 LOADK                            R5 K6 ["{\"data\":[{\"hasVerifiedBadge\":false,\"userId\":32132,\"username\":\"noteditor\",\"displayName\":\"noteditor\"}]}"]
       21 SETTABLE                         R5 R3 R4
       22 GETUPVAL                         R4 4
       23 LOADK                            R5 K7 ["{\"groupId\":\"12345\",\"roles\":[{\"id\":0,\"name\":\"Guest\",\"rank\":1,\"memberCount\":1},{\"id\":99088181,\"name\":\"Admin\",\"rank\":254,\"memberCount\":1},{\"id\":99088180,\"name\":\"Owner\",\"rank\":255,\"memberCount\":1}]}"]
       24 SETTABLE                         R5 R3 R4
       25 GETUPVAL                         R4 5
       26 LOADK                            R5 K8 ["{\"data\":[{\"group\":{\"id\":125},\"role\":{\"id\":\"99088183\"}},{\"group\":{\"id\":12345},\"role\":{\"id\":\"99088181\"}}]}"]
       27 SETTABLE                         R5 R3 R4
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K9 ["GROUPS_INFO_TEST_URL"]
       31 LOADK                            R5 K10 ["{\"memberCount\":4}"]
       32 SETTABLE                         R5 R3 R4
       33 SETTABLEKS                       R3 R0 K11 ["apis"]
       35 JUMP                             ; [+14]
       36 NEWTABLE                         R3 2 0
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K0 ["UNIVERSES_SEARCH_TEST_URL"]
       41 LOADK                            R5 K12 ["{\"id\":0,\"name\":\"test place\",\"description\":null,\"isArchived\":false,\"rootPlaceId\":0,\"isActive\":false,\"privacyType\":\"Private\",\"creatorType\":\"User\",\"creatorTargetId\":123,\"creatorName\":\"testCreator\",\"created\":\"2024-09-10T21:14:20.017Z\",\"updated\":\"2024-09-10T21:14:21.953Z\"}"]
       42 SETTABLE                         R5 R3 R4
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K2 ["UNIVERSES_PERMISSIONS_TEST_URL"]
       46 LOADK                            R5 K13 ["{\"data\":[{\"userId\":\"1234\",\"userName\":\"testuser\",\"action\":\"Edit\",\"allowedPermissions\":\"Edit\"},{\"userId\":\"12345\",\"userName\":\"testuser2\",\"action\":\"\",\"allowedPermissions\":\"\"}]}"]
       47 SETTABLE                         R5 R3 R4
       48 SETTABLEKS                       R3 R0 K11 ["apis"]
       50 JUMPIFNOT                        R1 ; [+10]
       51 MOVE                             R3 R1
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 GETTABLEKS                       R8 R0 K11 ["apis"]
       57 GETTABLE                         R9 R1 R6
       58 SETTABLE                         R9 R8 R6
       59 FORGLOOP                         R3 1 ; [-5]
       61 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Networking"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["TestLoader"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["TypedPromise"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K12 ["PromiseFactory"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["TypedNetworking"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K14 ["Http"]
       43 GETTABLEKS                       R5 R5 K15 ["Networking"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K9 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Networking"]
       51 GETTABLEKS                       R7 R7 K16 ["Urls"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R6 R6 K16 ["Urls"]
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K9 ["Src"]
       60 GETTABLEKS                       R8 R8 K15 ["Networking"]
       62 GETTABLEKS                       R8 R8 K16 ["Urls"]
       64 CALL                             R7 1 1
       65 GETTABLEKS                       R7 R7 K17 ["composeUrl"]
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R9 R0 K9 ["Src"]
       71 GETTABLEKS                       R9 R9 K15 ["Networking"]
       73 GETTABLEKS                       R9 R9 K16 ["Urls"]
       75 CALL                             R8 1 1
       76 GETTABLEKS                       R8 R8 K18 ["composeUrlWithArgs"]
       78 DUPCLOSURE                       R9 K19 [PROTO_0]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R6
       81 MOVE                             R10 R8
       82 GETTABLEKS                       R11 R6 K20 ["GROUPS_ROLES_USERS_URL"]
       84 GETTABLEKS                       R11 R11 K21 ["Prefix"]
       86 GETTABLEKS                       R12 R6 K20 ["GROUPS_ROLES_USERS_URL"]
       88 GETTABLEKS                       R12 R12 K22 ["Url"]
       90 LOADN                            R13 12345
       91 LOADK                            R14 K23 [99088180]
       92 CALL                             R12 2 1
       93 DUPTABLE                         R13 K28 [{["limit"] = "100", ["sortOrder"] = "Asc"}]
       94 CALL                             R10 3 1
       95 MOVE                             R11 R8
       96 GETTABLEKS                       R12 R6 K20 ["GROUPS_ROLES_USERS_URL"]
       98 GETTABLEKS                       R12 R12 K21 ["Prefix"]
      100 GETTABLEKS                       R13 R6 K20 ["GROUPS_ROLES_USERS_URL"]
      102 GETTABLEKS                       R13 R13 K22 ["Url"]
      104 LOADN                            R14 12345
      105 LOADK                            R15 K29 [99088181]
      106 CALL                             R13 2 1
      107 DUPTABLE                         R14 K28 [{["limit"] = "100", ["sortOrder"] = "Asc"}]
      108 CALL                             R11 3 1
      109 MOVE                             R12 R8
      110 GETTABLEKS                       R13 R6 K20 ["GROUPS_ROLES_USERS_URL"]
      112 GETTABLEKS                       R13 R13 K21 ["Prefix"]
      114 GETTABLEKS                       R14 R6 K20 ["GROUPS_ROLES_USERS_URL"]
      116 GETTABLEKS                       R14 R14 K22 ["Url"]
      118 LOADN                            R15 12345
      119 LOADN                            R16 0
      120 CALL                             R14 2 1
      121 DUPTABLE                         R15 K28 [{["limit"] = "100", ["sortOrder"] = "Asc"}]
      122 CALL                             R12 3 1
      123 MOVE                             R13 R7
      124 GETTABLEKS                       R14 R6 K30 ["GROUPS_USERS_ROLES_URL"]
      126 GETTABLEKS                       R14 R14 K21 ["Prefix"]
      128 GETTABLEKS                       R15 R6 K30 ["GROUPS_USERS_ROLES_URL"]
      130 GETTABLEKS                       R15 R15 K22 ["Url"]
      132 LOADN                            R16 0
      133 CALL                             R15 1 -1
      134 CALL                             R13 -1 1
      135 MOVE                             R14 R7
      136 GETTABLEKS                       R15 R6 K31 ["GROUPS_ROLES_URL"]
      138 GETTABLEKS                       R15 R15 K21 ["Prefix"]
      140 GETTABLEKS                       R16 R6 K31 ["GROUPS_ROLES_URL"]
      142 GETTABLEKS                       R16 R16 K22 ["Url"]
      144 LOADN                            R17 12345
      145 CALL                             R16 1 -1
      146 CALL                             R14 -1 1
      147 DUPTABLE                         R15 K33 [{"apis"}]
      148 NEWTABLE                         R16 2 0
      150 GETTABLEKS                       R17 R6 K34 ["UNIVERSES_SEARCH_TEST_URL"]
      152 LOADK                            R18 K35 ["{\"id\":0,\"name\":\"test place\",\"description\":null,\"isArchived\":false,\"rootPlaceId\":0,\"isActive\":false,\"privacyType\":\"Private\",\"creatorType\":\"User\",\"creatorTargetId\":123,\"creatorName\":\"testCreator\",\"created\":\"2024-09-10T21:14:20.017Z\",\"updated\":\"2024-09-10T21:14:21.953Z\"}"]
      153 SETTABLE                         R18 R16 R17
      154 GETTABLEKS                       R17 R6 K36 ["UNIVERSES_PERMISSIONS_TEST_URL"]
      156 LOADK                            R18 K37 ["{\"data\":[{\"userId\":\"1234\",\"userName\":\"testuser\",\"action\":\"Edit\",\"allowedPermissions\":\"Edit\"}]}"]
      157 SETTABLE                         R18 R16 R17
      158 SETTABLEKS                       R16 R15 K32 ["apis"]
      160 DUPCLOSURE                       R16 K38 [PROTO_1]
      161 CAPTURE                          VAL R15
      162 SETTABLEKS                       R16 R15 K39 ["new"]
      164 DUPCLOSURE                       R16 K40 [PROTO_2]
      165 SETTABLEKS                       R16 R15 K41 ["parseJson"]
      167 DUPCLOSURE                       R16 K42 [PROTO_3]
      168 CAPTURE                          VAL R3
      169 SETTABLEKS                       R16 R15 K43 ["request"]
      171 DUPCLOSURE                       R16 K44 [PROTO_4]
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R13
      178 LOADNIL                          R17
      179 DUPTABLE                         R18 K46 [{"Networking", "mock"}]
      180 GETTABLEKS                       R20 R2 K47 ["isCli"]
      182 CALL                             R20 0 1
      183 JUMPIFNOT                        R20 ; [+2]
      184 MOVE                             R19 R15
      185 JUMP                             ; [+1]
      186 MOVE                             R19 R5
      187 SETTABLEKS                       R19 R18 K15 ["Networking"]
      189 NEWCLOSURE                       R19 P5
      190 CAPTURE                          VAL R16
      191 CAPTURE                          REF R17
      192 SETTABLEKS                       R19 R18 K45 ["mock"]
      194 MOVE                             R17 R18
      195 CLOSEUPVALS                      R17
      196 RETURN                           R17 1
