PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/join-team-test", ["operationId"] = "GameJoin.getV1JoinTeamTest"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["GET"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 LOADK                            R3 K9 ["PlaceId"]
       14 GETTABLEKS                       R4 R0 K10 ["placeId"]
       16 NAMECALL                         R1 R1 K11 ["addQueryParameter"]
       18 CALL                             R1 3 1
       19 LOADK                            R3 K12 ["PlaceVersion"]
       20 GETTABLEKS                       R4 R0 K13 ["placeVersion"]
       22 NAMECALL                         R1 R1 K11 ["addQueryParameter"]
       24 CALL                             R1 3 1
       25 LOADK                            R3 K14 ["GameCode"]
       26 GETTABLEKS                       R4 R0 K15 ["gameCode"]
       28 NAMECALL                         R1 R1 K11 ["addQueryParameter"]
       30 CALL                             R1 3 1
       31 LOADK                            R3 K14 ["GameCode"]
       32 GETTABLEKS                       R4 R0 K15 ["gameCode"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K16 ["constrain"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K17 ["String"]
       40 DUPTABLE                         R7 K20 [{["format"] = "uuid"}]
       41 CALL                             R5 2 -1
       42 NAMECALL                         R1 R1 K21 ["validate"]
       44 CALL                             R1 -1 1
       45 LOADK                            R3 K22 ["GameId"]
       46 GETTABLEKS                       R4 R0 K23 ["gameId"]
       48 NAMECALL                         R1 R1 K11 ["addQueryParameter"]
       50 CALL                             R1 3 1
       51 NAMECALL                         R1 R1 K24 ["returns"]
       53 CALL                             R1 1 -1
       54 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/join-game", ["operationId"] = "GameJoin.postV1JoinGame"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["gameJoinRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/join-game-instance", ["operationId"] = "GameJoin.postV1JoinGameInstance"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["joinGameInstanceRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/join-party-voice", ["operationId"] = "GameJoin.postV1JoinPartyVoice"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["joinPartyVoiceRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/join-play-together-game", ["operationId"] = "GameJoin.postV1JoinPlayTogetherGame"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["joinPlayTogetherGameRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/join-private-game", ["operationId"] = "GameJoin.postV1JoinPrivateGame"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["joinPrivateGameRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/join-reserved-game", ["operationId"] = "GameJoin.postV1JoinReservedGame"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["joinReservedGameRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/play-with-user", ["operationId"] = "GameJoin.postV1PlayWithUser"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["playWithUserRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/simulate-join-game", ["operationId"] = "GameJoin.postV1SimulateJoinGame"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 LOADK                            R3 K9 ["placeId"]
       14 GETTABLEKS                       R4 R0 K9 ["placeId"]
       16 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       18 CALL                             R1 3 1
       19 LOADK                            R3 K11 ["placeVersion"]
       20 GETTABLEKS                       R4 R0 K11 ["placeVersion"]
       22 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       24 CALL                             R1 3 1
       25 LOADK                            R3 K12 ["gameCapacity"]
       26 GETTABLEKS                       R4 R0 K12 ["gameCapacity"]
       28 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       30 CALL                             R1 3 1
       31 LOADK                            R3 K13 ["gameCode"]
       32 GETTABLEKS                       R4 R0 K13 ["gameCode"]
       34 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       36 CALL                             R1 3 1
       37 LOADK                            R3 K13 ["gameCode"]
       38 GETTABLEKS                       R4 R0 K13 ["gameCode"]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K14 ["constrain"]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K15 ["String"]
       46 DUPTABLE                         R7 K18 [{["format"] = "uuid"}]
       47 CALL                             R5 2 -1
       48 NAMECALL                         R1 R1 K19 ["validate"]
       50 CALL                             R1 -1 1
       51 LOADK                            R3 K20 ["universeId"]
       52 GETTABLEKS                       R4 R0 K20 ["universeId"]
       54 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       56 CALL                             R1 3 1
       57 LOADK                            R3 K21 ["gameId"]
       58 GETTABLEKS                       R4 R0 K21 ["gameId"]
       60 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       62 CALL                             R1 3 1
       63 LOADK                            R3 K21 ["gameId"]
       64 GETTABLEKS                       R4 R0 K21 ["gameId"]
       66 GETUPVAL                         R5 2
       67 GETTABLEKS                       R5 R5 K14 ["constrain"]
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R6 R6 K15 ["String"]
       72 DUPTABLE                         R7 K18 [{["format"] = "uuid"}]
       73 CALL                             R5 2 -1
       74 NAMECALL                         R1 R1 K19 ["validate"]
       76 CALL                             R1 -1 1
       77 LOADK                            R3 K22 ["preferredPlayerCapacity"]
       78 GETTABLEKS                       R4 R0 K22 ["preferredPlayerCapacity"]
       80 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       82 CALL                             R1 3 1
       83 LOADK                            R3 K23 ["matchmakingContextId"]
       84 GETTABLEKS                       R4 R0 K23 ["matchmakingContextId"]
       86 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       88 CALL                             R1 3 1
       89 LOADK                            R3 K24 ["isCloudEdit"]
       90 GETTABLEKS                       R4 R0 K24 ["isCloudEdit"]
       92 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       94 CALL                             R1 3 1
       95 LOADK                            R3 K25 ["creatorId"]
       96 GETTABLEKS                       R4 R0 K25 ["creatorId"]
       98 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
      100 CALL                             R1 3 1
      101 LOADK                            R3 K26 ["creatorType"]
      102 GETTABLEKS                       R4 R0 K26 ["creatorType"]
      104 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
      106 CALL                             R1 3 1
      107 LOADK                            R3 K27 ["vipOwnerId"]
      108 GETTABLEKS                       R4 R0 K27 ["vipOwnerId"]
      110 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
      112 CALL                             R1 3 1
      113 LOADK                            R3 K28 ["isTeleport"]
      114 GETTABLEKS                       R4 R0 K28 ["isTeleport"]
      116 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
      118 CALL                             R1 3 1
      119 LOADK                            R3 K29 ["queueAllowed"]
      120 GETTABLEKS                       R4 R0 K29 ["queueAllowed"]
      122 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
      124 CALL                             R1 3 1
      125 LOADK                            R3 K30 ["privateServerType"]
      126 GETTABLEKS                       R5 R0 K30 ["privateServerType"]
      128 JUMPIFEQKNIL                     R5 ; [+8]
      130 GETUPVAL                         R4 3
      131 GETTABLEKS                       R4 R4 K31 ["toRequest"]
      133 GETTABLEKS                       R5 R0 K30 ["privateServerType"]
      135 CALL                             R4 1 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R4
      138 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
      140 CALL                             R1 3 1
      141 GETUPVAL                         R3 4
      142 GETTABLEKS                       R4 R0 K32 ["postData"]
      144 NAMECALL                         R1 R1 K33 ["setBody"]
      146 CALL                             R1 3 1
      147 GETUPVAL                         R3 2
      148 GETTABLEKS                       R3 R3 K15 ["String"]
      150 NAMECALL                         R1 R1 K34 ["returns"]
      152 CALL                             R1 2 -1
      153 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/team-create", ["operationId"] = "GameJoin.postV1TeamCreate"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["teamCreateRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/team-create-preemptive", ["operationId"] = "GameJoin.postV1TeamCreatePreemptive"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K9 ["teamCreateRequest"]
       16 NAMECALL                         R1 R1 K10 ["setBody"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R1 R1 K11 ["returns"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R1 16 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R2 R1 K0 ["getV1JoinTeamTest"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 SETTABLEKS                       R2 R1 K1 ["postV1JoinGame"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R2 R1 K2 ["postV1JoinGameInstance"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U3
       27 SETTABLEKS                       R2 R1 K3 ["postV1JoinPartyVoice"]
       29 NEWCLOSURE                       R2 P4
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U3
       34 SETTABLEKS                       R2 R1 K4 ["postV1JoinPlayTogetherGame"]
       36 NEWCLOSURE                       R2 P5
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U3
       41 SETTABLEKS                       R2 R1 K5 ["postV1JoinPrivateGame"]
       43 NEWCLOSURE                       R2 P6
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          UPVAL U3
       48 SETTABLEKS                       R2 R1 K6 ["postV1JoinReservedGame"]
       50 NEWCLOSURE                       R2 P7
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U3
       55 SETTABLEKS                       R2 R1 K7 ["postV1PlayWithUser"]
       57 NEWCLOSURE                       R2 P8
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          UPVAL U11
       63 SETTABLEKS                       R2 R1 K8 ["postV1SimulateJoinGame"]
       65 NEWCLOSURE                       R2 P9
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U12
       69 CAPTURE                          UPVAL U13
       70 SETTABLEKS                       R2 R1 K9 ["postV1TeamCreate"]
       72 NEWCLOSURE                       R2 P10
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U12
       76 CAPTURE                          UPVAL U13
       77 SETTABLEKS                       R2 R1 K10 ["postV1TeamCreatePreemptive"]
       79 GETIMPORT                        R2 K13 [table.freeze]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 -1
       83 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["../Models/GameJoinRequest"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["../Models/GameJoinResponse"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K1 [require]
       17 LOADK                            R5 K6 ["../Models/JoinGameInstanceRequest"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K1 [require]
       21 LOADK                            R6 K7 ["../Models/JoinPartyVoiceRequest"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K1 [require]
       25 LOADK                            R7 K8 ["../Models/JoinPlayTogetherGameRequest"]
       26 CALL                             R6 1 1
       27 GETIMPORT                        R7 K1 [require]
       29 LOADK                            R8 K9 ["../Models/JoinPrivateGameRequest"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K1 [require]
       33 LOADK                            R9 K10 ["../Models/JoinReservedGameRequest"]
       34 CALL                             R8 1 1
       35 GETIMPORT                        R9 K1 [require]
       37 LOADK                            R10 K11 ["../Models/PlayWithUserRequest"]
       38 CALL                             R9 1 1
       39 GETIMPORT                        R10 K1 [require]
       41 LOADK                            R11 K12 ["../Models/PostV1SimulateJoinGamePrivateServerType"]
       42 CALL                             R10 1 1
       43 GETIMPORT                        R11 K1 [require]
       45 LOADK                            R12 K13 ["../Models/ReservePostDataModel"]
       46 CALL                             R11 1 1
       47 GETIMPORT                        R12 K1 [require]
       49 LOADK                            R13 K14 ["../Models/TeamCreateRequest"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K1 [require]
       53 LOADK                            R14 K15 ["../Models/TeamCreateResponse"]
       54 CALL                             R13 1 1
       55 NEWTABLE                         R14 1 0
       57 DUPCLOSURE                       R15 K16 [PROTO_11]
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R13
       72 SETTABLEKS                       R15 R14 K17 ["new"]
       74 GETIMPORT                        R15 K20 [table.freeze]
       76 MOVE                             R16 R14
       77 CALL                             R15 1 -1
       78 RETURN                           R15 -1
