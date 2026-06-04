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
        0 JUMPIFNOT                        R2 ; [+7]
        1 LOADK                            R5 K0 ["creator-inventory-api/v1/%*:listChildren"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 2 1
        6 MOVE                             R4 R5
        7 JUMP                             ; [+7]
        8 LOADK                            R5 K2 ["creator-inventory-api/v1/%*/%*/creator-inventory-items"]
        9 MOVE                             R7 R1
       10 MOVE                             R8 R0
       11 NAMECALL                         R5 R5 K1 ["format"]
       13 CALL                             R5 3 1
       14 MOVE                             R4 R5
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["composeUrl"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K4 ["APIS_URL"]
       21 MOVE                             R7 R4
       22 MOVE                             R8 R3
       23 CALL                             R5 3 1
       24 DUPTABLE                         R6 K7 [{"getUrl", "makeRequest"}]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R5
       27 SETTABLEKS                       R7 R6 K5 ["getUrl"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R5
       32 SETTABLEKS                       R7 R6 K6 ["makeRequest"]
       34 RETURN                           R6 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Networking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 RETURN                           R2 1
