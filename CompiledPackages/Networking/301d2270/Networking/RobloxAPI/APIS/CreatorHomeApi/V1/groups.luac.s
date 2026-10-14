PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["handleRetry"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K2 ["parseJson"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["composeUrl"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["APIS_URL"]
        6 LOADK                            R3 K2 ["creator-home-api/v1/groups"]
        7 DUPTABLE                         R4 K4 [{"surface"}]
        8 SETTABLEKS                       R0 R4 K3 ["surface"]
       10 CALL                             R1 3 1
       11 DUPTABLE                         R2 K7 [{"getUrl", "makeRequest"}]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R3 R2 K5 ["getUrl"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R2 K6 ["makeRequest"]
       21 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
