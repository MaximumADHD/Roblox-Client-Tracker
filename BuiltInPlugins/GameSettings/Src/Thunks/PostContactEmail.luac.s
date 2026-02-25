PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["policyInfoController"]
        2 GETIMPORT                        R4 K2 [game]
        4 GETTABLEKS                       R3 R4 K3 ["GameId"]
        6 MOVE                             R6 R3
        7 GETUPVAL                         R7 0
        8 NAMECALL                         R4 R2 K4 ["postContactEmail"]
       10 CALL                             R4 3 -1
       11 RETURN                           R4 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
