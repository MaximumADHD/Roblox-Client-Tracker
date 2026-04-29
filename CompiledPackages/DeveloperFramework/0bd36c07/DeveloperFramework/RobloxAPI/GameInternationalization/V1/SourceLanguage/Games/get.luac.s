PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 0
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K1 ["handleRetry"]
       10 CALL                             R3 2 -1
       11 NAMECALL                         R1 R1 K2 ["parseJson"]
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R3 K5 [string.format]
       11 LOADK                            R4 K6 ["universeId must be number, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K1 [type]
       16 CALL                             R5 1 1
       17 CALL                             R3 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R1 K8 [assert]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K9 ["composeUrl"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K10 ["GAMES_INTERNATIONALIZATION_URL"]
       28 GETIMPORT                        R3 K5 [string.format]
       30 LOADK                            R4 K11 ["v1/source-language/games/%d"]
       31 MOVE                             R5 R0
       32 CALL                             R3 2 -1
       33 CALL                             R1 -1 1
       34 DUPTABLE                         R2 K14 [{"getUrl", "makeRequest"}]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R3 R2 K12 ["getUrl"]
       39 NEWCLOSURE                       R3 P1
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R3 R2 K13 ["makeRequest"]
       44 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
