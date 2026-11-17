PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K0 ["userId"]
       11 SETTABLE                         R6 R1 R7
       12 FORGLOOP                         R2 2 ; [-4]
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K0 ["userId"]
       11 LOADB                            R8 1
       12 SETTABLE                         R8 R1 R7
       13 FORGLOOP                         R2 2 ; [-5]
       15 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K28 [{[1] = , ["ExistingMemberIds"], ["Mode"], ["PendingRoleId"] = , ["PendingRoleName"] = , ["PendingRoleIsPrivate"] = , ["PendingRoleColor"] = , ["PendingMembers"], ["AllRoles"], ["SaveError"] = , ["LoadError"] = False, ["CanAssignRole"] = False, ["Screen"], ["GroupMembers"], ["GroupMembersCursor"] = , ["GroupMembersExhausted"] = False, ["GroupMembersLoading"] = False, ["SearchQuery"] = "", ["SearchResults"], ["SearchResultsCursor"] = , ["SearchResultsExhausted"] = False, ["SearchResultsLoading"] = False, ["SearchSelection"], ["PickedRoleId"] = , ["MemberEligibility"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["ExistingMemberIds"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K29 ["Unset"]
        8 SETTABLEKS                       R1 R0 K3 ["Mode"]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K8 ["PendingMembers"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K9 ["AllRoles"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K30 ["Main"]
       21 SETTABLEKS                       R1 R0 K14 ["Screen"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K15 ["GroupMembers"]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K21 ["SearchResults"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K25 ["SearchSelection"]
       35 NEWTABLE                         R1 0 0
       37 SETTABLEKS                       R1 R0 K27 ["MemberEligibility"]
       39 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["role"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K15 [{["ExistingRole"], ["ExistingMemberIds"], ["SavedMemberCount"], ["Mode"], ["PendingRoleId"], ["PendingRoleName"], ["PendingRoleIsPrivate"], ["PendingRoleColor"], ["PendingMembers"], ["SaveError"], ["LoadError"] = False}]
        9 SETTABLEKS                       R2 R5 K3 ["ExistingRole"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R7 R1 K16 ["members"]
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K4 ["ExistingMemberIds"]
       17 GETTABLEKS                       R7 R1 K16 ["members"]
       19 JUMPIFNOT                        R7 ; [+4]
       20 GETTABLEKS                       R7 R1 K16 ["members"]
       22 LENGTH                           R6 R7
       23 JUMP                             ; [+1]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K5 ["SavedMemberCount"]
       27 JUMPIFEQKNIL                     R2 ; [+5]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K17 ["EditingAssigned"]
       32 JUMP                             ; [+3]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K18 ["Unset"]
       36 SETTABLEKS                       R6 R5 K6 ["Mode"]
       38 JUMPIFEQKNIL                     R2 ; [+4]
       40 GETTABLEKS                       R6 R2 K19 ["id"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R6
       44 SETTABLEKS                       R6 R5 K7 ["PendingRoleId"]
       46 JUMPIFEQKNIL                     R2 ; [+4]
       48 GETTABLEKS                       R6 R2 K20 ["name"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R6
       52 SETTABLEKS                       R6 R5 K8 ["PendingRoleName"]
       54 JUMPIFEQKNIL                     R2 ; [+4]
       56 GETTABLEKS                       R6 R2 K21 ["isPrivate"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K9 ["PendingRoleIsPrivate"]
       62 JUMPIFEQKNIL                     R2 ; [+4]
       64 GETTABLEKS                       R6 R2 K22 ["color"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R6
       68 SETTABLEKS                       R6 R5 K10 ["PendingRoleColor"]
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R7 R1 K16 ["members"]
       73 CALL                             R6 1 1
       74 SETTABLEKS                       R6 R5 K11 ["PendingMembers"]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K23 ["None"]
       79 SETTABLEKS                       R6 R5 K12 ["SaveError"]
       81 CALL                             R3 2 -1
       82 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"LoadError"}]
        7 GETTABLEKS                       R5 R1 K4 ["hasError"]
        9 SETTABLEKS                       R5 R4 K2 ["LoadError"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CanAssignRole"}]
        7 GETTABLEKS                       R5 R1 K4 ["canAssignRole"]
        9 SETTABLEKS                       R5 R4 K2 ["CanAssignRole"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K10 [{"Mode", "PendingRoleId", "PendingRoleName", "PendingRoleIsPrivate", "PendingRoleColor", "PendingMembers", "ExistingMemberIds", "SaveError"}]
        7 GETTABLEKS                       R5 R1 K11 ["mode"]
        9 SETTABLEKS                       R5 R4 K2 ["Mode"]
       11 GETTABLEKS                       R5 R1 K12 ["roleId"]
       13 SETTABLEKS                       R5 R4 K3 ["PendingRoleId"]
       15 GETTABLEKS                       R5 R1 K13 ["roleName"]
       17 SETTABLEKS                       R5 R4 K4 ["PendingRoleName"]
       19 GETTABLEKS                       R5 R1 K14 ["isPrivate"]
       21 SETTABLEKS                       R5 R4 K5 ["PendingRoleIsPrivate"]
       23 GETTABLEKS                       R5 R1 K15 ["color"]
       25 SETTABLEKS                       R5 R4 K6 ["PendingRoleColor"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R6 R1 K16 ["members"]
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K7 ["PendingMembers"]
       33 GETTABLEKS                       R6 R1 K11 ["mode"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K17 ["UsingExisting"]
       38 JUMPIFNOTEQ                      R6 R7 ; [+6]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R6 R1 K16 ["members"]
       43 CALL                             R5 1 1
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R5 R0 K8 ["ExistingMemberIds"]
       47 SETTABLEKS                       R5 R4 K8 ["ExistingMemberIds"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K18 ["None"]
       52 SETTABLEKS                       R5 R4 K9 ["SaveError"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"PendingRoleId", "PendingRoleName", "PendingRoleIsPrivate"}]
        7 GETTABLEKS                       R5 R1 K6 ["roleId"]
        9 SETTABLEKS                       R5 R4 K2 ["PendingRoleId"]
       11 GETTABLEKS                       R5 R1 K7 ["roleName"]
       13 SETTABLEKS                       R5 R4 K3 ["PendingRoleName"]
       15 GETTABLEKS                       R5 R1 K8 ["isPrivate"]
       17 SETTABLEKS                       R5 R4 K4 ["PendingRoleIsPrivate"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["member"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"PendingMembers"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["Dictionary"]
       12 GETTABLEKS                       R6 R6 K2 ["join"]
       14 GETTABLEKS                       R7 R0 K3 ["PendingMembers"]
       16 NEWTABLE                         R8 1 0
       18 GETTABLEKS                       R9 R2 K5 ["userId"]
       20 SETTABLE                         R2 R8 R9
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K3 ["PendingMembers"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R1 K0 ["members"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R7 K1 ["userId"]
        9 SETTABLE                         R7 R2 R8
       10 FORGLOOP                         R3 2 ; [-4]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
       15 GETTABLEKS                       R3 R3 K3 ["join"]
       17 MOVE                             R4 R0
       18 DUPTABLE                         R5 K5 [{"PendingMembers"}]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       22 GETTABLEKS                       R6 R6 K3 ["join"]
       24 GETTABLEKS                       R7 R0 K4 ["PendingMembers"]
       26 MOVE                             R8 R2
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K4 ["PendingMembers"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"PendingMembers"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["PendingMembers"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["userId"]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K5 ["None"]
       21 SETTABLE                         R9 R7 R8
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K2 ["PendingMembers"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"AllRoles"}]
        7 GETTABLEKS                       R5 R1 K4 ["roles"]
        9 SETTABLEKS                       R5 R4 K2 ["AllRoles"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SaveError"}]
        7 GETTABLEKS                       R5 R1 K4 ["errorKey"]
        9 SETTABLEKS                       R5 R4 K2 ["SaveError"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K13 [{["Screen"], ["SearchSelection"], ["PickedRoleId"], ["SearchQuery"] = "", ["SearchResults"], ["SearchResultsCursor"] = , ["SearchResultsExhausted"] = False, ["SearchResultsLoading"] = False}]
        7 GETTABLEKS                       R5 R1 K14 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["Screen"]
       11 NEWTABLE                         R5 0 0
       13 SETTABLEKS                       R5 R4 K3 ["SearchSelection"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K15 ["None"]
       18 SETTABLEKS                       R5 R4 K4 ["PickedRoleId"]
       20 NEWTABLE                         R5 0 0
       22 SETTABLEKS                       R5 R4 K7 ["SearchResults"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["member"]
        2 LOADNIL                          R3
        3 GETTABLEKS                       R5 R0 K1 ["SearchSelection"]
        5 GETTABLEKS                       R6 R2 K2 ["userId"]
        7 GETTABLE                         R4 R5 R6
        8 JUMPIFNOT                        R4 ; [+18]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       12 GETTABLEKS                       R4 R4 K4 ["join"]
       14 GETTABLEKS                       R5 R0 K1 ["SearchSelection"]
       16 NEWTABLE                         R6 1 0
       18 GETTABLEKS                       R7 R2 K2 ["userId"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K5 ["None"]
       23 SETTABLE                         R8 R6 R7
       24 CALL                             R4 2 1
       25 MOVE                             R3 R4
       26 JUMP                             ; [+14]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       30 GETTABLEKS                       R4 R4 K4 ["join"]
       32 GETTABLEKS                       R5 R0 K1 ["SearchSelection"]
       34 NEWTABLE                         R6 1 0
       36 GETTABLEKS                       R7 R2 K2 ["userId"]
       38 SETTABLE                         R2 R6 R7
       39 CALL                             R4 2 1
       40 MOVE                             R3 R4
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       44 GETTABLEKS                       R4 R4 K4 ["join"]
       46 MOVE                             R5 R0
       47 DUPTABLE                         R6 K6 [{"SearchSelection"}]
       48 SETTABLEKS                       R3 R6 K1 ["SearchSelection"]
       50 CALL                             R4 2 -1
       51 RETURN                           R4 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"PickedRoleId"}]
        7 GETTABLEKS                       R5 R1 K4 ["roleId"]
        9 SETTABLEKS                       R5 R4 K2 ["PickedRoleId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_17:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETTABLEKS                       R3 R0 K3 ["GroupMembers"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K4 ["members"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R7
       14 GETIMPORT                        R8 K6 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-8]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["Dictionary"]
       22 GETTABLEKS                       R3 R3 K8 ["join"]
       24 MOVE                             R4 R0
       25 DUPTABLE                         R5 K13 [{["GroupMembers"], ["GroupMembersCursor"], ["GroupMembersExhausted"], ["GroupMembersLoading"] = False}]
       26 SETTABLEKS                       R2 R5 K3 ["GroupMembers"]
       28 GETTABLEKS                       R6 R1 K14 ["nextCursor"]
       30 SETTABLEKS                       R6 R5 K9 ["GroupMembersCursor"]
       32 GETTABLEKS                       R7 R1 K14 ["nextCursor"]
       34 JUMPIFEQKNIL                     R7 ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 SETTABLEKS                       R6 R5 K10 ["GroupMembersExhausted"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"GroupMembersLoading"}]
        7 GETTABLEKS                       R5 R1 K4 ["isLoading"]
        9 SETTABLEKS                       R5 R4 K2 ["GroupMembersLoading"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SearchQuery"}]
        7 GETTABLEKS                       R5 R1 K4 ["query"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchQuery"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K7 [{["SearchResults"], ["SearchResultsCursor"], ["SearchResultsExhausted"], ["SearchResultsLoading"] = False}]
        7 GETTABLEKS                       R5 R1 K8 ["members"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchResults"]
       11 GETTABLEKS                       R5 R1 K9 ["nextCursor"]
       13 SETTABLEKS                       R5 R4 K3 ["SearchResultsCursor"]
       15 GETTABLEKS                       R6 R1 K9 ["nextCursor"]
       17 JUMPIFEQKNIL                     R6 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K4 ["SearchResultsExhausted"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_21:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETTABLEKS                       R3 R0 K3 ["SearchResults"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K4 ["members"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R7
       14 GETIMPORT                        R8 K6 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-8]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["Dictionary"]
       22 GETTABLEKS                       R3 R3 K8 ["join"]
       24 MOVE                             R4 R0
       25 DUPTABLE                         R5 K13 [{["SearchResults"], ["SearchResultsCursor"], ["SearchResultsExhausted"], ["SearchResultsLoading"] = False}]
       26 SETTABLEKS                       R2 R5 K3 ["SearchResults"]
       28 GETTABLEKS                       R6 R1 K14 ["nextCursor"]
       30 SETTABLEKS                       R6 R5 K9 ["SearchResultsCursor"]
       32 GETTABLEKS                       R7 R1 K14 ["nextCursor"]
       34 JUMPIFEQKNIL                     R7 ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 SETTABLEKS                       R6 R5 K10 ["SearchResultsExhausted"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SearchResultsLoading"}]
        7 GETTABLEKS                       R5 R1 K4 ["isLoading"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchResultsLoading"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R1 K0 ["eligibility"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIF                           R8 ; [+19]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K1 ["None"]
       13 SETTABLE                         R9 R2 R7
       14 GETTABLEKS                       R9 R0 K2 ["Mode"]
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K3 ["CreatingNew"]
       19 JUMPIFEQ                         R9 R10 ; [+5]
       21 GETTABLEKS                       R10 R0 K4 ["ExistingMemberIds"]
       23 GETTABLE                         R9 R10 R7
       24 JUMPIF                           R9 ; [+4]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K1 ["None"]
       28 SETTABLE                         R9 R3 R7
       29 FORGLOOP                         R4 2 ; [-21]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K5 ["Dictionary"]
       34 GETTABLEKS                       R4 R4 K6 ["join"]
       36 MOVE                             R5 R0
       37 DUPTABLE                         R6 K10 [{"MemberEligibility", "SearchSelection", "PendingMembers"}]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       41 GETTABLEKS                       R7 R7 K6 ["join"]
       43 GETTABLEKS                       R8 R0 K7 ["MemberEligibility"]
       45 GETTABLEKS                       R9 R1 K0 ["eligibility"]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K7 ["MemberEligibility"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       53 GETTABLEKS                       R7 R7 K6 ["join"]
       55 GETTABLEKS                       R8 R0 K8 ["SearchSelection"]
       57 MOVE                             R9 R2
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K8 ["SearchSelection"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       64 GETTABLEKS                       R7 R7 K6 ["join"]
       66 GETTABLEKS                       R8 R0 K9 ["PendingMembers"]
       68 MOVE                             R9 R3
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K9 ["PendingMembers"]
       72 CALL                             R4 2 -1
       73 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetEarlyTesterLoadedData"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["SetEarlyTesterPendingRole"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R3 K12 ["SetEarlyTesterCreatedRole"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R3 K13 ["AddEarlyTesterMember"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R9 R3 K14 ["AddEarlyTesterMembers"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K4 [require]
       54 GETTABLEKS                       R10 R3 K15 ["RemoveEarlyTesterMember"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K4 [require]
       59 GETTABLEKS                       R11 R3 K16 ["SetEarlyTesterAllRoles"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETTABLEKS                       R12 R3 K17 ["SetEarlyTesterSaveError"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K4 [require]
       69 GETTABLEKS                       R13 R3 K18 ["SetEarlyTesterLoadError"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K4 [require]
       74 GETTABLEKS                       R14 R3 K19 ["SetEarlyTesterCanAssignRole"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K4 [require]
       79 GETTABLEKS                       R15 R3 K20 ["SetEarlyTesterScreen"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K4 [require]
       84 GETTABLEKS                       R16 R3 K21 ["AddGroupMembersPage"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K4 [require]
       89 GETTABLEKS                       R17 R3 K22 ["SetGroupMembersLoading"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K4 [require]
       94 GETTABLEKS                       R18 R3 K23 ["ToggleEarlyTesterSelection"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K4 [require]
       99 GETTABLEKS                       R19 R3 K24 ["SetEarlyTesterPickedRoleId"]
      101 CALL                             R18 1 1
      102 GETIMPORT                        R19 K4 [require]
      104 GETTABLEKS                       R20 R3 K25 ["SetGroupMemberSearchQuery"]
      106 CALL                             R19 1 1
      107 GETIMPORT                        R20 K4 [require]
      109 GETTABLEKS                       R21 R3 K26 ["SetGroupMemberSearchResults"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K4 [require]
      114 GETTABLEKS                       R22 R3 K27 ["AddGroupMemberSearchResultsPage"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K4 [require]
      119 GETTABLEKS                       R23 R3 K28 ["SetGroupMemberSearchResultsLoading"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K4 [require]
      124 GETTABLEKS                       R24 R3 K29 ["AddEarlyTesterMemberEligibility"]
      126 CALL                             R23 1 1
      127 GETIMPORT                        R24 K4 [require]
      129 GETTABLEKS                       R25 R0 K8 ["Src"]
      131 GETTABLEKS                       R25 R25 K30 ["Util"]
      133 GETTABLEKS                       R25 R25 K31 ["EarlyTesterMode"]
      135 CALL                             R24 1 1
      136 GETIMPORT                        R25 K4 [require]
      138 GETTABLEKS                       R26 R0 K8 ["Src"]
      140 GETTABLEKS                       R26 R26 K30 ["Util"]
      142 GETTABLEKS                       R26 R26 K32 ["EarlyTesterScreen"]
      144 CALL                             R25 1 1
      145 DUPCLOSURE                       R26 K33 [PROTO_0]
      146 DUPCLOSURE                       R27 K34 [PROTO_1]
      147 DUPCLOSURE                       R28 K35 [PROTO_2]
      148 CAPTURE                          VAL R24
      149 CAPTURE                          VAL R25
      150 GETTABLEKS                       R29 R1 K36 ["createReducer"]
      152 MOVE                             R30 R28
      153 CALL                             R30 0 1
      154 NEWTABLE                         R31 32 0
      156 DUPCLOSURE                       R32 K37 [PROTO_3]
      157 CAPTURE                          VAL R28
      158 SETTABLEKS                       R32 R31 K38 ["ResetStore"]
      160 GETTABLEKS                       R32 R4 K39 ["name"]
      162 DUPCLOSURE                       R33 K40 [PROTO_4]
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R27
      165 CAPTURE                          VAL R24
      166 CAPTURE                          VAL R26
      167 SETTABLE                         R33 R31 R32
      168 GETTABLEKS                       R32 R12 K39 ["name"]
      170 DUPCLOSURE                       R33 K41 [PROTO_5]
      171 CAPTURE                          VAL R2
      172 SETTABLE                         R33 R31 R32
      173 GETTABLEKS                       R32 R13 K39 ["name"]
      175 DUPCLOSURE                       R33 K42 [PROTO_6]
      176 CAPTURE                          VAL R2
      177 SETTABLE                         R33 R31 R32
      178 GETTABLEKS                       R32 R5 K39 ["name"]
      180 DUPCLOSURE                       R33 K43 [PROTO_7]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R27
      185 SETTABLE                         R33 R31 R32
      186 GETTABLEKS                       R32 R6 K39 ["name"]
      188 DUPCLOSURE                       R33 K44 [PROTO_8]
      189 CAPTURE                          VAL R2
      190 SETTABLE                         R33 R31 R32
      191 GETTABLEKS                       R32 R7 K39 ["name"]
      193 DUPCLOSURE                       R33 K45 [PROTO_9]
      194 CAPTURE                          VAL R2
      195 SETTABLE                         R33 R31 R32
      196 GETTABLEKS                       R32 R8 K39 ["name"]
      198 DUPCLOSURE                       R33 K46 [PROTO_10]
      199 CAPTURE                          VAL R2
      200 SETTABLE                         R33 R31 R32
      201 GETTABLEKS                       R32 R9 K39 ["name"]
      203 DUPCLOSURE                       R33 K47 [PROTO_11]
      204 CAPTURE                          VAL R2
      205 SETTABLE                         R33 R31 R32
      206 GETTABLEKS                       R32 R10 K39 ["name"]
      208 DUPCLOSURE                       R33 K48 [PROTO_12]
      209 CAPTURE                          VAL R2
      210 SETTABLE                         R33 R31 R32
      211 GETTABLEKS                       R32 R11 K39 ["name"]
      213 DUPCLOSURE                       R33 K49 [PROTO_13]
      214 CAPTURE                          VAL R2
      215 SETTABLE                         R33 R31 R32
      216 GETTABLEKS                       R32 R14 K39 ["name"]
      218 DUPCLOSURE                       R33 K50 [PROTO_14]
      219 CAPTURE                          VAL R2
      220 SETTABLE                         R33 R31 R32
      221 GETTABLEKS                       R32 R17 K39 ["name"]
      223 DUPCLOSURE                       R33 K51 [PROTO_15]
      224 CAPTURE                          VAL R2
      225 SETTABLE                         R33 R31 R32
      226 GETTABLEKS                       R32 R18 K39 ["name"]
      228 DUPCLOSURE                       R33 K52 [PROTO_16]
      229 CAPTURE                          VAL R2
      230 SETTABLE                         R33 R31 R32
      231 GETTABLEKS                       R32 R15 K39 ["name"]
      233 DUPCLOSURE                       R33 K53 [PROTO_17]
      234 CAPTURE                          VAL R2
      235 SETTABLE                         R33 R31 R32
      236 GETTABLEKS                       R32 R16 K39 ["name"]
      238 DUPCLOSURE                       R33 K54 [PROTO_18]
      239 CAPTURE                          VAL R2
      240 SETTABLE                         R33 R31 R32
      241 GETTABLEKS                       R32 R19 K39 ["name"]
      243 DUPCLOSURE                       R33 K55 [PROTO_19]
      244 CAPTURE                          VAL R2
      245 SETTABLE                         R33 R31 R32
      246 GETTABLEKS                       R32 R20 K39 ["name"]
      248 DUPCLOSURE                       R33 K56 [PROTO_20]
      249 CAPTURE                          VAL R2
      250 SETTABLE                         R33 R31 R32
      251 GETTABLEKS                       R32 R21 K39 ["name"]
      253 DUPCLOSURE                       R33 K57 [PROTO_21]
      254 CAPTURE                          VAL R2
      255 SETTABLE                         R33 R31 R32
      256 GETTABLEKS                       R32 R22 K39 ["name"]
      258 DUPCLOSURE                       R33 K58 [PROTO_22]
      259 CAPTURE                          VAL R2
      260 SETTABLE                         R33 R31 R32
      261 GETTABLEKS                       R32 R23 K39 ["name"]
      263 DUPCLOSURE                       R33 K59 [PROTO_23]
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R24
      266 SETTABLE                         R33 R31 R32
      267 CALL                             R29 2 -1
      268 RETURN                           R29 -1
