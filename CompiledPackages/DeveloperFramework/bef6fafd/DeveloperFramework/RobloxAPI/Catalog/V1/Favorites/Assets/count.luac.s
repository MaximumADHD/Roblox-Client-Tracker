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
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tonumber]
        4 CALL                             R3 1 1
        5 LOADN                            R4 0
        6 JUMPIFLT                         R4 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       12 LOADK                            R3 K2 ["Expected assetId to be a positive number."]
       13 GETIMPORT                        R1 K4 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K5 ["composeUrl"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K6 ["CATALOG_URL"]
       22 GETIMPORT                        R3 K9 [string.format]
       24 LOADK                            R4 K10 ["v1/favorites/assets/%s/count"]
       25 MOVE                             R5 R0
       26 CALL                             R3 2 -1
       27 CALL                             R1 -1 1
       28 DUPTABLE                         R2 K13 [{"getUrl", "makeRequest"}]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R3 R2 K11 ["getUrl"]
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R3 R2 K12 ["makeRequest"]
       38 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
