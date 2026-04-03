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
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R3 K4 [string.format]
       11 LOADK                            R4 K5 ["applicationName must be a string, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K1 [type]
       16 CALL                             R5 1 1
       17 CALL                             R3 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R1 K7 [assert]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K8 ["composeUrl"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K9 ["APIS_URL"]
       28 LOADK                            R4 K10 ["user-agreements/v1/agreements-resolution/"]
       29 MOVE                             R5 R0
       30 CONCAT                           R3 R4 R5
       31 CALL                             R1 2 1
       32 DUPTABLE                         R2 K13 [{"getUrl", "makeRequest"}]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K11 ["getUrl"]
       37 NEWCLOSURE                       R3 P1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K12 ["makeRequest"]
       42 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
