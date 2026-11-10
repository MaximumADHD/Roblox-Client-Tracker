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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["composeUrl"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["APIS_URL"]
        6 LOADK                            R4 K2 ["assets/user-auth/v1/assets/"]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R6 R0
        9 GETIMPORT                        R5 K4 [tostring]
       11 CALL                             R5 1 1
       12 CONCAT                           R3 R4 R5
       13 CALL                             R1 2 1
       14 DUPTABLE                         R2 K7 [{"getUrl", "makeRequest"}]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K5 ["getUrl"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K6 ["makeRequest"]
       24 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
