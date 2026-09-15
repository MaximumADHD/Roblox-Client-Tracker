PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function %*"]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R1 R1 K3 ["format"]
        6 CALL                             R1 2 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
