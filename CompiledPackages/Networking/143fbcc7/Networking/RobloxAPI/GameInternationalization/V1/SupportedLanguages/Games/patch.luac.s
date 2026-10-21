PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["patch"]
        6 CALL                             R0 4 1
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["parseJson"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["gameId must be number, received %s"]
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
       27 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 GETIMPORT                        R4 K5 [string.format]
       33 LOADK                            R5 K9 ["body must be string, received %s"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R7 R1
       36 GETIMPORT                        R6 K1 [type]
       38 CALL                             R6 1 1
       39 CALL                             R4 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R2 K8 [assert]
       43 CALL                             R2 -1 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K10 ["composeUrl"]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K11 ["GAMES_INTERNATIONALIZATION_URL"]
       50 GETIMPORT                        R4 K5 [string.format]
       52 LOADK                            R5 K12 ["v1/supported-languages/games/%d"]
       53 MOVE                             R6 R0
       54 CALL                             R4 2 -1
       55 CALL                             R2 -1 1
       56 NEWTABLE                         R3 1 0
       58 LOADK                            R4 K13 ["application/json"]
       59 SETTABLEKS                       R4 R3 K14 ["Content-Type"]
       61 DUPTABLE                         R4 K17 [{"getUrl", "makeRequest"}]
       62 NEWCLOSURE                       R5 P0
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R5 R4 K15 ["getUrl"]
       66 NEWCLOSURE                       R5 P1
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R5 R4 K16 ["makeRequest"]
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
