PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["requestAndRetryGet"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+7]
       11 LOADB                            R4 1
       12 GETUPVAL                         R5 2
       13 MOVE                             R7 R3
       14 NAMECALL                         R5 R5 K4 ["JSONDecode"]
       16 CALL                             R5 2 -1
       17 RETURN                           R4 -1
       18 LOADB                            R4 0
       19 MOVE                             R5 R3
       20 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["APIUtil"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["HttpService"]
       17 NAMECALL                         R2 R2 K10 ["GetService"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R3 R1 K11 ["getBaseDomain"]
       22 CALL                             R3 0 1
       23 GETIMPORT                        R4 K14 [string.format]
       25 LOADK                            R5 K15 ["https://apis.%s"]
       26 MOVE                             R6 R3
       27 CALL                             R4 2 1
       28 MOVE                             R6 R4
       29 LOADK                            R7 K16 ["assets/rcc/v1/assets/%s"]
       30 CONCAT                           R5 R6 R7
       31 DUPCLOSURE                       R6 K17 [PROTO_0]
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R6 1
