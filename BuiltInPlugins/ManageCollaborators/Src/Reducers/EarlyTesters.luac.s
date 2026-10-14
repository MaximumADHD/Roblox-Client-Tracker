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
        0 DUPTABLE                         R0 K26 [{[1] = , ["ExistingMemberIds"], ["Mode"], ["PendingRoleId"] = , ["PendingRoleName"] = , ["PendingRoleIsPrivate"] = , ["PendingRoleColor"] = , ["PendingMembers"], ["AllRoles"], ["SaveError"] = , ["LoadError"] = False, ["Screen"], ["GroupMembers"], ["GroupMembersCursor"] = , ["GroupMembersExhausted"] = False, ["GroupMembersLoading"] = False, ["SearchQuery"] = "", ["SearchResults"], ["SearchResultsCursor"] = , ["SearchResultsExhausted"] = False, ["SearchResultsLoading"] = False, ["SearchSelection"], ["PickedRoleId"] = }]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["ExistingMemberIds"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K27 ["Unset"]
        8 SETTABLEKS                       R1 R0 K3 ["Mode"]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K8 ["PendingMembers"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K9 ["AllRoles"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K28 ["Main"]
       21 SETTABLEKS                       R1 R0 K13 ["Screen"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K14 ["GroupMembers"]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K20 ["SearchResults"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K24 ["SearchSelection"]
       35 RETURN                           R0 1

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
        8 DUPTABLE                         R5 K14 [{["ExistingRole"], ["ExistingMemberIds"], ["Mode"], ["PendingRoleId"], ["PendingRoleName"], ["PendingRoleIsPrivate"], ["PendingRoleColor"], ["PendingMembers"], ["SaveError"], ["LoadError"] = False}]
        9 SETTABLEKS                       R2 R5 K3 ["ExistingRole"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R7 R1 K15 ["members"]
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K4 ["ExistingMemberIds"]
       17 JUMPIFEQKNIL                     R2 ; [+5]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K16 ["EditingAssigned"]
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K17 ["Unset"]
       26 SETTABLEKS                       R6 R5 K5 ["Mode"]
       28 JUMPIFEQKNIL                     R2 ; [+4]
       30 GETTABLEKS                       R6 R2 K18 ["id"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K6 ["PendingRoleId"]
       36 JUMPIFEQKNIL                     R2 ; [+4]
       38 GETTABLEKS                       R6 R2 K19 ["name"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K7 ["PendingRoleName"]
       44 JUMPIFEQKNIL                     R2 ; [+4]
       46 GETTABLEKS                       R6 R2 K20 ["isPrivate"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 SETTABLEKS                       R6 R5 K8 ["PendingRoleIsPrivate"]
       52 JUMPIFEQKNIL                     R2 ; [+4]
       54 GETTABLEKS                       R6 R2 K21 ["color"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R5 K9 ["PendingRoleColor"]
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R7 R1 K15 ["members"]
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K10 ["PendingMembers"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K22 ["None"]
       69 SETTABLEKS                       R6 R5 K11 ["SaveError"]
       71 CALL                             R3 2 -1
       72 RETURN                           R3 -1

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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"AllRoles"}]
        7 GETTABLEKS                       R5 R1 K4 ["roles"]
        9 SETTABLEKS                       R5 R4 K2 ["AllRoles"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SaveError"}]
        7 GETTABLEKS                       R5 R1 K4 ["errorKey"]
        9 SETTABLEKS                       R5 R4 K2 ["SaveError"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"PickedRoleId"}]
        7 GETTABLEKS                       R5 R1 K4 ["roleId"]
        9 SETTABLEKS                       R5 R4 K2 ["PickedRoleId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"GroupMembersLoading"}]
        7 GETTABLEKS                       R5 R1 K4 ["isLoading"]
        9 SETTABLEKS                       R5 R4 K2 ["GroupMembersLoading"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SearchQuery"}]
        7 GETTABLEKS                       R5 R1 K4 ["query"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchQuery"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SearchResultsLoading"}]
        7 GETTABLEKS                       R5 R1 K4 ["isLoading"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchResultsLoading"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       74 GETTABLEKS                       R14 R3 K19 ["SetEarlyTesterScreen"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K4 [require]
       79 GETTABLEKS                       R15 R3 K20 ["AddGroupMembersPage"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K4 [require]
       84 GETTABLEKS                       R16 R3 K21 ["SetGroupMembersLoading"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K4 [require]
       89 GETTABLEKS                       R17 R3 K22 ["ToggleEarlyTesterSelection"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K4 [require]
       94 GETTABLEKS                       R18 R3 K23 ["SetEarlyTesterPickedRoleId"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K4 [require]
       99 GETTABLEKS                       R19 R3 K24 ["SetGroupMemberSearchQuery"]
      101 CALL                             R18 1 1
      102 GETIMPORT                        R19 K4 [require]
      104 GETTABLEKS                       R20 R3 K25 ["SetGroupMemberSearchResults"]
      106 CALL                             R19 1 1
      107 GETIMPORT                        R20 K4 [require]
      109 GETTABLEKS                       R21 R3 K26 ["AddGroupMemberSearchResultsPage"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K4 [require]
      114 GETTABLEKS                       R22 R3 K27 ["SetGroupMemberSearchResultsLoading"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K4 [require]
      119 GETTABLEKS                       R23 R0 K8 ["Src"]
      121 GETTABLEKS                       R23 R23 K28 ["Util"]
      123 GETTABLEKS                       R23 R23 K29 ["EarlyTesterMode"]
      125 CALL                             R22 1 1
      126 GETIMPORT                        R23 K4 [require]
      128 GETTABLEKS                       R24 R0 K8 ["Src"]
      130 GETTABLEKS                       R24 R24 K28 ["Util"]
      132 GETTABLEKS                       R24 R24 K30 ["EarlyTesterScreen"]
      134 CALL                             R23 1 1
      135 DUPCLOSURE                       R24 K31 [PROTO_0]
      136 DUPCLOSURE                       R25 K32 [PROTO_1]
      137 DUPCLOSURE                       R26 K33 [PROTO_2]
      138 CAPTURE                          VAL R22
      139 CAPTURE                          VAL R23
      140 GETTABLEKS                       R27 R1 K34 ["createReducer"]
      142 MOVE                             R28 R26
      143 CALL                             R28 0 1
      144 NEWTABLE                         R29 32 0
      146 DUPCLOSURE                       R30 K35 [PROTO_3]
      147 CAPTURE                          VAL R26
      148 SETTABLEKS                       R30 R29 K36 ["ResetStore"]
      150 GETTABLEKS                       R30 R4 K37 ["name"]
      152 DUPCLOSURE                       R31 K38 [PROTO_4]
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R25
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R24
      157 SETTABLE                         R31 R29 R30
      158 GETTABLEKS                       R30 R12 K37 ["name"]
      160 DUPCLOSURE                       R31 K39 [PROTO_5]
      161 CAPTURE                          VAL R2
      162 SETTABLE                         R31 R29 R30
      163 GETTABLEKS                       R30 R5 K37 ["name"]
      165 DUPCLOSURE                       R31 K40 [PROTO_6]
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R24
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R25
      170 SETTABLE                         R31 R29 R30
      171 GETTABLEKS                       R30 R6 K37 ["name"]
      173 DUPCLOSURE                       R31 K41 [PROTO_7]
      174 CAPTURE                          VAL R2
      175 SETTABLE                         R31 R29 R30
      176 GETTABLEKS                       R30 R7 K37 ["name"]
      178 DUPCLOSURE                       R31 K42 [PROTO_8]
      179 CAPTURE                          VAL R2
      180 SETTABLE                         R31 R29 R30
      181 GETTABLEKS                       R30 R8 K37 ["name"]
      183 DUPCLOSURE                       R31 K43 [PROTO_9]
      184 CAPTURE                          VAL R2
      185 SETTABLE                         R31 R29 R30
      186 GETTABLEKS                       R30 R9 K37 ["name"]
      188 DUPCLOSURE                       R31 K44 [PROTO_10]
      189 CAPTURE                          VAL R2
      190 SETTABLE                         R31 R29 R30
      191 GETTABLEKS                       R30 R10 K37 ["name"]
      193 DUPCLOSURE                       R31 K45 [PROTO_11]
      194 CAPTURE                          VAL R2
      195 SETTABLE                         R31 R29 R30
      196 GETTABLEKS                       R30 R11 K37 ["name"]
      198 DUPCLOSURE                       R31 K46 [PROTO_12]
      199 CAPTURE                          VAL R2
      200 SETTABLE                         R31 R29 R30
      201 GETTABLEKS                       R30 R13 K37 ["name"]
      203 DUPCLOSURE                       R31 K47 [PROTO_13]
      204 CAPTURE                          VAL R2
      205 SETTABLE                         R31 R29 R30
      206 GETTABLEKS                       R30 R16 K37 ["name"]
      208 DUPCLOSURE                       R31 K48 [PROTO_14]
      209 CAPTURE                          VAL R2
      210 SETTABLE                         R31 R29 R30
      211 GETTABLEKS                       R30 R17 K37 ["name"]
      213 DUPCLOSURE                       R31 K49 [PROTO_15]
      214 CAPTURE                          VAL R2
      215 SETTABLE                         R31 R29 R30
      216 GETTABLEKS                       R30 R14 K37 ["name"]
      218 DUPCLOSURE                       R31 K50 [PROTO_16]
      219 CAPTURE                          VAL R2
      220 SETTABLE                         R31 R29 R30
      221 GETTABLEKS                       R30 R15 K37 ["name"]
      223 DUPCLOSURE                       R31 K51 [PROTO_17]
      224 CAPTURE                          VAL R2
      225 SETTABLE                         R31 R29 R30
      226 GETTABLEKS                       R30 R18 K37 ["name"]
      228 DUPCLOSURE                       R31 K52 [PROTO_18]
      229 CAPTURE                          VAL R2
      230 SETTABLE                         R31 R29 R30
      231 GETTABLEKS                       R30 R19 K37 ["name"]
      233 DUPCLOSURE                       R31 K53 [PROTO_19]
      234 CAPTURE                          VAL R2
      235 SETTABLE                         R31 R29 R30
      236 GETTABLEKS                       R30 R20 K37 ["name"]
      238 DUPCLOSURE                       R31 K54 [PROTO_20]
      239 CAPTURE                          VAL R2
      240 SETTABLE                         R31 R29 R30
      241 GETTABLEKS                       R30 R21 K37 ["name"]
      243 DUPCLOSURE                       R31 K55 [PROTO_21]
      244 CAPTURE                          VAL R2
      245 SETTABLE                         R31 R29 R30
      246 CALL                             R27 2 -1
      247 RETURN                           R27 -1
