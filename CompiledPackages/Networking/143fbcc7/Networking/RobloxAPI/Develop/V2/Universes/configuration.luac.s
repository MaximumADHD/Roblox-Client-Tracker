PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+17]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R0 R0 K0 ["get"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K1 ["handleRetry"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K2 ["parseJson"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
       19 GETUPVAL                         R0 1
       20 GETUPVAL                         R2 2
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R5 0
       23 NAMECALL                         R3 R3 K3 ["JSONEncode"]
       25 CALL                             R3 2 1
       26 NEWTABLE                         R4 1 0
       28 LOADK                            R5 K4 ["application/json"]
       29 SETTABLEKS                       R5 R4 K5 ["Content-Type"]
       31 NAMECALL                         R0 R0 K6 ["patch"]
       33 CALL                             R0 4 1
       34 GETUPVAL                         R1 1
       35 MOVE                             R3 R0
       36 NAMECALL                         R1 R1 K2 ["parseJson"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["universeId must be of type number, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K1 [type]
       16 CALL                             R6 1 1
       17 CALL                             R4 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R2 K8 [assert]
       21 CALL                             R2 -1 0
       22 JUMPIFEQKNIL                     R1 ; [+23]
       24 FASTCALL1                        TYPE R1 ; [+3]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K1 [type]
       28 CALL                             R4 1 1
       29 JUMPIFEQKS                       R4 K9 ["table"] ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 GETIMPORT                        R4 K5 [string.format]
       35 LOADK                            R5 K10 ["body must be of type table, received %s"]
       36 FASTCALL1                        TYPE R1 ; [+3]
       37 MOVE                             R7 R1
       38 GETIMPORT                        R6 K1 [type]
       40 CALL                             R6 1 1
       41 CALL                             R4 2 -1
       42 FASTCALL                         ASSERT ; [+2]
       43 GETIMPORT                        R2 K8 [assert]
       45 CALL                             R2 -1 0
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K11 ["composeUrl"]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K12 ["DEVELOP_URL"]
       52 GETIMPORT                        R4 K5 [string.format]
       54 LOADK                            R5 K13 ["v2/universes/%d/configuration"]
       55 MOVE                             R6 R0
       56 CALL                             R4 2 -1
       57 CALL                             R2 -1 1
       58 DUPTABLE                         R3 K16 [{"getUrl", "makeRequest"}]
       59 NEWCLOSURE                       R4 P0
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R4 R3 K14 ["getUrl"]
       63 NEWCLOSURE                       R4 P1
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U2
       68 SETTABLEKS                       R4 R3 K15 ["makeRequest"]
       70 RETURN                           R3 1

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
