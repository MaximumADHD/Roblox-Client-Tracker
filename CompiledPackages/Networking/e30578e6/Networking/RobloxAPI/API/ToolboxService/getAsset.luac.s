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
        6 LOADK                            R3 K2 ["toolbox-service/v2/assets/%*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 2 1
       11 CALL                             R1 2 1
       12 DUPTABLE                         R2 K6 [{"getUrl", "makeRequest"}]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K4 ["getUrl"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K5 ["makeRequest"]
       22 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
