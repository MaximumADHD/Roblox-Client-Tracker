PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assetId"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R2 R2 K1 ["SetPluginEnabled"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R1
       11 GETUPVAL                         R6 2
       12 CALL                             R4 2 -1
       13 NAMECALL                         R2 R0 K2 ["dispatch"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetPluginEnabledState"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
