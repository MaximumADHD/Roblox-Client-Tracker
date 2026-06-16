PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["requestAndRetryPost"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R5 K2 [{"assetIds"}]
        6 SETTABLEKS                       R0 R5 K1 ["assetIds"]
        8 NAMECALL                         R3 R3 K3 ["JSONEncode"]
       10 CALL                             R3 2 -1
       11 CALL                             R1 -1 2
       12 JUMPIFNOT                        R1 ; [+7]
       13 LOADB                            R3 1
       14 GETUPVAL                         R4 2
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R4 K4 ["JSONDecode"]
       18 CALL                             R4 2 -1
       19 RETURN                           R3 -1
       20 LOADB                            R3 0
       21 MOVE                             R4 R2
       22 RETURN                           R3 2

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
       25 LOADK                            R5 K15 ["https://itemconfiguration.%s"]
       26 MOVE                             R6 R3
       27 CALL                             R4 2 1
       28 MOVE                             R6 R4
       29 LOADK                            R7 K16 ["v1/creations/get-asset-details"]
       30 CONCAT                           R5 R6 R7
       31 DUPCLOSURE                       R6 K17 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R2
       35 RETURN                           R6 1
