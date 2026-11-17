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
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R3 K5 [string.format]
       11 LOADK                            R4 K6 ["assetIds must be number, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K1 [type]
       16 CALL                             R5 1 1
       17 CALL                             R3 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R1 K8 [assert]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K9 ["composeUrl"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K10 ["DEVELOP_URL"]
       28 LOADK                            R3 K11 ["v1/packages/highest-permissions"]
       29 DUPTABLE                         R4 K13 [{"assetIds"}]
       30 SETTABLEKS                       R0 R4 K12 ["assetIds"]
       32 CALL                             R1 3 1
       33 DUPTABLE                         R2 K16 [{"getUrl", "makeRequest"}]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R3 R2 K14 ["getUrl"]
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R3 R2 K15 ["makeRequest"]
       43 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
