PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-team-test"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["PlaceId"]
       16 GETTABLEKS                       R4 R0 K7 ["placeId"]
       18 NAMECALL                         R1 R1 K8 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["PlaceVersion"]
       22 GETTABLEKS                       R4 R0 K10 ["placeVersion"]
       24 NAMECALL                         R1 R1 K8 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["GameCode"]
       28 GETTABLEKS                       R4 R0 K12 ["gameCode"]
       30 NAMECALL                         R1 R1 K8 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K13 ["GameId"]
       34 GETTABLEKS                       R4 R0 K14 ["gameId"]
       36 NAMECALL                         R1 R1 K8 ["addQueryParameter"]
       38 CALL                             R1 3 1
       39 NAMECALL                         R1 R1 K15 ["sendAsync"]
       41 CALL                             R1 1 -1
       42 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["gameJoinRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-game-instance"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["joinGameInstanceRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-party-voice"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["joinPartyVoiceRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-play-together-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["joinPlayTogetherGameRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-private-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["joinPrivateGameRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-reserved-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["joinReservedGameRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/play-with-user"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["playWithUserRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/simulate-join-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["placeId"]
       16 GETTABLEKS                       R4 R0 K6 ["placeId"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K8 ["placeVersion"]
       22 GETTABLEKS                       R4 R0 K8 ["placeVersion"]
       24 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K9 ["gameCapacity"]
       28 GETTABLEKS                       R4 R0 K9 ["gameCapacity"]
       30 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K10 ["gameCode"]
       34 GETTABLEKS                       R4 R0 K10 ["gameCode"]
       36 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       38 CALL                             R1 3 1
       39 LOADK                            R3 K11 ["universeId"]
       40 GETTABLEKS                       R4 R0 K11 ["universeId"]
       42 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       44 CALL                             R1 3 1
       45 LOADK                            R3 K12 ["gameId"]
       46 GETTABLEKS                       R4 R0 K12 ["gameId"]
       48 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       50 CALL                             R1 3 1
       51 LOADK                            R3 K13 ["preferredPlayerCapacity"]
       52 GETTABLEKS                       R4 R0 K13 ["preferredPlayerCapacity"]
       54 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       56 CALL                             R1 3 1
       57 LOADK                            R3 K14 ["matchmakingContextId"]
       58 GETTABLEKS                       R4 R0 K14 ["matchmakingContextId"]
       60 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       62 CALL                             R1 3 1
       63 LOADK                            R3 K15 ["isCloudEdit"]
       64 GETTABLEKS                       R4 R0 K15 ["isCloudEdit"]
       66 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       68 CALL                             R1 3 1
       69 LOADK                            R3 K16 ["creatorId"]
       70 GETTABLEKS                       R4 R0 K16 ["creatorId"]
       72 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       74 CALL                             R1 3 1
       75 LOADK                            R3 K17 ["creatorType"]
       76 GETTABLEKS                       R4 R0 K17 ["creatorType"]
       78 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       80 CALL                             R1 3 1
       81 LOADK                            R3 K18 ["vipOwnerId"]
       82 GETTABLEKS                       R4 R0 K18 ["vipOwnerId"]
       84 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       86 CALL                             R1 3 1
       87 LOADK                            R3 K19 ["isTeleport"]
       88 GETTABLEKS                       R4 R0 K19 ["isTeleport"]
       90 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       92 CALL                             R1 3 1
       93 LOADK                            R3 K20 ["queueAllowed"]
       94 GETTABLEKS                       R4 R0 K20 ["queueAllowed"]
       96 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       98 CALL                             R1 3 1
       99 LOADK                            R3 K21 ["privateServerType"]
      100 GETTABLEKS                       R4 R0 K21 ["privateServerType"]
      102 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
      104 CALL                             R1 3 1
      105 GETUPVAL                         R3 2
      106 GETTABLEKS                       R4 R0 K22 ["postData"]
      108 NAMECALL                         R1 R1 K23 ["setBody"]
      110 CALL                             R1 3 1
      111 NAMECALL                         R1 R1 K24 ["sendAsync"]
      113 CALL                             R1 1 -1
      114 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/team-create"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["teamCreateRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/team-create-preemptive"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["teamCreateRequest"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PathMetadata"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Models"]
       23 GETTABLEKS                       R5 R5 K10 ["GameJoinRequest"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GameJoinResponse"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["JoinGameInstanceRequest"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["JoinPartyVoiceRequest"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Models"]
       51 GETTABLEKS                       R9 R9 K14 ["JoinPlayTogetherGameRequest"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Models"]
       58 GETTABLEKS                       R10 R10 K15 ["JoinPrivateGameRequest"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Models"]
       65 GETTABLEKS                       R11 R11 K16 ["JoinReservedGameRequest"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Models"]
       72 GETTABLEKS                       R12 R12 K17 ["PlayWithUserRequest"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Models"]
       79 GETTABLEKS                       R13 R13 K18 ["PrivateServerType"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Models"]
       86 GETTABLEKS                       R14 R14 K19 ["ReservePostDataModel"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K9 ["Models"]
       93 GETTABLEKS                       R15 R15 K20 ["TeamCreateRequest"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K9 ["Models"]
      100 GETTABLEKS                       R16 R16 K21 ["TeamCreateResponse"]
      102 CALL                             R15 1 1
      103 NEWTABLE                         R16 16 0
      105 DUPCLOSURE                       R17 K22 [PROTO_0]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R17 R16 K23 ["getV1JoinTeamTestAsync"]
      110 DUPCLOSURE                       R17 K24 [PROTO_1]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R17 R16 K25 ["postV1JoinGameAsync"]
      117 DUPCLOSURE                       R17 K26 [PROTO_2]
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R17 R16 K27 ["postV1JoinGameInstanceAsync"]
      124 DUPCLOSURE                       R17 K28 [PROTO_3]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R5
      129 SETTABLEKS                       R17 R16 K29 ["postV1JoinPartyVoiceAsync"]
      131 DUPCLOSURE                       R17 K30 [PROTO_4]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R5
      136 SETTABLEKS                       R17 R16 K31 ["postV1JoinPlayTogetherGameAsync"]
      138 DUPCLOSURE                       R17 K32 [PROTO_5]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R17 R16 K33 ["postV1JoinPrivateGameAsync"]
      145 DUPCLOSURE                       R17 K34 [PROTO_6]
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R5
      150 SETTABLEKS                       R17 R16 K35 ["postV1JoinReservedGameAsync"]
      152 DUPCLOSURE                       R17 K36 [PROTO_7]
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R5
      157 SETTABLEKS                       R17 R16 K37 ["postV1PlayWithUserAsync"]
      159 DUPCLOSURE                       R17 K38 [PROTO_8]
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R13
      163 SETTABLEKS                       R17 R16 K39 ["postV1SimulateJoinGameAsync"]
      165 DUPCLOSURE                       R17 K40 [PROTO_9]
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R15
      170 SETTABLEKS                       R17 R16 K41 ["postV1TeamCreateAsync"]
      172 DUPCLOSURE                       R17 K42 [PROTO_10]
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R15
      177 SETTABLEKS                       R17 R16 K43 ["postV1TeamCreatePreemptiveAsync"]
      179 GETIMPORT                        R17 K46 [table.freeze]
      181 MOVE                             R18 R16
      182 CALL                             R17 1 -1
      183 RETURN                           R17 -1
