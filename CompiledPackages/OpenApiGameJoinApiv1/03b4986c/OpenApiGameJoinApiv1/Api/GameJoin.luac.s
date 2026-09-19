PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["GET"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/v1/join-team-test"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 CALL                             R2 4 1
       12 LOADK                            R4 K5 ["PlaceId"]
       13 MOVE                             R5 R0
       14 NAMECALL                         R2 R2 K6 ["addQueryParameter"]
       16 CALL                             R2 3 1
       17 LOADK                            R4 K7 ["PlaceVersion"]
       18 MOVE                             R5 R1
       19 NAMECALL                         R2 R2 K6 ["addQueryParameter"]
       21 CALL                             R2 3 1
       22 NAMECALL                         R2 R2 K8 ["sendAsync"]
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-game-instance"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-play-together-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-private-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/join-reserved-game"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/play-with-user"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/team-create"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/team-create-preemptive"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K5 ["setBody"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["validate"]
       19 NAMECALL                         R1 R1 K7 ["sendAsync"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["HttpWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["PathMetadata"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Models"]
       23 GETTABLEKS                       R4 R4 K10 ["GameJoinRequest"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Models"]
       30 GETTABLEKS                       R5 R5 K11 ["GameJoinResponse"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Models"]
       37 GETTABLEKS                       R6 R6 K12 ["JoinGameInstanceRequest"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Models"]
       44 GETTABLEKS                       R7 R7 K13 ["JoinPlayTogetherGameRequest"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Models"]
       51 GETTABLEKS                       R8 R8 K14 ["JoinPrivateGameRequest"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Models"]
       58 GETTABLEKS                       R9 R9 K15 ["JoinReservedGameRequest"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K9 ["Models"]
       65 GETTABLEKS                       R10 R10 K16 ["PlayWithUserRequest"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K9 ["Models"]
       72 GETTABLEKS                       R11 R11 K17 ["TeamCreateRequest"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K9 ["Models"]
       79 GETTABLEKS                       R12 R12 K18 ["TeamCreateResponse"]
       81 CALL                             R11 1 1
       82 NEWTABLE                         R12 16 0
       84 DUPCLOSURE                       R13 K19 [PROTO_0]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R13 R12 K20 ["getV1JoinTeamTestAsync"]
       89 DUPCLOSURE                       R13 K21 [PROTO_1]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R13 R12 K22 ["postV1JoinGameAsync"]
       95 DUPCLOSURE                       R13 K23 [PROTO_2]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R13 R12 K24 ["postV1JoinGameInstanceAsync"]
      101 DUPCLOSURE                       R13 K25 [PROTO_3]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 SETTABLEKS                       R13 R12 K26 ["postV1JoinPlayTogetherGameAsync"]
      107 DUPCLOSURE                       R13 K27 [PROTO_4]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R13 R12 K28 ["postV1JoinPrivateGameAsync"]
      113 DUPCLOSURE                       R13 K29 [PROTO_5]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R13 R12 K30 ["postV1JoinReservedGameAsync"]
      119 DUPCLOSURE                       R13 K31 [PROTO_6]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R13 R12 K32 ["postV1PlayWithUserAsync"]
      125 DUPCLOSURE                       R13 K33 [PROTO_7]
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R11
      129 SETTABLEKS                       R13 R12 K34 ["postV1TeamCreateAsync"]
      131 DUPCLOSURE                       R13 K35 [PROTO_8]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R11
      135 SETTABLEKS                       R13 R12 K36 ["postV1TeamCreatePreemptiveAsync"]
      137 GETIMPORT                        R13 K39 [table.freeze]
      139 MOVE                             R14 R12
      140 CALL                             R13 1 -1
      141 RETURN                           R13 -1
