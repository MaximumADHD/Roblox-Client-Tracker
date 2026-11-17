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
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["number"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 LOADK                            R5 K3 ["userId must be number, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R8 R0
       12 GETIMPORT                        R7 K1 [type]
       14 CALL                             R7 1 1
       15 NAMECALL                         R5 R5 K4 ["format"]
       17 CALL                             R5 2 1
       18 FASTCALL2                        ASSERT R4 R5 ; [+3]
       20 GETIMPORT                        R3 K6 [assert]
       22 CALL                             R3 2 0
       23 FASTCALL1                        TYPE R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K1 [type]
       27 CALL                             R5 1 1
       28 JUMPIFEQKS                       R5 K7 ["string"] ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 LOADK                            R5 K8 ["assetType must be string, received %*"]
       33 FASTCALL1                        TYPE R1 ; [+3]
       34 MOVE                             R8 R1
       35 GETIMPORT                        R7 K1 [type]
       37 CALL                             R7 1 1
       38 NAMECALL                         R5 R5 K4 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R4 R5 ; [+3]
       43 GETIMPORT                        R3 K6 [assert]
       45 CALL                             R3 2 0
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K9 ["composeUrl"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K10 ["APIS_URL"]
       52 LOADK                            R5 K11 ["toolbox-service/v1/inventory/user/%*/%*"]
       53 MOVE                             R7 R0
       54 MOVE                             R8 R1
       55 NAMECALL                         R5 R5 K4 ["format"]
       57 CALL                             R5 3 1
       58 MOVE                             R6 R2
       59 CALL                             R3 3 1
       60 DUPTABLE                         R4 K14 [{"getUrl", "makeRequest"}]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R5 R4 K12 ["getUrl"]
       65 NEWCLOSURE                       R5 P1
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R5 R4 K13 ["makeRequest"]
       70 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
