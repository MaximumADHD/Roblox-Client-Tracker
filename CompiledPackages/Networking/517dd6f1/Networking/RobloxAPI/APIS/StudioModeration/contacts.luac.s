PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 DUPTABLE                         R5 K1 [{"email"}]
        4 GETUPVAL                         R6 3
        5 SETTABLEKS                       R6 R5 K0 ["email"]
        7 NAMECALL                         R3 R3 K2 ["JSONEncode"]
        9 CALL                             R3 2 1
       10 NEWTABLE                         R4 1 0
       12 LOADK                            R5 K3 ["application/json"]
       13 SETTABLEKS                       R5 R4 K4 ["Content-Type"]
       15 NAMECALL                         R0 R0 K5 ["post"]
       17 CALL                             R0 4 1
       18 GETUPVAL                         R1 0
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K6 ["parseJson"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["universeId must be a number, received %s"]
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
       33 LOADK                            R5 K9 ["contactEmail must be a string, received %s"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R7 R1
       36 GETIMPORT                        R6 K1 [type]
       38 CALL                             R6 1 1
       39 CALL                             R4 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R2 K8 [assert]
       43 CALL                             R2 -1 0
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R2 R3 K10 ["composeUrl"]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R3 R4 K11 ["APIS_URL"]
       50 LOADK                            R5 K12 ["studio-moderation/v1/"]
       51 MOVE                             R6 R0
       52 LOADK                            R7 K13 ["/contacts"]
       53 CONCAT                           R4 R5 R7
       54 CALL                             R2 2 1
       55 DUPTABLE                         R3 K16 [{"getUrl", "makeRequest"}]
       56 NEWCLOSURE                       R4 P0
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R4 R3 K14 ["getUrl"]
       60 NEWCLOSURE                       R4 P1
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R4 R3 K15 ["makeRequest"]
       67 RETURN                           R3 1

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
