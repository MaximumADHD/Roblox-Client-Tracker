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
        1 DUPTABLE                         R0 K1 [{"FFlagDebugMarkdown"}]
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["FFlagDebugMarkdown"]
        5 DUPCLOSURE                       R1 K2 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K3 ["get"]
        9 DUPCLOSURE                       R1 K4 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["set"]
       13 RETURN                           R0 1
