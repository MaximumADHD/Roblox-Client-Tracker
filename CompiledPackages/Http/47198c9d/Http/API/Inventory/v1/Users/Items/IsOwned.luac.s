PROTO_0:
        0 LOADN                            R5 0
        1 JUMPIFLT                         R5 R0 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        7 LOADK                            R5 K0 ["Expected userId to be a positive number."]
        8 GETIMPORT                        R3 K2 [assert]
       10 CALL                             R3 2 0
       11 FASTCALL1                        TONUMBER R2 ; [+3]
       12 MOVE                             R6 R2
       13 GETIMPORT                        R5 K5 [tonumber]
       15 CALL                             R5 1 1
       16 ORK                              R4 R5 K3 [False]
       17 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       19 LOADK                            R5 K6 ["Expected itemTargetId to be a positive number."]
       20 GETIMPORT                        R3 K2 [assert]
       22 CALL                             R3 2 0
       23 GETIMPORT                        R3 K9 [string.format]
       25 LOADK                            R4 K10 ["%sv1/users/%d/items/%s/%s/is-owned"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K11 ["INVENTORY_URL"]
       29 MOVE                             R6 R0
       30 GETTABLEKS                       R7 R1 K12 ["Name"]
       32 MOVE                             R8 R2
       33 CALL                             R3 5 1
       34 GETUPVAL                         R4 1
       35 MOVE                             R6 R3
       36 NAMECALL                         R4 R4 K13 ["get"]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 1
       40 MOVE                             R7 R4
       41 NAMECALL                         R5 R5 K14 ["handleRetry"]
       43 CALL                             R5 2 -1
       44 RETURN                           R5 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R6 K1 [script]
        3 GETTABLEKS                       R5 R6 K2 ["Parent"]
        5 GETTABLEKS                       R4 R5 K2 ["Parent"]
        7 GETTABLEKS                       R3 R4 K2 ["Parent"]
        9 GETTABLEKS                       R2 R3 K2 ["Parent"]
       11 GETTABLEKS                       R1 R2 K2 ["Parent"]
       13 GETTABLEKS                       R0 R1 K2 ["Parent"]
       15 GETIMPORT                        R1 K4 [require]
       17 GETTABLEKS                       R2 R0 K5 ["BaseUrl"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K6 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
