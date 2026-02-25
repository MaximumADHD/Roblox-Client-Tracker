PROTO_0:
        0 LOADK                            R1 K0 ["TestScript"]
        1 GETIMPORT                        R2 K3 [math.random]
        3 CALL                             R2 0 1
        4 CONCAT                           R0 R1 R2
        5 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
