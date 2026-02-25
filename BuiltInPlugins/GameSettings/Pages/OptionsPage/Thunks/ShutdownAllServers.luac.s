PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameOptionsController"]
        9 MOVE                             R7 R3
       10 NAMECALL                         R5 R4 K4 ["shutdownAllServers"]
       12 CALL                             R5 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
