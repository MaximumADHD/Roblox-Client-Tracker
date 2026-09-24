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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["composeUrl"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["DEVELOP_URL"]
        6 LOADK                            R2 K2 ["v1/user/groups/canmanage"]
        7 CALL                             R0 2 1
        8 DUPTABLE                         R1 K5 [{"getUrl", "makeRequest"}]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K3 ["getUrl"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R1 K4 ["makeRequest"]
       18 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
