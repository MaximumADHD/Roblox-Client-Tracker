PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"creatorType"}]
        7 GETTABLEKS                       R5 R1 K2 ["creatorType"]
        9 SETTABLEKS                       R5 R4 K2 ["creatorType"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"creatorId"}]
        7 GETTABLEKS                       R5 R1 K2 ["creatorId"]
        9 SETTABLEKS                       R5 R4 K2 ["creatorId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
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
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K8 ["Dictionary"]
       17 GETTABLEKS                       R2 R3 K9 ["join"]
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
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K8 ["Dictionary"]
       17 GETTABLEKS                       R2 R3 K9 ["join"]
       19 MOVE                             R3 R0
       20 DUPTABLE                         R4 K11 [{"groupOwnerId"}]
       21 GETTABLEKS                       R5 R1 K10 ["groupOwnerId"]
       23 SETTABLEKS                       R5 R4 K10 ["groupOwnerId"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["createReducer"]
       25 DUPTABLE                         R4 K15 [{"creatorType", "creatorId", "creatorName", "creatorFriends", "groupOwnerId", "groupOwnerName"}]
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K9 ["creatorType"]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K10 ["creatorId"]
       32 LOADNIL                          R5
       33 SETTABLEKS                       R5 R4 K11 ["creatorName"]
       35 LOADNIL                          R5
       36 SETTABLEKS                       R5 R4 K12 ["creatorFriends"]
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K13 ["groupOwnerId"]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K14 ["groupOwnerName"]
       44 DUPTABLE                         R5 K22 [{"ResetStore", "SetCreatorType", "SetCreatorId", "SetCreatorName", "SetCreatorFriends", "SetGroupOwnerId"}]
       45 DUPCLOSURE                       R6 K23 [PROTO_0]
       46 SETTABLEKS                       R6 R5 K16 ["ResetStore"]
       48 DUPCLOSURE                       R6 K24 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R6 R5 K17 ["SetCreatorType"]
       52 DUPCLOSURE                       R6 K25 [PROTO_2]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R6 R5 K18 ["SetCreatorId"]
       56 DUPCLOSURE                       R6 K26 [PROTO_3]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R6 R5 K19 ["SetCreatorName"]
       60 DUPCLOSURE                       R6 K27 [PROTO_4]
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R6 R5 K20 ["SetCreatorFriends"]
       64 DUPCLOSURE                       R6 K28 [PROTO_5]
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R6 R5 K21 ["SetGroupOwnerId"]
       68 CALL                             R3 2 -1
       69 RETURN                           R3 -1
