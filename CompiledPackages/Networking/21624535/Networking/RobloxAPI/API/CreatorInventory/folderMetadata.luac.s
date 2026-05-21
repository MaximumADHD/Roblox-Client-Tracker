PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 3
        5 GETUPVAL                         R5 0
        6 NAMECALL                         R3 R3 K0 ["JSONEncode"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 4
       10 NAMECALL                         R0 R0 K1 ["patch"]
       12 CALL                             R0 4 1
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R0 R0 K2 ["get"]
       18 CALL                             R0 2 1
       19 GETUPVAL                         R1 1
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K3 ["handleRetry"]
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K4 ["parseJson"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["APIS_URL"]
        6 LOADK                            R5 K2 ["creator-inventory-api/v1/%*"]
        7 MOVE                             R7 R0
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 CALL                             R2 2 1
       13 NEWTABLE                         R3 1 0
       15 LOADK                            R4 K4 ["application/json"]
       16 SETTABLEKS                       R4 R3 K5 ["Content-Type"]
       18 DUPTABLE                         R4 K8 [{"getUrl", "makeRequest"}]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R5 R4 K6 ["getUrl"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K7 ["makeRequest"]
       31 RETURN                           R4 1

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
