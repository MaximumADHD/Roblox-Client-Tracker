PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v1/universes/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 NAMECALL                         R3 R2 K3 ["get"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v1/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/activate"]
        6 CONCAT                           R6 R7 R9
        7 DUPTABLE                         R7 K5 [{"Body"}]
        8 NEWTABLE                         R8 0 0
       10 SETTABLEKS                       R8 R7 K4 ["Body"]
       12 NAMECALL                         R3 R2 K6 ["post"]
       14 CALL                             R3 4 -1
       15 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v1/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/deactivate"]
        6 CONCAT                           R6 R7 R9
        7 DUPTABLE                         R7 K5 [{"Body"}]
        8 NEWTABLE                         R8 0 0
       10 SETTABLEKS                       R8 R7 K4 ["Body"]
       12 NAMECALL                         R3 R2 K6 ["post"]
       14 CALL                             R3 4 -1
       15 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v2/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/configuration"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/configuration"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R8 K4 ["Body"]
       10 NAMECALL                         R4 R3 K6 ["patch"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v2/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/permissions"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/permissions_batched"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R8 K4 ["Body"]
       10 NAMECALL                         R4 R3 K6 ["post"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/permissions_batched"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R8 K4 ["Body"]
       10 NAMECALL                         R4 R3 K6 ["delete"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__networking"]
        3 LOADK                            R2 K1 ["apis"]
        4 LOADK                            R3 K2 ["/search-api/omni-search"]
        5 DUPTABLE                         R4 K4 [{"Params"}]
        6 DUPTABLE                         R5 K9 [{"searchQuery", "sessionId", "pageType", "verticalType"}]
        7 GETUPVAL                         R6 1
        8 SETTABLEKS                       R6 R5 K5 ["searchQuery"]
       10 GETUPVAL                         R6 2
       11 SETTABLEKS                       R6 R5 K6 ["sessionId"]
       13 LOADK                            R6 K10 ["all"]
       14 SETTABLEKS                       R6 R5 K7 ["pageType"]
       16 LOADK                            R6 K11 ["user"]
       17 SETTABLEKS                       R6 R5 K8 ["verticalType"]
       19 SETTABLEKS                       R5 R4 K3 ["Params"]
       21 NAMECALL                         R0 R0 K12 ["get"]
       23 CALL                             R0 4 1
       24 NAMECALL                         R0 R0 K13 ["await"]
       26 CALL                             R0 1 1
       27 GETTABLEKS                       R1 R0 K14 ["responseCode"]
       29 JUMPIFEQKN                       R1 K15 [200] ; [+4]
       31 NEWTABLE                         R1 0 0
       33 RETURN                           R1 1
       34 GETTABLEKS                       R2 R0 K16 ["responseBody"]
       36 GETTABLEKS                       R2 R2 K17 ["searchResults"]
       38 GETTABLEN                        R1 R2 1
       39 GETTABLEKS                       R1 R1 K18 ["contents"]
       41 NEWTABLE                         R2 0 0
       43 LOADN                            R5 1
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K19 ["MaxSearchResultsPerSubjectTypeUsers"]
       47 LOADN                            R4 1
       48 FORNPREP                         R3
       49 GETTABLE                         R6 R1 R5
       50 JUMPIFNOT                        R6 ; [+24]
       51 DUPTABLE                         R9 K23 [{"UserId", "Name", "DisplayName"}]
       52 GETTABLEKS                       R10 R6 K24 ["contentId"]
       54 SETTABLEKS                       R10 R9 K20 ["UserId"]
       56 GETTABLEKS                       R10 R6 K25 ["username"]
       58 SETTABLEKS                       R10 R9 K21 ["Name"]
       60 GETUPVAL                         R11 4
       61 JUMPIFNOT                        R11 ; [+3]
       62 GETTABLEKS                       R10 R6 K26 ["displayName"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R10
       66 SETTABLEKS                       R10 R9 K22 ["DisplayName"]
       68 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       70 MOVE                             R8 R2
       71 GETIMPORT                        R7 K29 [table.insert]
       73 CALL                             R7 2 0
       74 FORNLOOP                         R3
       75 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R3 1
       11 NEWTABLE                         R4 0 0
       13 RETURN                           R4 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["users"]
        3 LOADK                            R6 K2 ["/v1/usernames/users"]
        4 DUPTABLE                         R7 K4 [{"Body"}]
        5 DUPTABLE                         R8 K6 [{"usernames"}]
        6 SETTABLEKS                       R1 R8 K5 ["usernames"]
        8 SETTABLEKS                       R8 R7 K3 ["Body"]
       10 NAMECALL                         R3 R2 K7 ["post"]
       12 CALL                             R3 4 -1
       13 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["groups"]
        3 LOADK                            R6 K2 ["/v1/groups/search/lookup"]
        4 DUPTABLE                         R7 K4 [{"Params"}]
        5 DUPTABLE                         R8 K7 [{"groupName", "maxRows"}]
        6 SETTABLEKS                       R1 R8 K5 ["groupName"]
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K8 ["MaxSearchResultsPerSubjectType"]
       11 SETTABLEKS                       R9 R8 K6 ["maxRows"]
       13 SETTABLEKS                       R8 R7 K3 ["Params"]
       15 NAMECALL                         R3 R2 K9 ["get"]
       17 CALL                             R3 4 -1
       18 RETURN                           R3 -1

PROTO_13:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["isFriendsOnly"]
       11 RETURN                           R3 1

PROTO_14:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"isFriendsOnly"}]
        2 SETTABLEKS                       R2 R6 K0 ["isFriendsOnly"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["universesV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["isActive"]
       11 RETURN                           R3 1

PROTO_16:
        0 JUMPIFNOT                        R2 ; [+8]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R0 K0 ["universesActivateV1POST"]
        4 CALL                             R3 2 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R0 K2 ["universesDeactivateV1POST"]
       12 CALL                             R3 2 1
       13 NAMECALL                         R3 R3 K1 ["await"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R7 R1
        1 NAMECALL                         R5 R0 K0 ["permissionsV2GET"]
        3 CALL                             R5 2 1
        4 NAMECALL                         R5 R5 K1 ["await"]
        6 CALL                             R5 1 1
        7 GETTABLEKS                       R6 R5 K2 ["responseBody"]
        9 GETTABLEKS                       R6 R6 K3 ["data"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K4 ["DeserializePermissions"]
       14 MOVE                             R8 R6
       15 MOVE                             R9 R2
       16 MOVE                             R10 R3
       17 MOVE                             R11 R4
       18 CALL                             R7 4 -1
       19 RETURN                           R7 -1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["SerializePermissions"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R3
        5 CALL                             R4 2 2
        6 LENGTH                           R7 R4
        7 LENGTH                           R8 R5
        8 ADD                              R6 R7 R8
        9 LOADN                            R7 60
       10 JUMPIFNOTLT                      R7 R6 ; [+29]
       12 GETUPVAL                         R7 1
       13 JUMPIFNOT                        R7 ; [+18]
       14 GETIMPORT                        R7 K2 [error]
       16 LOADK                            R9 K3 ["Too many changes ("]
       17 FASTCALL1                        TOSTRING R6 ; [+3]
       18 MOVE                             R14 R6
       19 GETIMPORT                        R13 K5 [tostring]
       21 CALL                             R13 1 1
       22 MOVE                             R10 R13
       23 LOADK                            R11 K6 [") to permissions. Maximum at once is "]
       24 LOADN                            R13 60
       25 FASTCALL1                        TOSTRING R13 ; [+2]
       26 GETIMPORT                        R12 K5 [tostring]
       28 CALL                             R12 1 1
       29 CONCAT                           R8 R9 R12
       30 CALL                             R7 1 0
       31 JUMP                             ; [+8]
       32 GETIMPORT                        R7 K2 [error]
       34 LOADK                            R9 K3 ["Too many changes ("]
       35 MOVE                             R10 R6
       36 LOADK                            R12 K6 [") to permissions. Maximum at once is "]
       37 ADDK                             R11 R12 K7 [60]
       38 CONCAT                           R8 R9 R11
       39 CALL                             R7 1 0
       40 LENGTH                           R7 R4
       41 LOADN                            R8 0
       42 JUMPIFNOTLT                      R8 R7 ; [+9]
       44 MOVE                             R9 R1
       45 MOVE                             R10 R4
       46 NAMECALL                         R7 R0 K8 ["permissionsBatchedV2POST"]
       48 CALL                             R7 3 1
       49 NAMECALL                         R7 R7 K9 ["await"]
       51 CALL                             R7 1 0
       52 LENGTH                           R7 R5
       53 LOADN                            R8 0
       54 JUMPIFNOTLT                      R8 R7 ; [+9]
       56 MOVE                             R9 R1
       57 MOVE                             R10 R5
       58 NAMECALL                         R7 R0 K10 ["permissionsBatchedV2DELETE"]
       60 CALL                             R7 3 1
       61 NAMECALL                         R7 R7 K9 ["await"]
       63 CALL                             R7 1 0
       64 RETURN                           R4 2

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetUserIdFromNameAsync"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["GetNameFromUserIdAsync"]
        9 CALL                             R1 2 1
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+13]
       13 GETUPVAL                         R4 3
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R0
       17 SETLIST                          R6 R7 1 [1]
       19 NAMECALL                         R4 R4 K2 ["GetUserInfosByUserIdsAsync"]
       21 CALL                             R4 2 1
       22 LOADN                            R5 0
       23 GETTABLE                         R3 R4 R5
       24 GETTABLEKS                       R2 R3 K3 ["DisplayName"]
       26 GETUPVAL                         R4 4
       27 NEWTABLE                         R5 4 0
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R6 R6 K4 ["SubjectNameKey"]
       32 SETTABLE                         R1 R5 R6
       33 GETUPVAL                         R6 5
       34 GETTABLEKS                       R6 R6 K5 ["SubjectDisplayNameKey"]
       36 GETUPVAL                         R8 2
       37 JUMPIFNOT                        R8 ; [+2]
       38 MOVE                             R7 R2
       39 JUMP                             ; [+1]
       40 LOADNIL                          R7
       41 SETTABLE                         R7 R5 R6
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K6 ["SubjectIdKey"]
       45 SETTABLE                         R0 R5 R6
       46 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       48 GETIMPORT                        R3 K9 [table.insert]
       50 CALL                             R3 2 0
       51 RETURN                           R0 0

PROTO_20:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["apisSearchUsers"]
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 LENGTH                           R4 R2
        7 LOADN                            R5 0
        8 JUMPIFNOTLT                      R5 R4 ; [+39]
       10 GETIMPORT                        R4 K2 [pairs]
       12 MOVE                             R5 R2
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 NEWTABLE                         R11 4 0
       17 GETUPVAL                         R12 0
       18 GETTABLEKS                       R12 R12 K3 ["SubjectNameKey"]
       20 GETTABLEKS                       R13 R8 K4 ["Name"]
       22 SETTABLE                         R13 R11 R12
       23 GETUPVAL                         R12 0
       24 GETTABLEKS                       R12 R12 K5 ["SubjectDisplayNameKey"]
       26 GETUPVAL                         R14 1
       27 JUMPIFNOT                        R14 ; [+3]
       28 GETTABLEKS                       R13 R8 K6 ["DisplayName"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R13
       32 SETTABLE                         R13 R11 R12
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K7 ["SubjectIdKey"]
       36 GETTABLEKS                       R13 R8 K8 ["UserId"]
       38 SETTABLE                         R13 R11 R12
       39 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       41 MOVE                             R10 R3
       42 GETIMPORT                        R9 K11 [table.insert]
       44 CALL                             R9 2 0
       45 FORGLOOP                         R4 2 ; [-31]
       47 JUMP                             ; [+10]
       48 GETIMPORT                        R4 K13 [pcall]
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U0
       57 CALL                             R4 1 0
       58 NEWTABLE                         R4 1 0
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K14 ["UserSubjectKey"]
       63 SETTABLE                         R3 R4 R5
       64 RETURN                           R4 1

PROTO_21:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["searchGroupsV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["data"]
       11 NEWTABLE                         R4 0 0
       13 JUMPIFNOT                        R3 ; [+39]
       14 NEWTABLE                         R5 0 0
       16 GETIMPORT                        R6 K5 [pairs]
       18 MOVE                             R7 R3
       19 CALL                             R6 1 3
       20 FORGPREP_NEXT                    R6
       21 NEWTABLE                         R13 4 0
       23 GETUPVAL                         R14 0
       24 GETTABLEKS                       R14 R14 K6 ["GroupNameKey"]
       26 GETTABLEKS                       R15 R10 K7 ["name"]
       28 SETTABLE                         R15 R13 R14
       29 GETUPVAL                         R14 0
       30 GETTABLEKS                       R14 R14 K8 ["GroupIdKey"]
       32 GETTABLEKS                       R15 R10 K9 ["id"]
       34 SETTABLE                         R15 R13 R14
       35 GETUPVAL                         R14 0
       36 GETTABLEKS                       R14 R14 K10 ["GroupMemberCountKey"]
       38 GETTABLEKS                       R15 R10 K11 ["memberCount"]
       40 SETTABLE                         R15 R13 R14
       41 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       43 MOVE                             R12 R5
       44 GETIMPORT                        R11 K14 [table.insert]
       46 CALL                             R11 2 0
       47 FORGLOOP                         R6 2 ; [-27]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K15 ["GroupSubjectKey"]
       52 SETTABLE                         R5 R4 R6
       53 RETURN                           R4 1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["apis"]
        3 LOADK                            R7 K2 ["/experience-guidelines-service/v1beta1/multi-creator-eligibility"]
        4 DUPTABLE                         R8 K4 [{"Body"}]
        5 DUPTABLE                         R9 K9 [{"action", "universeId", "userIds", "locale"}]
        6 LOADN                            R10 1
        7 SETTABLEKS                       R10 R9 K5 ["action"]
        9 SETTABLEKS                       R1 R9 K6 ["universeId"]
       11 SETTABLEKS                       R2 R9 K7 ["userIds"]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K10 ["StudioLocaleId"]
       16 SETTABLEKS                       R10 R9 K8 ["locale"]
       18 SETTABLEKS                       R9 R8 K3 ["Body"]
       20 NAMECALL                         R4 R3 K11 ["post"]
       22 CALL                             R4 4 -1
       23 RETURN                           R4 -1

PROTO_23:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["searchUsers"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["UserSubjectKey"]
        7 GETTABLE                         R4 R3 R5
        8 LOADN                            R7 1
        9 LENGTH                           R5 R4
       10 LOADN                            R6 1
       11 FORNPREP                         R5
       12 GETTABLE                         R8 R4 R7
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K2 ["IsEligibleKey"]
       16 NOT                              R10 R2
       17 SETTABLE                         R10 R8 R9
       18 FORNLOOP                         R5
       19 JUMPIFNOT                        R2 ; [+57]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 0
       24 LOADN                            R9 1
       25 LENGTH                           R7 R4
       26 LOADN                            R8 1
       27 FORNPREP                         R7
       28 GETTABLE                         R11 R4 R9
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K3 ["SubjectIdKey"]
       32 GETTABLE                         R10 R11 R12
       33 SETTABLE                         R10 R5 R9
       34 GETTABLE                         R10 R5 R9
       35 GETTABLE                         R11 R4 R9
       36 SETTABLE                         R11 R6 R10
       37 FORNLOOP                         R7
       38 GETIMPORT                        R9 K5 [game]
       40 GETTABLEKS                       R9 R9 K6 ["GameId"]
       42 MOVE                             R10 R5
       43 NAMECALL                         R7 R0 K7 ["creatorEligibilitiesPOST"]
       45 CALL                             R7 3 1
       46 NAMECALL                         R7 R7 K8 ["await"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K10 [pairs]
       51 GETTABLEKS                       R9 R7 K11 ["responseBody"]
       53 GETTABLEKS                       R9 R9 K12 ["eligibilityByCreator"]
       55 CALL                             R8 1 3
       56 FORGPREP_NEXT                    R8
       57 GETTABLEKS                       R14 R12 K13 ["userId"]
       59 GETTABLE                         R13 R6 R14
       60 GETUPVAL                         R14 0
       61 GETTABLEKS                       R14 R14 K2 ["IsEligibleKey"]
       63 GETTABLEKS                       R15 R12 K14 ["userIsEligible"]
       65 SETTABLE                         R15 R13 R14
       66 GETTABLEKS                       R14 R12 K13 ["userId"]
       68 GETTABLE                         R13 R6 R14
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R14 R14 K15 ["EligibilityTextKey"]
       72 GETTABLEKS                       R15 R12 K16 ["displayText"]
       74 SETTABLE                         R15 R13 R14
       75 FORGLOOP                         R8 2 ; [-19]
       77 MOVE                             R7 R1
       78 NAMECALL                         R5 R0 K17 ["searchGroups"]
       80 CALL                             R5 2 1
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R6 R6 K18 ["Dictionary"]
       84 GETTABLEKS                       R6 R6 K19 ["join"]
       86 MOVE                             R7 R3
       87 MOVE                             R8 R5
       88 CALL                             R6 2 1
       89 RETURN                           R6 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["apis"]
        3 LOADK                            R6 K2 ["/experience-guidelines-service/v1beta1/multi-age-recommendation"]
        4 DUPTABLE                         R7 K4 [{"Body"}]
        5 DUPTABLE                         R8 K6 [{"universeIds"}]
        6 NEWTABLE                         R9 0 1
        8 MOVE                             R10 R1
        9 SETLIST                          R9 R10 1 [1]
       11 SETTABLEKS                       R9 R8 K5 ["universeIds"]
       13 SETTABLEKS                       R8 R7 K3 ["Body"]
       15 NAMECALL                         R3 R2 K7 ["post"]
       17 CALL                             R3 4 -1
       18 RETURN                           R3 -1

PROTO_25:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["guidelinesPOST"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R4 R4 K3 ["ageRecommendationDetailsByUniverse"]
       11 GETTABLEN                        R3 R4 1
       12 FASTCALL1                        ASSERT R3 ; [+3]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K5 [assert]
       16 CALL                             R4 1 0
       17 GETTABLEKS                       R6 R3 K6 ["universeId"]
       19 JUMPIFEQ                         R6 R1 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 FASTCALL1                        ASSERT R5 ; [+2]
       24 GETIMPORT                        R4 K5 [assert]
       26 CALL                             R4 1 0
       27 JUMPIFNOT                        R3 ; [+10]
       28 GETTABLEKS                       R4 R3 K7 ["ageRecommendationDetails"]
       30 GETTABLEKS                       R4 R4 K8 ["ageRecommendationSummary"]
       32 GETTABLEKS                       R4 R4 K9 ["ageRecommendation"]
       34 JUMPIFNOT                        R4 ; [+3]
       35 GETTABLEKS                       R5 R4 K10 ["minimumAge"]
       37 RETURN                           R5 1
       38 LOADNIL                          R4
       39 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Networking"]
       22 GETTABLEKS                       R3 R3 K9 ["Requests"]
       24 GETTABLEKS                       R3 R3 K10 ["DeserializeFromRequest"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Networking"]
       33 GETTABLEKS                       R4 R4 K9 ["Requests"]
       35 GETTABLEKS                       R4 R4 K11 ["SerializeForRequest"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K7 ["Src"]
       42 GETTABLEKS                       R5 R5 K12 ["Util"]
       44 GETTABLEKS                       R5 R5 K13 ["PermissionsConstants"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K15 [game]
       49 LOADK                            R7 K16 ["StudioService"]
       50 NAMECALL                         R5 R5 K17 ["GetService"]
       52 CALL                             R5 2 1
       53 GETIMPORT                        R6 K15 [game]
       55 LOADK                            R8 K18 ["HttpService"]
       56 NAMECALL                         R6 R6 K17 ["GetService"]
       58 CALL                             R6 2 1
       59 GETIMPORT                        R7 K15 [game]
       61 LOADK                            R9 K19 ["Players"]
       62 NAMECALL                         R7 R7 K17 ["GetService"]
       64 CALL                             R7 2 1
       65 GETIMPORT                        R8 K15 [game]
       67 LOADK                            R10 K20 ["Collab8766_LogCollabSearchItemClickedEventV4"]
       68 NAMECALL                         R8 R8 K21 ["GetFastFlag"]
       70 CALL                             R8 2 1
       71 GETIMPORT                        R9 K15 [game]
       73 LOADK                            R11 K22 ["Collab8818_ShowSearchItemDisplayName"]
       74 NAMECALL                         R9 R9 K21 ["GetFastFlag"]
       76 CALL                             R9 2 1
       77 OR                               R10 R8 R9
       78 LOADNIL                          R11
       79 JUMPIFNOT                        R10 ; [+7]
       80 GETIMPORT                        R12 K15 [game]
       82 LOADK                            R14 K23 ["UserService"]
       83 NAMECALL                         R12 R12 K17 ["GetService"]
       85 CALL                             R12 2 1
       86 MOVE                             R11 R12
       87 GETIMPORT                        R12 K15 [game]
       89 LOADK                            R14 K24 ["COLLAB8937FixPrintNumToString"]
       90 NAMECALL                         R12 R12 K21 ["GetFastFlag"]
       92 CALL                             R12 2 1
       93 LOADB                            R15 0
       94 NAMECALL                         R13 R6 K25 ["GenerateGUID"]
       96 CALL                             R13 2 1
       97 NEWTABLE                         R14 32 0
       99 SETTABLEKS                       R14 R14 K26 ["__index"]
      101 DUPCLOSURE                       R15 K27 [PROTO_0]
      102 CAPTURE                          VAL R14
      103 SETTABLEKS                       R15 R14 K28 ["new"]
      105 DUPCLOSURE                       R15 K29 [PROTO_1]
      106 SETTABLEKS                       R15 R14 K30 ["universesV1GET"]
      108 DUPCLOSURE                       R15 K31 [PROTO_2]
      109 SETTABLEKS                       R15 R14 K32 ["universesActivateV1POST"]
      111 DUPCLOSURE                       R15 K33 [PROTO_3]
      112 SETTABLEKS                       R15 R14 K34 ["universesDeactivateV1POST"]
      114 DUPCLOSURE                       R15 K35 [PROTO_4]
      115 SETTABLEKS                       R15 R14 K36 ["configurationV2GET"]
      117 DUPCLOSURE                       R15 K37 [PROTO_5]
      118 SETTABLEKS                       R15 R14 K38 ["configurationV2PATCH"]
      120 DUPCLOSURE                       R15 K39 [PROTO_6]
      121 SETTABLEKS                       R15 R14 K40 ["permissionsV2GET"]
      123 DUPCLOSURE                       R15 K41 [PROTO_7]
      124 SETTABLEKS                       R15 R14 K42 ["permissionsBatchedV2POST"]
      126 DUPCLOSURE                       R15 K43 [PROTO_8]
      127 SETTABLEKS                       R15 R14 K44 ["permissionsBatchedV2DELETE"]
      129 DUPCLOSURE                       R15 K45 [PROTO_10]
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R10
      133 SETTABLEKS                       R15 R14 K46 ["apisSearchUsers"]
      135 DUPCLOSURE                       R15 K47 [PROTO_11]
      136 SETTABLEKS                       R15 R14 K48 ["usersGetByUsernamesV1POST"]
      138 DUPCLOSURE                       R15 K49 [PROTO_12]
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R15 R14 K50 ["searchGroupsV1GET"]
      142 DUPCLOSURE                       R15 K51 [PROTO_13]
      143 SETTABLEKS                       R15 R14 K52 ["isFriendsOnly"]
      145 DUPCLOSURE                       R15 K53 [PROTO_14]
      146 SETTABLEKS                       R15 R14 K54 ["setFriendsOnly"]
      148 DUPCLOSURE                       R15 K55 [PROTO_15]
      149 SETTABLEKS                       R15 R14 K56 ["isActive"]
      151 DUPCLOSURE                       R15 K57 [PROTO_16]
      152 SETTABLEKS                       R15 R14 K58 ["setActive"]
      154 DUPCLOSURE                       R15 K59 [PROTO_17]
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R15 R14 K60 ["getPermissions"]
      158 DUPCLOSURE                       R15 K61 [PROTO_18]
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R12
      161 SETTABLEKS                       R15 R14 K62 ["setPermissions"]
      163 NEWCLOSURE                       R15 P18
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R7
      167 CAPTURE                          REF R11
      168 SETTABLEKS                       R15 R14 K63 ["searchUsers"]
      170 DUPCLOSURE                       R15 K64 [PROTO_21]
      171 CAPTURE                          VAL R4
      172 SETTABLEKS                       R15 R14 K65 ["searchGroups"]
      174 DUPCLOSURE                       R15 K66 [PROTO_22]
      175 CAPTURE                          VAL R5
      176 SETTABLEKS                       R15 R14 K67 ["creatorEligibilitiesPOST"]
      178 DUPCLOSURE                       R15 K68 [PROTO_23]
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R1
      181 SETTABLEKS                       R15 R14 K69 ["search"]
      183 DUPCLOSURE                       R15 K70 [PROTO_24]
      184 SETTABLEKS                       R15 R14 K71 ["guidelinesPOST"]
      186 DUPCLOSURE                       R15 K72 [PROTO_25]
      187 SETTABLEKS                       R15 R14 K73 ["getMinimumAgeRecommendation"]
      189 CLOSEUPVALS                      R11
      190 RETURN                           R14 1
