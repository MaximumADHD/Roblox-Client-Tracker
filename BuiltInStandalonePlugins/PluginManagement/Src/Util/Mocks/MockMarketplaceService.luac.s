PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 1 0
        2 DUPCLOSURE                       R1 K0 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K1 ["_productInfoFetcher"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_productInfoFetcher"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["_productInfoFetcher"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["GetProductInfoAsync"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["setProductInfoFetcher"]
       15 RETURN                           R0 1
