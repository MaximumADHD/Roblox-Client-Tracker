PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assetId"]
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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R0 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Actions"]
       21 GETTABLEKS                       R3 R4 K11 ["SetPluginEnabledState"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K12 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
