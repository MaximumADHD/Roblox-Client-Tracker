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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K8 [game]
       14 LOADK                            R4 K9 ["HttpService"]
       15 NAMECALL                         R2 R2 K10 ["GetService"]
       17 CALL                             R2 2 1
       18 DUPCLOSURE                       R3 K11 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          REF R3
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          REF R3
       24 DUPTABLE                         R6 K14 [{"createWebSocketClient", "setWebSocketClientCreationFunc"}]
       25 SETTABLEKS                       R4 R6 K12 ["createWebSocketClient"]
       27 SETTABLEKS                       R5 R6 K13 ["setWebSocketClientCreationFunc"]
       29 CLOSEUPVALS                      R3
       30 RETURN                           R6 1
