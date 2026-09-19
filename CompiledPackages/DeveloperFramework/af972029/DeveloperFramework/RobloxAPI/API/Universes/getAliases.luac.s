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
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["universeId must be number, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K1 [type]
       16 CALL                             R6 1 1
       17 CALL                             R4 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R2 K8 [assert]
       21 CALL                             R2 -1 0
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R4 K1 [type]
       26 CALL                             R4 1 1
       27 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 GETIMPORT                        R4 K5 [string.format]
       33 LOADK                            R5 K6 ["universeId must be number, received %s"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R7 R1
       36 GETIMPORT                        R6 K1 [type]
       38 CALL                             R6 1 1
       39 CALL                             R4 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R2 K8 [assert]
       43 CALL                             R2 -1 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K9 ["composeUrl"]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K10 ["APIS_URL"]
       50 LOADK                            R4 K11 ["content-aliases-api/v1/universes/get-aliases"]
       51 DUPTABLE                         R5 K14 [{"universeId", "page"}]
       52 SETTABLEKS                       R0 R5 K12 ["universeId"]
       54 SETTABLEKS                       R1 R5 K13 ["page"]
       56 CALL                             R2 3 1
       57 DUPTABLE                         R3 K17 [{"getUrl", "makeRequest"}]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R4 R3 K15 ["getUrl"]
       62 NEWCLOSURE                       R4 P1
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R4 R3 K16 ["makeRequest"]
       67 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
