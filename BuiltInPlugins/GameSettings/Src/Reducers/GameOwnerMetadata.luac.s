PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"creatorType"}]
        7 GETTABLEKS                       R5 R1 K2 ["creatorType"]
        9 SETTABLEKS                       R5 R4 K2 ["creatorType"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"creatorId"}]
        7 GETTABLEKS                       R5 R1 K2 ["creatorId"]
        9 SETTABLEKS                       R5 R4 K2 ["creatorId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"creatorName"}]
        7 GETTABLEKS                       R5 R1 K2 ["creatorName"]
        9 SETTABLEKS                       R5 R4 K2 ["creatorName"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["creatorType"]
        2 GETIMPORT                        R5 K4 [Enum.CreatorType.User]
        4 JUMPIFEQ                         R4 R5 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       10 LOADK                            R4 K5 ["Setting friends in non-user owned game"]
       11 GETIMPORT                        R2 K7 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K8 ["Dictionary"]
       17 GETTABLEKS                       R2 R2 K9 ["join"]
       19 MOVE                             R3 R0
       20 DUPTABLE                         R4 K11 [{"creatorFriends"}]
       21 GETTABLEKS                       R5 R1 K10 ["creatorFriends"]
       23 SETTABLEKS                       R5 R4 K10 ["creatorFriends"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["creatorType"]
        2 GETIMPORT                        R5 K4 [Enum.CreatorType.Group]
        4 JUMPIFEQ                         R4 R5 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       10 LOADK                            R4 K5 ["Setting group owner id in non-group owned game"]
       11 GETIMPORT                        R2 K7 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K8 ["Dictionary"]
       17 GETTABLEKS                       R2 R2 K9 ["join"]
       19 MOVE                             R3 R0
       20 DUPTABLE                         R4 K11 [{"groupOwnerId"}]
       21 GETTABLEKS                       R5 R1 K10 ["groupOwnerId"]
       23 SETTABLEKS                       R5 R4 K10 ["groupOwnerId"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["creatorType"]
        2 GETIMPORT                        R5 K4 [Enum.CreatorType.Group]
        4 JUMPIFEQ                         R4 R5 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       10 LOADK                            R4 K5 ["Setting group owner name in non-group owned game"]
       11 GETIMPORT                        R2 K7 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K8 ["Dictionary"]
       17 GETTABLEKS                       R2 R2 K9 ["join"]
       19 MOVE                             R3 R0
       20 DUPTABLE                         R4 K11 [{"groupOwnerName"}]
       21 GETTABLEKS                       R5 R1 K10 ["groupOwnerName"]
       23 SETTABLEKS                       R5 R4 K10 ["groupOwnerName"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["createReducer"]
       25 DUPTABLE                         R4 K16 [{["creatorType"] = , ["creatorId"] = , ["creatorName"] = , ["creatorFriends"] = , ["groupOwnerId"] = , ["groupOwnerName"] = }]
       26 DUPTABLE                         R5 K24 [{"ResetStore", "SetCreatorType", "SetCreatorId", "SetCreatorName", "SetCreatorFriends", "SetGroupOwnerId", "SetGroupOwnerName"}]
       27 DUPCLOSURE                       R6 K25 [PROTO_0]
       28 SETTABLEKS                       R6 R5 K17 ["ResetStore"]
       30 DUPCLOSURE                       R6 K26 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K18 ["SetCreatorType"]
       34 DUPCLOSURE                       R6 K27 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R6 R5 K19 ["SetCreatorId"]
       38 DUPCLOSURE                       R6 K28 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R6 R5 K20 ["SetCreatorName"]
       42 DUPCLOSURE                       R6 K29 [PROTO_4]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R6 R5 K21 ["SetCreatorFriends"]
       46 DUPCLOSURE                       R6 K30 [PROTO_5]
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R6 R5 K22 ["SetGroupOwnerId"]
       50 DUPCLOSURE                       R6 K31 [PROTO_6]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R6 R5 K23 ["SetGroupOwnerName"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1
