PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.WebSocket]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClient"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          REF R1
       11 NEWCLOSURE                       R3 P2
       12 CAPTURE                          REF R1
       13 DUPTABLE                         R4 K7 [{"createWebSocketClient", "setWebSocketClientCreationFunc"}]
       14 SETTABLEKS                       R2 R4 K5 ["createWebSocketClient"]
       16 SETTABLEKS                       R3 R4 K6 ["setWebSocketClientCreationFunc"]
       18 CLOSEUPVALS                      R1
       19 RETURN                           R4 1
