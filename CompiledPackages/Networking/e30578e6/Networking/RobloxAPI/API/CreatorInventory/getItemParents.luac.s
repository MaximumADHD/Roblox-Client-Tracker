PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R5 3
        4 NAMECALL                         R3 R3 K0 ["JSONEncode"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 4
        8 NAMECALL                         R0 R0 K1 ["post"]
       10 CALL                             R0 4 1
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["handleRetry"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K3 ["parseJson"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["composeUrl"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["APIS_URL"]
        6 LOADK                            R5 K2 ["creator-inventory-api/v1/%*/%*/creator-inventory-items:batchGetParents"]
        7 MOVE                             R7 R1
        8 MOVE                             R8 R0
        9 NAMECALL                         R5 R5 K3 ["format"]
       11 CALL                             R5 3 1
       12 CALL                             R3 2 1
       13 NEWTABLE                         R4 1 0
       15 LOADK                            R5 K4 ["application/json"]
       16 SETTABLEKS                       R5 R4 K5 ["Content-Type"]
       18 DUPTABLE                         R5 K8 [{"getUrl", "makeRequest"}]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R6 R5 K6 ["getUrl"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R6 R5 K7 ["makeRequest"]
       31 RETURN                           R5 1

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
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Networking"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_3]
       21 CAPTURE                          VAL R0
       22 RETURN                           R3 1
