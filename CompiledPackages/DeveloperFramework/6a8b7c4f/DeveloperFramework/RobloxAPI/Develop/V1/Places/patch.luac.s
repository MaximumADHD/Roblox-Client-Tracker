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
        7 NEWTABLE                         R4 1 0
        9 LOADK                            R5 K1 ["application/json"]
       10 SETTABLEKS                       R5 R4 K2 ["Content-Type"]
       12 NAMECALL                         R0 R0 K3 ["patch"]
       14 CALL                             R0 4 1
       15 GETUPVAL                         R1 0
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K4 ["parseJson"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["placeId must be number, received %s"]
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
       27 JUMPIFEQKS                       R4 K9 ["table"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 GETIMPORT                        R4 K5 [string.format]
       33 LOADK                            R5 K10 ["body must be of type table, received %s"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R7 R1
       36 GETIMPORT                        R6 K1 [type]
       38 CALL                             R6 1 1
       39 CALL                             R4 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R2 K8 [assert]
       43 CALL                             R2 -1 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K11 ["composeUrl"]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K12 ["DEVELOP_URL"]
       50 GETIMPORT                        R4 K5 [string.format]
       52 LOADK                            R5 K13 ["v1/places/%d"]
       53 MOVE                             R6 R0
       54 CALL                             R4 2 -1
       55 CALL                             R2 -1 1
       56 DUPTABLE                         R3 K16 [{"getUrl", "makeRequest"}]
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R4 R3 K14 ["getUrl"]
       61 NEWCLOSURE                       R4 P1
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R4 R3 K15 ["makeRequest"]
       68 RETURN                           R3 1

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
