PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 DUPTABLE                         R5 K1 [{"templatePlaceId"}]
        4 GETUPVAL                         R6 3
        5 SETTABLEKS                       R6 R5 K0 ["templatePlaceId"]
        7 NAMECALL                         R3 R3 K2 ["JSONEncode"]
        9 CALL                             R3 2 1
       10 NEWTABLE                         R4 1 0
       12 LOADK                            R5 K3 ["application/json"]
       13 SETTABLEKS                       R5 R4 K4 ["Content-Type"]
       15 NAMECALL                         R0 R0 K5 ["post"]
       17 CALL                             R0 4 1
       18 GETUPVAL                         R1 0
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K6 ["parseJson"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["APIS_URL"]
        6 LOADK                            R4 K2 ["universes/v1/user/universes/%*/places"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 CALL                             R2 2 1
       12 DUPTABLE                         R3 K6 [{"getUrl", "makeRequest"}]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R4 R3 K4 ["getUrl"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R4 R3 K5 ["makeRequest"]
       24 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_3]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
