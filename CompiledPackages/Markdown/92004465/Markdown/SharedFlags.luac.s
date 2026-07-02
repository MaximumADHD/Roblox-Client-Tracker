PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = False}]
        2 DUPCLOSURE                       R1 K3 [PROTO_0]
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R1 R0 K4 ["get"]
        6 DUPCLOSURE                       R1 K5 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K6 ["set"]
       10 RETURN                           R0 1
