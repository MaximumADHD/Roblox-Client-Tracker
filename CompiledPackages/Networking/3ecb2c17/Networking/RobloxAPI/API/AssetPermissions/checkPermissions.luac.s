PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["post"]
        6 CALL                             R0 4 1
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["handleRetry"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K2 ["parseJson"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["composeUrl"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["APIS_URL"]
        6 LOADK                            R3 K2 ["asset-permissions-api/v1/assets/check-permissions"]
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K4 [{"requests"}]
        9 SETTABLEKS                       R0 R2 K3 ["requests"]
       11 GETUPVAL                         R3 1
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K5 ["JSONEncode"]
       15 CALL                             R3 2 1
       16 NEWTABLE                         R4 1 0
       18 LOADK                            R5 K6 ["application/json"]
       19 SETTABLEKS                       R5 R4 K7 ["Content-Type"]
       21 DUPTABLE                         R5 K10 [{"getUrl", "makeRequest"}]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R6 R5 K8 ["getUrl"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R6 R5 K9 ["makeRequest"]
       33 RETURN                           R5 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
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
