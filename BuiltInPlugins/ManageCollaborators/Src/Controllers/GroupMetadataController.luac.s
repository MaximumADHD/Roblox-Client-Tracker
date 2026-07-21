PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["__metadataCache"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["__rolesetCache"]
       12 GETUPVAL                         R4 0
       13 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K4 [setmetatable]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["groups"]
        3 LOADK                            R7 K2 ["/v1/groups/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 NAMECALL                         R3 R2 K3 ["get"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["groups"]
        3 LOADK                            R7 K2 ["/v1/groups/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/roles"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["__metadataCache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+51]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["groupsV1GET"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K2 ["await"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K0 ["__metadataCache"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIF                           R3 ; [+40]
       15 GETTABLEKS                       R3 R2 K3 ["responseBody"]
       17 GETTABLEKS                       R4 R0 K0 ["__metadataCache"]
       19 DUPTABLE                         R5 K9 [{"name", "ownerId", "ownerName", "memberCount", "isSequestered"}]
       20 GETTABLEKS                       R6 R3 K4 ["name"]
       22 SETTABLEKS                       R6 R5 K4 ["name"]
       24 GETTABLEKS                       R7 R3 K10 ["owner"]
       26 JUMPIFNOT                        R7 ; [+5]
       27 GETTABLEKS                       R6 R3 K10 ["owner"]
       29 GETTABLEKS                       R6 R6 K11 ["userId"]
       31 JUMP                             ; [+1]
       32 LOADN                            R6 0
       33 SETTABLEKS                       R6 R5 K5 ["ownerId"]
       35 GETTABLEKS                       R7 R3 K10 ["owner"]
       37 JUMPIFNOT                        R7 ; [+5]
       38 GETTABLEKS                       R6 R3 K10 ["owner"]
       40 GETTABLEKS                       R6 R6 K12 ["username"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R6
       44 SETTABLEKS                       R6 R5 K6 ["ownerName"]
       46 GETTABLEKS                       R6 R3 K7 ["memberCount"]
       48 SETTABLEKS                       R6 R5 K7 ["memberCount"]
       50 GETTABLEKS                       R6 R3 K13 ["isLocked"]
       52 SETTABLEKS                       R6 R5 K8 ["isSequestered"]
       54 SETTABLE                         R5 R4 R1
       55 GETTABLEKS                       R3 R0 K0 ["__metadataCache"]
       57 GETTABLE                         R2 R3 R1
       58 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["__rolesetCache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+53]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["groupsRolesV1GET"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K2 ["await"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K0 ["__rolesetCache"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIF                           R3 ; [+42]
       15 GETTABLEKS                       R3 R2 K3 ["responseBody"]
       17 NEWTABLE                         R4 0 0
       19 GETIMPORT                        R5 K5 [ipairs]
       21 GETTABLEKS                       R6 R3 K6 ["roles"]
       23 CALL                             R5 1 3
       24 FORGPREP_INEXT                   R5
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K7 ["fflagManageCollaboratorsFilterDefaultMemberRoleset"]
       28 JUMPIFNOT                        R10 ; [+7]
       29 GETTABLEKS                       R10 R9 K8 ["id"]
       31 GETUPVAL                         R11 1
       32 GETTABLEKS                       R11 R11 K9 ["GroupDefaultMemberRolesetId"]
       34 JUMPIFEQ                         R10 R11 ; [+17]
       36 GETTABLEKS                       R10 R9 K8 ["id"]
       38 DUPTABLE                         R11 K13 [{"name", "rank", "memberCount"}]
       39 GETTABLEKS                       R12 R9 K10 ["name"]
       41 SETTABLEKS                       R12 R11 K10 ["name"]
       43 GETTABLEKS                       R12 R9 K11 ["rank"]
       45 SETTABLEKS                       R12 R11 K11 ["rank"]
       47 GETTABLEKS                       R12 R9 K12 ["memberCount"]
       49 SETTABLEKS                       R12 R11 K12 ["memberCount"]
       51 SETTABLE                         R11 R4 R10
       52 FORGLOOP                         R5 2 [inext] ; [-28]
       54 GETTABLEKS                       R5 R0 K0 ["__rolesetCache"]
       56 SETTABLE                         R4 R5 R1
       57 GETTABLEKS                       R3 R0 K0 ["__rolesetCache"]
       59 GETTABLE                         R2 R3 R1
       60 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getGroupMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["name"]
        6 RETURN                           R3 1

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getGroupMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["ownerName"]
        6 RETURN                           R3 1

PROTO_7:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getGroupMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["ownerId"]
        6 RETURN                           R3 1

PROTO_8:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getGroupMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["memberCount"]
        6 RETURN                           R3 1

PROTO_9:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getGroupMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["isSequestered"]
        6 RETURN                           R3 1

PROTO_10:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getRolesetMetadata"]
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["defineLuaFlags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["PermissionsConstants"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 SETTABLEKS                       R3 R3 K11 ["__index"]
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K13 ["new"]
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K15 ["groupsV1GET"]
       34 DUPCLOSURE                       R4 K16 [PROTO_2]
       35 SETTABLEKS                       R4 R3 K17 ["groupsRolesV1GET"]
       37 DUPCLOSURE                       R4 K18 [PROTO_3]
       38 SETTABLEKS                       R4 R3 K19 ["getGroupMetadata"]
       40 DUPCLOSURE                       R4 K20 [PROTO_4]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R4 R3 K21 ["getRolesetMetadata"]
       45 DUPCLOSURE                       R4 K22 [PROTO_5]
       46 SETTABLEKS                       R4 R3 K23 ["getName"]
       48 DUPCLOSURE                       R4 K24 [PROTO_6]
       49 SETTABLEKS                       R4 R3 K25 ["getOwnerName"]
       51 DUPCLOSURE                       R4 K26 [PROTO_7]
       52 SETTABLEKS                       R4 R3 K27 ["getOwnerId"]
       54 DUPCLOSURE                       R4 K28 [PROTO_8]
       55 SETTABLEKS                       R4 R3 K29 ["getNumMembers"]
       57 DUPCLOSURE                       R4 K30 [PROTO_9]
       58 SETTABLEKS                       R4 R3 K31 ["isSequestered"]
       60 DUPCLOSURE                       R4 K32 [PROTO_10]
       61 SETTABLEKS                       R4 R3 K33 ["getRolesets"]
       63 RETURN                           R3 1
