PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["_networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 LOADK                            R5 K1 ["groups"]
        3 LOADK                            R7 K2 ["/v2/groups/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/universes/"]
        6 MOVE                             R10 R2
        7 LOADK                            R11 K4 ["/early-tester"]
        8 CONCAT                           R6 R7 R11
        9 NAMECALL                         R3 R3 K5 ["get"]
       11 CALL                             R3 3 1
       12 NAMECALL                         R3 R3 K6 ["await"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K7 ["responseBody"]
       17 GETTABLEKS                       R4 R4 K8 ["universeRole"]
       19 JUMPIFNOTEQKNIL                  R4 ; [+3]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 DUPTABLE                         R5 K14 [{"id", "name", "memberCount", "isPrivate", "color"}]
       24 GETTABLEKS                       R6 R4 K9 ["id"]
       26 SETTABLEKS                       R6 R5 K9 ["id"]
       28 GETTABLEKS                       R6 R4 K10 ["name"]
       30 SETTABLEKS                       R6 R5 K10 ["name"]
       32 GETTABLEKS                       R6 R4 K11 ["memberCount"]
       34 SETTABLEKS                       R6 R5 K11 ["memberCount"]
       36 GETTABLEKS                       R6 R4 K12 ["isPrivate"]
       38 SETTABLEKS                       R6 R5 K12 ["isPrivate"]
       40 GETTABLEKS                       R6 R4 K13 ["color"]
       42 SETTABLEKS                       R6 R5 K13 ["color"]
       44 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_networking"]
        2 LOADK                            R4 K1 ["groups"]
        3 LOADK                            R6 K2 ["/v1/groups/"]
        4 MOVE                             R7 R1
        5 LOADK                            R8 K3 ["/roles"]
        6 CONCAT                           R5 R6 R8
        7 DUPTABLE                         R6 K5 [{"Params"}]
        8 DUPTABLE                         R7 K8 [{["includePrivate"] = True}]
        9 SETTABLEKS                       R7 R6 K4 ["Params"]
       11 NAMECALL                         R2 R2 K9 ["get"]
       13 CALL                             R2 4 1
       14 NAMECALL                         R2 R2 K10 ["await"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K11 ["responseBody"]
       19 GETTABLEKS                       R3 R3 K12 ["roles"]
       21 JUMPIF                           R3 ; [+2]
       22 NEWTABLE                         R3 0 0
       24 NEWTABLE                         R4 0 0
       26 MOVE                             R5 R3
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLEKS                       R10 R9 K13 ["id"]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K14 ["GroupDefaultMemberRolesetId"]
       35 JUMPIFEQ                         R10 R11 ; [+12]
       37 GETTABLEKS                       R10 R9 K15 ["rank"]
       39 JUMPIFEQKN                       R10 K16 [0] ; [+8]
       41 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       43 MOVE                             R11 R4
       44 MOVE                             R12 R9
       45 GETIMPORT                        R10 K19 [table.insert]
       47 CALL                             R10 2 0
       48 FORGLOOP                         R5 2 ; [-19]
       50 RETURN                           R4 1

PROTO_3:
        0 DUPTABLE                         R3 K6 [{[1] = 100, ["sortOrder"] = "Asc", ["includePrivate"] = True}]
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 SETTABLEKS                       R2 R3 K7 ["cursor"]
        5 GETTABLEKS                       R4 R0 K8 ["_networking"]
        7 LOADK                            R6 K9 ["groups"]
        8 LOADK                            R8 K10 ["/v2/groups/"]
        9 MOVE                             R9 R1
       10 LOADK                            R10 K11 ["/users"]
       11 CONCAT                           R7 R8 R10
       12 DUPTABLE                         R8 K13 [{"Params"}]
       13 SETTABLEKS                       R3 R8 K12 ["Params"]
       15 NAMECALL                         R4 R4 K14 ["get"]
       17 CALL                             R4 4 1
       18 NAMECALL                         R4 R4 K15 ["await"]
       20 CALL                             R4 1 1
       21 NEWTABLE                         R5 0 0
       23 GETTABLEKS                       R6 R4 K16 ["responseBody"]
       25 GETTABLEKS                       R6 R6 K17 ["data"]
       27 JUMPIF                           R6 ; [+2]
       28 NEWTABLE                         R6 0 0
       30 MOVE                             R7 R6
       31 LOADNIL                          R8
       32 LOADNIL                          R9
       33 FORGPREP                         R7
       34 GETTABLEKS                       R13 R11 K18 ["user"]
       36 OR                               R12 R13 R11
       37 DUPTABLE                         R15 K22 [{"userId", "username", "displayName"}]
       38 GETTABLEKS                       R16 R12 K19 ["userId"]
       40 JUMPIF                           R16 ; [+2]
       41 GETTABLEKS                       R16 R12 K23 ["id"]
       43 SETTABLEKS                       R16 R15 K19 ["userId"]
       45 GETTABLEKS                       R16 R12 K20 ["username"]
       47 JUMPIF                           R16 ; [+2]
       48 GETTABLEKS                       R16 R12 K24 ["name"]
       50 SETTABLEKS                       R16 R15 K20 ["username"]
       52 GETTABLEKS                       R16 R12 K21 ["displayName"]
       54 SETTABLEKS                       R16 R15 K21 ["displayName"]
       56 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       58 MOVE                             R14 R5
       59 GETIMPORT                        R13 K27 [table.insert]
       61 CALL                             R13 2 0
       62 FORGLOOP                         R7 2 ; [-29]
       64 GETTABLEKS                       R7 R4 K16 ["responseBody"]
       66 GETTABLEKS                       R7 R7 K28 ["nextPageCursor"]
       68 JUMPIFEQKS                       R7 K29 [""] ; [+4]
       70 LENGTH                           R8 R6
       71 JUMPIFNOTEQKN                    R8 K30 [0] ; [+2]
       73 LOADNIL                          R7
       74 MOVE                             R8 R5
       75 MOVE                             R9 R7
       76 RETURN                           R8 2

PROTO_4:
        0 DUPTABLE                         R4 K7 [{[1], ["limit"] = 100, ["includeRoles"] = False, ["includePrivate"] = True}]
        1 SETTABLEKS                       R2 R4 K0 ["query"]
        3 JUMPIFEQKNIL                     R3 ; [+3]
        5 SETTABLEKS                       R3 R4 K8 ["cursor"]
        7 GETTABLEKS                       R5 R0 K9 ["_networking"]
        9 LOADK                            R7 K10 ["groups"]
       10 LOADK                            R9 K11 ["/v2/groups/"]
       11 MOVE                             R10 R1
       12 LOADK                            R11 K12 ["/users/search"]
       13 CONCAT                           R8 R9 R11
       14 DUPTABLE                         R9 K14 [{"Params"}]
       15 SETTABLEKS                       R4 R9 K13 ["Params"]
       17 NAMECALL                         R5 R5 K15 ["get"]
       19 CALL                             R5 4 1
       20 NAMECALL                         R5 R5 K16 ["await"]
       22 CALL                             R5 1 1
       23 NEWTABLE                         R6 0 0
       25 GETTABLEKS                       R7 R5 K17 ["responseBody"]
       27 GETTABLEKS                       R7 R7 K18 ["data"]
       29 JUMPIF                           R7 ; [+2]
       30 NEWTABLE                         R7 0 0
       32 MOVE                             R8 R7
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 GETTABLEKS                       R14 R12 K19 ["user"]
       38 OR                               R13 R14 R12
       39 DUPTABLE                         R16 K23 [{"userId", "username", "displayName"}]
       40 GETTABLEKS                       R17 R13 K20 ["userId"]
       42 JUMPIF                           R17 ; [+2]
       43 GETTABLEKS                       R17 R13 K24 ["id"]
       45 SETTABLEKS                       R17 R16 K20 ["userId"]
       47 GETTABLEKS                       R17 R13 K21 ["username"]
       49 JUMPIF                           R17 ; [+2]
       50 GETTABLEKS                       R17 R13 K25 ["name"]
       52 SETTABLEKS                       R17 R16 K21 ["username"]
       54 GETTABLEKS                       R17 R13 K22 ["displayName"]
       56 SETTABLEKS                       R17 R16 K22 ["displayName"]
       58 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       60 MOVE                             R15 R6
       61 GETIMPORT                        R14 K28 [table.insert]
       63 CALL                             R14 2 0
       64 FORGLOOP                         R8 2 ; [-29]
       66 GETTABLEKS                       R8 R5 K17 ["responseBody"]
       68 GETTABLEKS                       R8 R8 K29 ["nextPageCursor"]
       70 JUMPIFEQKS                       R8 K30 [""] ; [+4]
       72 LENGTH                           R9 R7
       73 JUMPIFNOTEQKN                    R9 K31 [0] ; [+2]
       75 LOADNIL                          R8
       76 MOVE                             R9 R6
       77 MOVE                             R10 R8
       78 RETURN                           R9 2

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 LOADNIL                          R4
        3 DUPTABLE                         R5 K4 [{[1] = 25, ["sortOrder"] = "Asc"}]
        4 JUMPIFEQKNIL                     R4 ; [+3]
        6 SETTABLEKS                       R4 R5 K5 ["cursor"]
        8 GETTABLEKS                       R6 R0 K6 ["_networking"]
       10 LOADK                            R8 K7 ["groups"]
       11 LOADK                            R10 K8 ["/v1/groups/"]
       12 MOVE                             R11 R1
       13 LOADK                            R12 K9 ["/roles/"]
       14 MOVE                             R13 R2
       15 LOADK                            R14 K10 ["/users"]
       16 CONCAT                           R9 R10 R14
       17 DUPTABLE                         R10 K12 [{"Params"}]
       18 SETTABLEKS                       R5 R10 K11 ["Params"]
       20 NAMECALL                         R6 R6 K13 ["get"]
       22 CALL                             R6 4 1
       23 NAMECALL                         R6 R6 K14 ["await"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R7 R6 K15 ["responseBody"]
       28 GETTABLEKS                       R7 R7 K16 ["data"]
       30 JUMPIF                           R7 ; [+2]
       31 NEWTABLE                         R7 0 0
       33 MOVE                             R8 R7
       34 LOADNIL                          R9
       35 LOADNIL                          R10
       36 FORGPREP                         R8
       37 DUPTABLE                         R15 K20 [{"userId", "username", "displayName"}]
       38 GETTABLEKS                       R16 R12 K17 ["userId"]
       40 JUMPIF                           R16 ; [+2]
       41 GETTABLEKS                       R16 R12 K21 ["id"]
       43 SETTABLEKS                       R16 R15 K17 ["userId"]
       45 GETTABLEKS                       R16 R12 K18 ["username"]
       47 JUMPIF                           R16 ; [+2]
       48 GETTABLEKS                       R16 R12 K22 ["name"]
       50 SETTABLEKS                       R16 R15 K18 ["username"]
       52 GETTABLEKS                       R16 R12 K19 ["displayName"]
       54 SETTABLEKS                       R16 R15 K19 ["displayName"]
       56 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       58 MOVE                             R14 R3
       59 GETIMPORT                        R13 K25 [table.insert]
       61 CALL                             R13 2 0
       62 FORGLOOP                         R8 2 ; [-26]
       64 GETTABLEKS                       R8 R6 K15 ["responseBody"]
       66 GETTABLEKS                       R4 R8 K26 ["nextPageCursor"]
       68 JUMPIFEQKNIL                     R4 ; [+7]
       70 JUMPIFEQKS                       R4 K27 [""] ; [+5]
       72 LENGTH                           R8 R7
       73 JUMPIFEQKN                       R8 K28 [0] ; [+2]
       75 JUMPBACK                         ; [-73]
       76 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 LOADK                            R5 K1 ["groups"]
        3 LOADK                            R7 K2 ["/v1/groups/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/rolesets/create"]
        6 CONCAT                           R6 R7 R9
        7 DUPTABLE                         R7 K5 [{"Body"}]
        8 DUPTABLE                         R8 K15 [{["name"], ["description"] = "", ["rank"] = 1, ["usingGroupFunds"] = False, ["isPrivate"] = True}]
        9 SETTABLEKS                       R2 R8 K6 ["name"]
       11 SETTABLEKS                       R8 R7 K4 ["Body"]
       13 NAMECALL                         R3 R3 K16 ["post"]
       15 CALL                             R3 4 1
       16 NAMECALL                         R3 R3 K17 ["await"]
       18 CALL                             R3 1 1
       19 DUPTABLE                         R4 K19 [{"id", "name", "isPrivate"}]
       20 GETTABLEKS                       R5 R3 K20 ["responseBody"]
       22 GETTABLEKS                       R5 R5 K18 ["id"]
       24 SETTABLEKS                       R5 R4 K18 ["id"]
       26 GETTABLEKS                       R5 R3 K20 ["responseBody"]
       28 GETTABLEKS                       R5 R5 K6 ["name"]
       30 SETTABLEKS                       R5 R4 K6 ["name"]
       32 GETTABLEKS                       R5 R3 K20 ["responseBody"]
       34 GETTABLEKS                       R5 R5 K13 ["isPrivate"]
       36 SETTABLEKS                       R5 R4 K13 ["isPrivate"]
       38 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["_networking"]
        2 LOADK                            R6 K1 ["groups"]
        3 LOADK                            R8 K2 ["/v1/groups/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/roles/"]
        6 MOVE                             R11 R2
        7 LOADK                            R12 K4 ["/users/"]
        8 MOVE                             R13 R3
        9 CONCAT                           R7 R8 R13
       10 DUPTABLE                         R8 K7 [{["expectEmptyResponse"] = True}]
       11 NAMECALL                         R4 R4 K8 ["put"]
       13 CALL                             R4 4 1
       14 NAMECALL                         R4 R4 K9 ["await"]
       16 CALL                             R4 1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["_networking"]
        2 LOADK                            R6 K1 ["groups"]
        3 LOADK                            R8 K2 ["/v1/groups/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/roles/"]
        6 MOVE                             R11 R2
        7 LOADK                            R12 K4 ["/users/"]
        8 MOVE                             R13 R3
        9 CONCAT                           R7 R8 R13
       10 DUPTABLE                         R8 K7 [{["expectEmptyResponse"] = True}]
       11 NAMECALL                         R4 R4 K8 ["delete"]
       13 CALL                             R4 4 1
       14 NAMECALL                         R4 R4 K9 ["await"]
       16 CALL                             R4 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["_networking"]
        2 LOADK                            R6 K1 ["groups"]
        3 LOADK                            R8 K2 ["/v2/groups/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/roles/"]
        6 MOVE                             R11 R2
        7 LOADK                            R12 K4 ["/permissions/universes/"]
        8 MOVE                             R13 R3
        9 CONCAT                           R7 R8 R13
       10 DUPTABLE                         R8 K6 [{"Body"}]
       11 DUPTABLE                         R9 K8 [{"permissions"}]
       12 NEWTABLE                         R10 1 0
       14 LOADK                            R11 K9 ["Granted"]
       15 SETTABLEKS                       R11 R10 K10 ["Universe.EarlyTester"]
       17 SETTABLEKS                       R10 R9 K7 ["permissions"]
       19 SETTABLEKS                       R9 R8 K5 ["Body"]
       21 NAMECALL                         R4 R4 K11 ["patch"]
       23 CALL                             R4 4 1
       24 NAMECALL                         R4 R4 K12 ["await"]
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_networking"]
        2 LOADK                            R6 K1 ["groups"]
        3 LOADK                            R8 K2 ["/v2/groups/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/roles/"]
        6 MOVE                             R11 R2
        7 LOADK                            R12 K4 ["/permissions/universes/"]
        8 MOVE                             R13 R3
        9 CONCAT                           R7 R8 R13
       10 DUPTABLE                         R8 K6 [{"Body"}]
       11 DUPTABLE                         R9 K8 [{"permissions"}]
       12 NEWTABLE                         R10 1 0
       14 LOADK                            R11 K9 ["Denied"]
       15 SETTABLEKS                       R11 R10 K10 ["Universe.EarlyTester"]
       17 SETTABLEKS                       R10 R9 K7 ["permissions"]
       19 SETTABLEKS                       R9 R8 K5 ["Body"]
       21 NAMECALL                         R4 R4 K11 ["patch"]
       23 CALL                             R4 4 1
       24 NAMECALL                         R4 R4 K12 ["await"]
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["GetPlayTesterPermissionMaxCount"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 16 0
       29 SETTABLEKS                       R3 R3 K9 ["__index"]
       31 DUPCLOSURE                       R4 K10 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R4 R3 K11 ["new"]
       35 DUPCLOSURE                       R4 K12 [PROTO_1]
       36 SETTABLEKS                       R4 R3 K13 ["getAssignment"]
       38 DUPCLOSURE                       R4 K14 [PROTO_2]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R3 K15 ["getAllRoles"]
       42 DUPCLOSURE                       R4 K16 [PROTO_3]
       43 SETTABLEKS                       R4 R3 K17 ["getGroupMembersPage"]
       45 DUPCLOSURE                       R4 K18 [PROTO_4]
       46 SETTABLEKS                       R4 R3 K19 ["searchGroupMembers"]
       48 DUPCLOSURE                       R4 K20 [PROTO_5]
       49 SETTABLEKS                       R4 R3 K21 ["getRoleMembers"]
       51 DUPCLOSURE                       R4 K22 [PROTO_6]
       52 SETTABLEKS                       R4 R3 K23 ["createRole"]
       54 DUPCLOSURE                       R4 K24 [PROTO_7]
       55 SETTABLEKS                       R4 R3 K25 ["addMember"]
       57 DUPCLOSURE                       R4 K26 [PROTO_8]
       58 SETTABLEKS                       R4 R3 K27 ["removeMember"]
       60 DUPCLOSURE                       R4 K28 [PROTO_9]
       61 SETTABLEKS                       R4 R3 K29 ["grantPermission"]
       63 DUPCLOSURE                       R4 K30 [PROTO_10]
       64 SETTABLEKS                       R4 R3 K31 ["revokePermission"]
       66 MOVE                             R4 R2
       67 CALL                             R4 0 1
       68 SETTABLEKS                       R4 R3 K32 ["MAX_EARLY_TESTER_MEMBERS"]
       70 RETURN                           R3 1
