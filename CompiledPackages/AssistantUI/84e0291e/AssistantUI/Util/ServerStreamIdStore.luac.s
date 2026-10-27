PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 4 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R2 R1 K1 ["set"]
        9 DUPCLOSURE                       R2 K2 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K3 ["get"]
       13 DUPCLOSURE                       R2 K4 [PROTO_2]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K5 ["remove"]
       17 RETURN                           R1 1
