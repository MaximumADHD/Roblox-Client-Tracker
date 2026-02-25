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
        3 JUMPIF                           R2 ; [+41]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["groupsV1GET"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K2 ["await"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K0 ["__metadataCache"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIF                           R3 ; [+30]
       15 GETTABLEKS                       R3 R2 K3 ["responseBody"]
       17 GETTABLEKS                       R4 R0 K0 ["__metadataCache"]
       19 DUPTABLE                         R5 K9 [{"name", "ownerId", "ownerName", "memberCount", "isSequestered"}]
       20 GETTABLEKS                       R6 R3 K4 ["name"]
       22 SETTABLEKS                       R6 R5 K4 ["name"]
       24 GETTABLEKS                       R7 R3 K10 ["owner"]
       26 GETTABLEKS                       R6 R7 K11 ["userId"]
       28 SETTABLEKS                       R6 R5 K5 ["ownerId"]
       30 GETTABLEKS                       R7 R3 K10 ["owner"]
       32 GETTABLEKS                       R6 R7 K12 ["username"]
       34 SETTABLEKS                       R6 R5 K6 ["ownerName"]
       36 GETTABLEKS                       R6 R3 K7 ["memberCount"]
       38 SETTABLEKS                       R6 R5 K7 ["memberCount"]
       40 GETTABLEKS                       R6 R3 K13 ["isLocked"]
       42 SETTABLEKS                       R6 R5 K8 ["isSequestered"]
       44 SETTABLE                         R5 R4 R1
       45 GETTABLEKS                       R3 R0 K0 ["__metadataCache"]
       47 GETTABLE                         R2 R3 R1
       48 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["__rolesetCache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+42]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["groupsRolesV1GET"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K2 ["await"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K0 ["__rolesetCache"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIF                           R3 ; [+31]
       15 GETTABLEKS                       R3 R2 K3 ["responseBody"]
       17 NEWTABLE                         R4 0 0
       19 GETIMPORT                        R5 K5 [ipairs]
       21 GETTABLEKS                       R6 R3 K6 ["roles"]
       23 CALL                             R5 1 3
       24 FORGPREP_INEXT                   R5
       25 GETTABLEKS                       R10 R9 K7 ["id"]
       27 DUPTABLE                         R11 K11 [{"name", "rank", "memberCount"}]
       28 GETTABLEKS                       R12 R9 K8 ["name"]
       30 SETTABLEKS                       R12 R11 K8 ["name"]
       32 GETTABLEKS                       R12 R9 K9 ["rank"]
       34 SETTABLEKS                       R12 R11 K9 ["rank"]
       36 GETTABLEKS                       R12 R9 K10 ["memberCount"]
       38 SETTABLEKS                       R12 R11 K10 ["memberCount"]
       40 SETTABLE                         R11 R4 R10
       41 FORGLOOP                         R5 2 [inext] ; [-17]
       43 GETTABLEKS                       R5 R0 K0 ["__rolesetCache"]
       45 SETTABLE                         R4 R5 R1
       46 GETTABLEKS                       R3 R0 K0 ["__rolesetCache"]
       48 GETTABLE                         R2 R3 R1
       49 RETURN                           R2 1

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
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["groupsV1GET"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["groupsRolesV1GET"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["getGroupMetadata"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["getRolesetMetadata"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["getName"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["getOwnerName"]
       27 DUPCLOSURE                       R1 K15 [PROTO_7]
       28 SETTABLEKS                       R1 R0 K16 ["getOwnerId"]
       30 DUPCLOSURE                       R1 K17 [PROTO_8]
       31 SETTABLEKS                       R1 R0 K18 ["getNumMembers"]
       33 DUPCLOSURE                       R1 K19 [PROTO_9]
       34 SETTABLEKS                       R1 R0 K20 ["isSequestered"]
       36 DUPCLOSURE                       R1 K21 [PROTO_10]
       37 SETTABLEKS                       R1 R0 K22 ["getRolesets"]
       39 RETURN                           R0 1
