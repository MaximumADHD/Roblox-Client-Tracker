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
        9 LOADK                            R6 K3 ["userId must be number, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R9 R0
       12 GETIMPORT                        R8 K1 [type]
       14 CALL                             R8 1 1
       15 NAMECALL                         R6 R6 K4 ["format"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 FASTCALL2                        ASSERT R4 R5 ; [+3]
       21 GETIMPORT                        R3 K6 [assert]
       23 CALL                             R3 2 0
       24 FASTCALL1                        TYPE R1 ; [+3]
       25 MOVE                             R6 R1
       26 GETIMPORT                        R5 K1 [type]
       28 CALL                             R5 1 1
       29 JUMPIFEQKS                       R5 K7 ["string"] ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 LOADK                            R6 K8 ["assetType must be string, received %*"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R9 R1
       36 GETIMPORT                        R8 K1 [type]
       38 CALL                             R8 1 1
       39 NAMECALL                         R6 R6 K4 ["format"]
       41 CALL                             R6 2 1
       42 MOVE                             R5 R6
       43 FASTCALL2                        ASSERT R4 R5 ; [+3]
       45 GETIMPORT                        R3 K6 [assert]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K9 ["composeUrl"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K10 ["APIS_URL"]
       54 LOADK                            R6 K11 ["toolbox-service/v1/inventory/user/%*/%*"]
       55 MOVE                             R8 R0
       56 MOVE                             R9 R1
       57 NAMECALL                         R6 R6 K4 ["format"]
       59 CALL                             R6 3 1
       60 MOVE                             R5 R6
       61 MOVE                             R6 R2
       62 CALL                             R3 3 1
       63 DUPTABLE                         R4 K14 [{"getUrl", "makeRequest"}]
       64 NEWCLOSURE                       R5 P0
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R5 R4 K12 ["getUrl"]
       68 NEWCLOSURE                       R5 P1
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R5 R4 K13 ["makeRequest"]
       73 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
