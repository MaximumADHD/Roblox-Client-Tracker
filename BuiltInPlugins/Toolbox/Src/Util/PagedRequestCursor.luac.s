PROTO_0:
        0 DUPTABLE                         R0 K1 [{"begin"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["begin"]
        4 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+6]
        1 DUPTABLE                         R1 K1 [{"nextPageCursor"}]
        2 GETTABLEKS                       R2 R0 K0 ["nextPageCursor"]
        4 SETTABLEKS                       R2 R1 K0 ["nextPageCursor"]
        6 RETURN                           R1 1
        7 NEWTABLE                         R1 0 0
        9 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["begin"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K1 ["nextPageCursor"]
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 LOADB                            R1 0
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["nextPageCursor"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["createDefaultCursor"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["createCursor"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["isNextPageAvailable"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["getNextPageCursor"]
       15 RETURN                           R0 1
