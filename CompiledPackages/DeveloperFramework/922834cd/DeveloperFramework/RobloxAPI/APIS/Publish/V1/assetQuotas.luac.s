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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["composeUrl"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["PUBLISH_URL"]
        6 LOADK                            R4 K2 ["v1/asset-quotas"]
        7 NEWTABLE                         R5 2 0
        9 SETTABLEKS                       R0 R5 K3 ["assetType"]
       11 SETTABLEKS                       R1 R5 K4 ["resourceType"]
       13 CALL                             R2 3 1
       14 DUPTABLE                         R3 K7 [{"getUrl", "makeRequest"}]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R4 R3 K5 ["getUrl"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K6 ["makeRequest"]
       24 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
