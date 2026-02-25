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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["composeUrl"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["APIS_URL"]
        6 LOADK                            R4 K2 ["packages-api/v1/packages/assets/versions/metadata/get"]
        7 CALL                             R2 2 1
        8 NEWTABLE                         R3 0 1
       10 DUPTABLE                         R4 K5 [{"assetId", "assetVersionNumber"}]
       11 SETTABLEKS                       R0 R4 K3 ["assetId"]
       13 ORK                              R5 R1 K6 [1]
       14 SETTABLEKS                       R5 R4 K4 ["assetVersionNumber"]
       16 SETLIST                          R3 R4 1 [1]
       18 GETUPVAL                         R4 1
       19 MOVE                             R6 R3
       20 NAMECALL                         R4 R4 K7 ["JSONEncode"]
       22 CALL                             R4 2 1
       23 NEWTABLE                         R5 1 0
       25 LOADK                            R6 K8 ["application/json"]
       26 SETTABLEKS                       R6 R5 K9 ["Content-Type"]
       28 DUPTABLE                         R6 K12 [{"getUrl", "makeRequest"}]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R7 R6 K10 ["getUrl"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R7 R6 K11 ["makeRequest"]
       40 RETURN                           R6 1

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
