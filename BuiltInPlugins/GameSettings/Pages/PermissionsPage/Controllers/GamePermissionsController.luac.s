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
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["isFriendsOnly"]
       11 RETURN                           R3 1

PROTO_10:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"isFriendsOnly"}]
        2 SETTABLEKS                       R2 R6 K0 ["isFriendsOnly"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["universesV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["isActive"]
       11 RETURN                           R3 1

PROTO_12:
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

PROTO_13:
        0 MOVE                             R7 R1
        1 NAMECALL                         R5 R0 K0 ["permissionsV2GET"]
        3 CALL                             R5 2 1
        4 NAMECALL                         R5 R5 K1 ["await"]
        6 CALL                             R5 1 1
        7 GETTABLEKS                       R7 R5 K2 ["responseBody"]
        9 GETTABLEKS                       R6 R7 K3 ["data"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K4 ["DeserializePermissions"]
       14 MOVE                             R8 R6
       15 MOVE                             R9 R2
       16 MOVE                             R10 R3
       17 MOVE                             R11 R4
       18 CALL                             R7 4 -1
       19 RETURN                           R7 -1

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["SerializePermissions"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R3
        5 CALL                             R4 2 2
        6 LENGTH                           R7 R4
        7 LENGTH                           R8 R5
        8 ADD                              R6 R7 R8
        9 LOADN                            R7 60
       10 JUMPIFNOTLT                      R7 R6 ; [+9]
       12 GETIMPORT                        R7 K2 [error]
       14 LOADK                            R9 K3 ["Too many changes ("]
       15 MOVE                             R10 R6
       16 LOADK                            R12 K5 [") to permissions. Maximum at once is "]
       17 ADDK                             R11 R12 K4 [60]
       18 CONCAT                           R8 R9 R11
       19 CALL                             R7 1 0
       20 LENGTH                           R7 R4
       21 LOADN                            R8 0
       22 JUMPIFNOTLT                      R8 R7 ; [+9]
       24 MOVE                             R9 R1
       25 MOVE                             R10 R4
       26 NAMECALL                         R7 R0 K6 ["permissionsBatchedV2POST"]
       28 CALL                             R7 3 1
       29 NAMECALL                         R7 R7 K7 ["await"]
       31 CALL                             R7 1 0
       32 LENGTH                           R7 R5
       33 LOADN                            R8 0
       34 JUMPIFNOTLT                      R8 R7 ; [+9]
       36 MOVE                             R9 R1
       37 MOVE                             R10 R5
       38 NAMECALL                         R7 R0 K8 ["permissionsBatchedV2DELETE"]
       40 CALL                             R7 3 1
       41 NAMECALL                         R7 R7 K7 ["await"]
       43 CALL                             R7 1 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R5 K1 [script]
        9 GETTABLEKS                       R4 R5 K2 ["Parent"]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K2 ["Parent"]
       15 GETTABLEKS                       R1 R2 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R4 R0 K5 ["Util"]
       21 GETTABLEKS                       R3 R4 K6 ["DeserializeFromRequest"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R0 K5 ["Util"]
       28 GETTABLEKS                       R4 R5 K7 ["SerializeForRequest"]
       30 CALL                             R3 1 1
       31 NEWTABLE                         R4 16 0
       33 SETTABLEKS                       R4 R4 K8 ["__index"]
       35 DUPCLOSURE                       R5 K9 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R5 R4 K10 ["new"]
       39 DUPCLOSURE                       R5 K11 [PROTO_1]
       40 SETTABLEKS                       R5 R4 K12 ["universesV1GET"]
       42 DUPCLOSURE                       R5 K13 [PROTO_2]
       43 SETTABLEKS                       R5 R4 K14 ["universesActivateV1POST"]
       45 DUPCLOSURE                       R5 K15 [PROTO_3]
       46 SETTABLEKS                       R5 R4 K16 ["universesDeactivateV1POST"]
       48 DUPCLOSURE                       R5 K17 [PROTO_4]
       49 SETTABLEKS                       R5 R4 K18 ["configurationV2GET"]
       51 DUPCLOSURE                       R5 K19 [PROTO_5]
       52 SETTABLEKS                       R5 R4 K20 ["configurationV2PATCH"]
       54 DUPCLOSURE                       R5 K21 [PROTO_6]
       55 SETTABLEKS                       R5 R4 K22 ["permissionsV2GET"]
       57 DUPCLOSURE                       R5 K23 [PROTO_7]
       58 SETTABLEKS                       R5 R4 K24 ["permissionsBatchedV2POST"]
       60 DUPCLOSURE                       R5 K25 [PROTO_8]
       61 SETTABLEKS                       R5 R4 K26 ["permissionsBatchedV2DELETE"]
       63 DUPCLOSURE                       R5 K27 [PROTO_9]
       64 SETTABLEKS                       R5 R4 K28 ["isFriendsOnly"]
       66 DUPCLOSURE                       R5 K29 [PROTO_10]
       67 SETTABLEKS                       R5 R4 K30 ["setFriendsOnly"]
       69 DUPCLOSURE                       R5 K31 [PROTO_11]
       70 SETTABLEKS                       R5 R4 K32 ["isActive"]
       72 DUPCLOSURE                       R5 K33 [PROTO_12]
       73 SETTABLEKS                       R5 R4 K34 ["setActive"]
       75 DUPCLOSURE                       R5 K35 [PROTO_13]
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R5 R4 K36 ["getPermissions"]
       79 DUPCLOSURE                       R5 K37 [PROTO_14]
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R5 R4 K38 ["setPermissions"]
       83 RETURN                           R4 1
