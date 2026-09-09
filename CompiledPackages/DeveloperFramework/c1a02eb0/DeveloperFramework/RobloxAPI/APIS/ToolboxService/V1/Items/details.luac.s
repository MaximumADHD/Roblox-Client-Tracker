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
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 LOADK                            R4 K3 ["assetIds must be table, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K1 [type]
       14 CALL                             R6 1 1
       15 NAMECALL                         R4 R4 K4 ["format"]
       17 CALL                             R4 2 1
       18 MOVE                             R3 R4
       19 FASTCALL2                        ASSERT R2 R3 ; [+3]
       21 GETIMPORT                        R1 K6 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K7 ["composeUrl"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K8 ["APIS_URL"]
       30 LOADK                            R3 K9 ["toolbox-service/v1/items/details"]
       31 DUPTABLE                         R4 K11 [{"assetIds"}]
       32 GETIMPORT                        R5 K13 [table.concat]
       34 MOVE                             R6 R0
       35 LOADK                            R7 K14 [","]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K10 ["assetIds"]
       39 CALL                             R1 3 1
       40 DUPTABLE                         R2 K17 [{"getUrl", "makeRequest"}]
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R3 R2 K15 ["getUrl"]
       45 NEWCLOSURE                       R3 P1
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R3 R2 K16 ["makeRequest"]
       50 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
