PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R1 R1 K0 ["get"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 JUMP                             ; [+20]
       11 GETUPVAL                         R1 0
       12 JUMPIFNOTEQKB                    R1 TRUE ; [+8]
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R3 2
       16 NAMECALL                         R1 R1 K1 ["delete"]
       18 CALL                             R1 2 1
       19 MOVE                             R0 R1
       20 JUMP                             ; [+10]
       21 GETUPVAL                         R1 0
       22 JUMPIFNOTEQKB                    R1 FALSE ; [+8]
       24 GETUPVAL                         R1 1
       25 GETUPVAL                         R3 2
       26 LOADK                            R4 K2 [""]
       27 NAMECALL                         R1 R1 K3 ["post"]
       29 CALL                             R1 3 1
       30 MOVE                             R0 R1
       31 GETUPVAL                         R1 1
       32 MOVE                             R3 R0
       33 NAMECALL                         R1 R1 K4 ["handleRetry"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [tonumber]
        4 CALL                             R5 1 1
        5 LOADN                            R6 0
        6 JUMPIFLT                         R6 R5 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       12 LOADK                            R5 K2 ["Expected assetId to be a positive number."]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 FASTCALL1                        TONUMBER R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K1 [tonumber]
       20 CALL                             R5 1 1
       21 LOADN                            R6 0
       22 JUMPIFLT                         R6 R5 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       28 LOADK                            R5 K5 ["Expected userId to be a positive number."]
       29 GETIMPORT                        R3 K4 [assert]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K6 ["composeUrl"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K7 ["CATALOG_URL"]
       38 GETIMPORT                        R5 K10 [string.format]
       40 LOADK                            R6 K11 ["v1/favorites/users/%s/assets/%s/favorite"]
       41 MOVE                             R7 R1
       42 MOVE                             R8 R0
       43 CALL                             R5 3 -1
       44 CALL                             R3 -1 1
       45 DUPTABLE                         R4 K14 [{"getUrl", "makeRequest"}]
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K12 ["getUrl"]
       50 NEWCLOSURE                       R5 P1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R5 R4 K13 ["makeRequest"]
       56 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
