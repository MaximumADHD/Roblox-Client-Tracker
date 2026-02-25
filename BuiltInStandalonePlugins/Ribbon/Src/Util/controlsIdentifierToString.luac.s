PROTO_0:
        0 LOADK                            R2 K0 ["%*_%*"]
        1 GETTABLEKS                       R4 R0 K1 ["Type"]
        3 GETTABLEKS                       R5 R0 K2 ["Filename"]
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
