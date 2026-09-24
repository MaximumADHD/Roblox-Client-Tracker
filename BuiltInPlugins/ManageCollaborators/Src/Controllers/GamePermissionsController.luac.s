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
        6 DUPTABLE                         R5 K11 [{["searchQuery"], ["sessionId"], ["pageType"] = "all", ["verticalType"] = "user"}]
        7 GETUPVAL                         R6 1
        8 SETTABLEKS                       R6 R5 K5 ["searchQuery"]
       10 GETUPVAL                         R6 2
       11 SETTABLEKS                       R6 R5 K6 ["sessionId"]
       13 SETTABLEKS                       R5 R4 K3 ["Params"]
       15 NAMECALL                         R0 R0 K12 ["get"]
       17 CALL                             R0 4 1
       18 NAMECALL                         R0 R0 K13 ["await"]
       20 CALL                             R0 1 1
       21 GETTABLEKS                       R1 R0 K14 ["responseCode"]
       23 JUMPIFEQKN                       R1 K15 [200] ; [+4]
       25 NEWTABLE                         R1 0 0
       27 RETURN                           R1 1
       28 GETTABLEKS                       R2 R0 K16 ["responseBody"]
       30 GETTABLEKS                       R2 R2 K17 ["searchResults"]
       32 GETTABLEN                        R1 R2 1
       33 GETTABLEKS                       R1 R1 K18 ["contents"]
       35 NEWTABLE                         R2 0 0
       37 LOADN                            R5 1
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K19 ["MaxSearchResultsPerSubjectTypeUsers"]
       41 LOADN                            R4 1
       42 FORNPREP                         R3
       43 GETTABLE                         R6 R1 R5
       44 JUMPIFNOT                        R6 ; [+20]
       45 DUPTABLE                         R9 K23 [{"UserId", "Name", "DisplayName"}]
       46 GETTABLEKS                       R10 R6 K24 ["contentId"]
       48 SETTABLEKS                       R10 R9 K20 ["UserId"]
       50 GETTABLEKS                       R10 R6 K25 ["username"]
       52 SETTABLEKS                       R10 R9 K21 ["Name"]
       54 GETTABLEKS                       R10 R6 K26 ["displayName"]
       56 SETTABLEKS                       R10 R9 K22 ["DisplayName"]
       58 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       60 MOVE                             R8 R2
       61 GETIMPORT                        R7 K29 [table.insert]
       63 CALL                             R7 2 0
       64 FORNLOOP                         R3
       65 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R3 1
       10 NEWTABLE                         R4 0 0
       12 RETURN                           R4 1

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
        0 MOVE                             R9 R1
        1 NAMECALL                         R7 R0 K0 ["permissionsV2GET"]
        3 CALL                             R7 2 1
        4 NAMECALL                         R7 R7 K1 ["await"]
        6 CALL                             R7 1 1
        7 GETTABLEKS                       R8 R7 K2 ["responseBody"]
        9 GETTABLEKS                       R8 R8 K3 ["data"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K4 ["DeserializePermissions"]
       14 MOVE                             R10 R8
       15 MOVE                             R11 R2
       16 MOVE                             R12 R3
       17 MOVE                             R13 R4
       18 MOVE                             R14 R5
       19 MOVE                             R15 R6
       20 CALL                             R9 6 -1
       21 RETURN                           R9 -1

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["SerializePermissions"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R3
        5 CALL                             R4 2 2
        6 LENGTH                           R7 R4
        7 LENGTH                           R8 R5
        8 ADD                              R6 R7 R8
        9 LOADN                            R7 60
       10 JUMPIFNOTLT                      R7 R6 ; [+18]
       12 GETIMPORT                        R7 K2 [error]
       14 LOADK                            R9 K3 ["Too many changes ("]
       15 FASTCALL1                        TOSTRING R6 ; [+3]
       16 MOVE                             R14 R6
       17 GETIMPORT                        R13 K5 [tostring]
       19 CALL                             R13 1 1
       20 MOVE                             R10 R13
       21 LOADK                            R11 K6 [") to permissions. Maximum at once is "]
       22 LOADN                            R13 60
       23 FASTCALL1                        TOSTRING R13 ; [+2]
       24 GETIMPORT                        R12 K5 [tostring]
       26 CALL                             R12 1 1
       27 CONCAT                           R8 R9 R12
       28 CALL                             R7 1 0
       29 LENGTH                           R7 R4
       30 LOADN                            R8 0
       31 JUMPIFNOTLT                      R8 R7 ; [+9]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R4
       35 NAMECALL                         R7 R0 K7 ["permissionsBatchedV2POST"]
       37 CALL                             R7 3 1
       38 NAMECALL                         R7 R7 K8 ["await"]
       40 CALL                             R7 1 0
       41 LENGTH                           R7 R5
       42 LOADN                            R8 0
       43 JUMPIFNOTLT                      R8 R7 ; [+9]
       45 MOVE                             R9 R1
       46 MOVE                             R10 R5
       47 NAMECALL                         R7 R0 K9 ["permissionsBatchedV2DELETE"]
       49 CALL                             R7 3 1
       50 NAMECALL                         R7 R7 K8 ["await"]
       52 CALL                             R7 1 0
       53 RETURN                           R4 2

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["SerializePermissions"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R3
        5 CALL                             R4 2 2
        6 LENGTH                           R7 R4
        7 LENGTH                           R8 R5
        8 ADD                              R6 R7 R8
        9 LOADN                            R7 60
       10 JUMPIFNOTLT                      R7 R6 ; [+11]
       12 GETIMPORT                        R7 K2 [error]
       14 LOADK                            R9 K3 ["Too many permission changes: "]
       15 FASTCALL1                        TOSTRING R6 ; [+3]
       16 MOVE                             R11 R6
       17 GETIMPORT                        R10 K5 [tostring]
       19 CALL                             R10 1 1
       20 CONCAT                           R8 R9 R10
       21 CALL                             R7 1 0
       22 LENGTH                           R7 R5
       23 LOADN                            R8 0
       24 JUMPIFNOTLT                      R8 R7 ; [+9]
       26 MOVE                             R9 R1
       27 MOVE                             R10 R5
       28 NAMECALL                         R7 R0 K6 ["permissionsBatchedV2DELETE"]
       30 CALL                             R7 3 1
       31 NAMECALL                         R7 R7 K7 ["await"]
       33 CALL                             R7 1 0
       34 LENGTH                           R7 R4
       35 LOADN                            R8 0
       36 JUMPIFNOTLT                      R8 R7 ; [+9]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R4
       40 NAMECALL                         R7 R0 K8 ["permissionsBatchedV2POST"]
       42 CALL                             R7 3 1
       43 NAMECALL                         R7 R7 K7 ["await"]
       45 CALL                             R7 1 0
       46 RETURN                           R4 2

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetUserIdFromNameAsync"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["GetNameFromUserIdAsync"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R3 2
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R0
       14 SETLIST                          R5 R6 1 [1]
       16 NAMECALL                         R3 R3 K2 ["GetUserInfosByUserIdsAsync"]
       18 CALL                             R3 2 1
       19 LOADN                            R4 0
       20 GETTABLE                         R2 R3 R4
       21 GETTABLEKS                       R3 R2 K3 ["DisplayName"]
       23 GETUPVAL                         R5 3
       24 NEWTABLE                         R6 4 0
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R7 R7 K4 ["SubjectNameKey"]
       29 SETTABLE                         R1 R6 R7
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K5 ["SubjectDisplayNameKey"]
       33 SETTABLE                         R3 R6 R7
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K6 ["SubjectIdKey"]
       37 SETTABLE                         R0 R6 R7
       38 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       40 GETIMPORT                        R4 K9 [table.insert]
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["apisSearchUsers"]
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 LENGTH                           R4 R2
        7 LOADN                            R5 0
        8 JUMPIFNOTLT                      R5 R4 ; [+35]
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
       26 GETTABLEKS                       R13 R8 K6 ["DisplayName"]
       28 SETTABLE                         R13 R11 R12
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K7 ["SubjectIdKey"]
       32 GETTABLEKS                       R13 R8 K8 ["UserId"]
       34 SETTABLE                         R13 R11 R12
       35 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       37 MOVE                             R10 R3
       38 GETIMPORT                        R9 K11 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-27]
       43 JUMP                             ; [+9]
       44 GETIMPORT                        R4 K13 [pcall]
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U0
       52 CALL                             R4 1 0
       53 NEWTABLE                         R4 1 0
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K14 ["UserSubjectKey"]
       58 SETTABLE                         R3 R4 R5
       59 RETURN                           R4 1

PROTO_23:
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

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["apis"]
        3 LOADK                            R7 K2 ["/experience-guidelines-service/v1beta1/multi-creator-eligibility"]
        4 DUPTABLE                         R8 K4 [{"Body"}]
        5 DUPTABLE                         R9 K10 [{["action"] = 1, ["universeId"], ["userIds"], ["locale"]}]
        6 SETTABLEKS                       R1 R9 K7 ["universeId"]
        8 SETTABLEKS                       R2 R9 K8 ["userIds"]
       10 GETUPVAL                         R10 0
       11 GETTABLEKS                       R10 R10 K11 ["StudioLocaleId"]
       13 SETTABLEKS                       R10 R9 K9 ["locale"]
       15 SETTABLEKS                       R9 R8 K3 ["Body"]
       17 NAMECALL                         R4 R3 K12 ["post"]
       19 CALL                             R4 4 -1
       20 RETURN                           R4 -1

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
       67 LOADK                            R10 K20 ["UserService"]
       68 NAMECALL                         R8 R8 K17 ["GetService"]
       70 CALL                             R8 2 1
       71 LOADB                            R11 0
       72 NAMECALL                         R9 R6 K21 ["GenerateGUID"]
       74 CALL                             R9 2 1
       75 NEWTABLE                         R10 32 0
       77 SETTABLEKS                       R10 R10 K22 ["__index"]
       79 DUPCLOSURE                       R11 K23 [PROTO_0]
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R11 R10 K24 ["new"]
       83 DUPCLOSURE                       R11 K25 [PROTO_1]
       84 SETTABLEKS                       R11 R10 K26 ["universesV1GET"]
       86 DUPCLOSURE                       R11 K27 [PROTO_2]
       87 SETTABLEKS                       R11 R10 K28 ["universesActivateV1POST"]
       89 DUPCLOSURE                       R11 K29 [PROTO_3]
       90 SETTABLEKS                       R11 R10 K30 ["universesDeactivateV1POST"]
       92 DUPCLOSURE                       R11 K31 [PROTO_4]
       93 SETTABLEKS                       R11 R10 K32 ["configurationV2GET"]
       95 DUPCLOSURE                       R11 K33 [PROTO_5]
       96 SETTABLEKS                       R11 R10 K34 ["configurationV2PATCH"]
       98 DUPCLOSURE                       R11 K35 [PROTO_6]
       99 SETTABLEKS                       R11 R10 K36 ["permissionsV2GET"]
      101 DUPCLOSURE                       R11 K37 [PROTO_7]
      102 SETTABLEKS                       R11 R10 K38 ["permissionsBatchedV2POST"]
      104 DUPCLOSURE                       R11 K39 [PROTO_8]
      105 SETTABLEKS                       R11 R10 K40 ["permissionsBatchedV2DELETE"]
      107 DUPCLOSURE                       R11 K41 [PROTO_10]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R11 R10 K42 ["apisSearchUsers"]
      112 DUPCLOSURE                       R11 K43 [PROTO_11]
      113 SETTABLEKS                       R11 R10 K44 ["usersGetByUsernamesV1POST"]
      115 DUPCLOSURE                       R11 K45 [PROTO_12]
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R11 R10 K46 ["searchGroupsV1GET"]
      119 DUPCLOSURE                       R11 K47 [PROTO_13]
      120 SETTABLEKS                       R11 R10 K48 ["isFriendsOnly"]
      122 DUPCLOSURE                       R11 K49 [PROTO_14]
      123 SETTABLEKS                       R11 R10 K50 ["setFriendsOnly"]
      125 DUPCLOSURE                       R11 K51 [PROTO_15]
      126 SETTABLEKS                       R11 R10 K52 ["isActive"]
      128 DUPCLOSURE                       R11 K53 [PROTO_16]
      129 SETTABLEKS                       R11 R10 K54 ["setActive"]
      131 DUPCLOSURE                       R11 K55 [PROTO_17]
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R11 R10 K56 ["getPermissions_DEPRECATED"]
      135 DUPCLOSURE                       R11 K57 [PROTO_18]
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R11 R10 K58 ["getPermissions"]
      139 DUPCLOSURE                       R11 K59 [PROTO_19]
      140 CAPTURE                          VAL R3
      141 SETTABLEKS                       R11 R10 K60 ["setPermissions"]
      143 DUPCLOSURE                       R11 K61 [PROTO_20]
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R11 R10 K62 ["setPermissionsDeletesFirst"]
      147 DUPCLOSURE                       R11 K63 [PROTO_22]
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R8
      151 SETTABLEKS                       R11 R10 K64 ["searchUsers"]
      153 DUPCLOSURE                       R11 K65 [PROTO_23]
      154 CAPTURE                          VAL R4
      155 SETTABLEKS                       R11 R10 K66 ["searchGroups"]
      157 DUPCLOSURE                       R11 K67 [PROTO_24]
      158 CAPTURE                          VAL R5
      159 SETTABLEKS                       R11 R10 K68 ["creatorEligibilitiesPOST"]
      161 DUPCLOSURE                       R11 K69 [PROTO_25]
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R1
      164 SETTABLEKS                       R11 R10 K70 ["search"]
      166 DUPCLOSURE                       R11 K71 [PROTO_26]
      167 SETTABLEKS                       R11 R10 K72 ["guidelinesPOST"]
      169 DUPCLOSURE                       R11 K73 [PROTO_27]
      170 SETTABLEKS                       R11 R10 K74 ["getMinimumAgeRecommendation"]
      172 RETURN                           R10 1
