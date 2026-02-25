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
        9 GETIMPORT                        R5 K5 [string.format]
       11 LOADK                            R6 K6 ["universeId must be number, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R8 R0
       14 GETIMPORT                        R7 K1 [type]
       16 CALL                             R7 1 1
       17 CALL                             R5 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R3 K8 [assert]
       21 CALL                             R3 -1 0
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K1 [type]
       26 CALL                             R5 1 1
       27 JUMPIFEQKS                       R5 K2 ["number"] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 GETIMPORT                        R5 K5 [string.format]
       33 LOADK                            R6 K9 ["maxPageSize must be number, received %s"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R8 R1
       36 GETIMPORT                        R7 K1 [type]
       38 CALL                             R7 1 1
       39 CALL                             R5 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R3 K8 [assert]
       43 CALL                             R3 -1 0
       44 JUMPIFNOT                        R2 ; [+22]
       45 FASTCALL1                        TYPE R2 ; [+3]
       46 MOVE                             R6 R2
       47 GETIMPORT                        R5 K1 [type]
       49 CALL                             R5 1 1
       50 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
       52 LOADB                            R4 0 +1
       53 LOADB                            R4 1
       54 GETIMPORT                        R5 K5 [string.format]
       56 LOADK                            R6 K10 ["pageCursor must be string, received %s"]
       57 FASTCALL1                        TYPE R2 ; [+3]
       58 MOVE                             R8 R2
       59 GETIMPORT                        R7 K1 [type]
       61 CALL                             R7 1 1
       62 CALL                             R5 2 -1
       63 FASTCALL                         ASSERT ; [+2]
       64 GETIMPORT                        R3 K8 [assert]
       66 CALL                             R3 -1 0
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R3 R4 K11 ["composeUrl"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K12 ["APIS_URL"]
       73 LOADK                            R6 K13 ["content-aliases-api/v1/universes/"]
       74 FASTCALL1                        TOSTRING R0 ; [+3]
       75 MOVE                             R10 R0
       76 GETIMPORT                        R9 K15 [tostring]
       78 CALL                             R9 1 1
       79 MOVE                             R7 R9
       80 LOADK                            R8 K16 ["/aliases"]
       81 CONCAT                           R5 R6 R8
       82 DUPTABLE                         R6 K19 [{"maxPageSize", "pageToken"}]
       83 SETTABLEKS                       R1 R6 K17 ["maxPageSize"]
       85 SETTABLEKS                       R2 R6 K18 ["pageToken"]
       87 CALL                             R3 3 1
       88 DUPTABLE                         R4 K22 [{"getUrl", "makeRequest"}]
       89 NEWCLOSURE                       R5 P0
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R5 R4 K20 ["getUrl"]
       93 NEWCLOSURE                       R5 P1
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R3
       96 SETTABLEKS                       R5 R4 K21 ["makeRequest"]
       98 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
