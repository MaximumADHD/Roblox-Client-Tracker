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
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R5 K3 ["groupId must be number, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R8 R0
       12 GETIMPORT                        R7 K1 [type]
       14 CALL                             R7 1 1
       15 NAMECALL                         R5 R5 K4 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 FASTCALL2                        ASSERT R3 R4 ; [+3]
       21 GETIMPORT                        R2 K6 [assert]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K7 ["composeUrl"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K8 ["APIS_URL"]
       30 LOADK                            R5 K9 ["creator-inventory-api/v1/groups/%*/creator-inventory-items"]
       31 MOVE                             R7 R0
       32 NAMECALL                         R5 R5 K4 ["format"]
       34 CALL                             R5 2 1
       35 MOVE                             R4 R5
       36 MOVE                             R5 R1
       37 CALL                             R2 3 1
       38 DUPTABLE                         R3 K12 [{"getUrl", "makeRequest"}]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R4 R3 K10 ["getUrl"]
       43 NEWCLOSURE                       R4 P1
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R4 R3 K11 ["makeRequest"]
       48 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
