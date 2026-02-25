PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Theme"]
        3 GETTABLEKS                       R2 R3 K1 ["Name"]
        5 GETTABLE                         R1 R0 R2
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [settings]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K2 ["Studio"]
        6 DUPCLOSURE                       R1 K3 [PROTO_0]
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1
