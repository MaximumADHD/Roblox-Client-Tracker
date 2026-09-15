PROTO_0:
        0 LOADK                            R1 K0 ["%*_%*"]
        1 GETTABLEKS                       R3 R0 K1 ["Type"]
        3 GETTABLEKS                       R4 R0 K2 ["Filename"]
        5 NAMECALL                         R1 R1 K3 ["format"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
