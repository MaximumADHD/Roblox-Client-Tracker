PROTO_0:
        0 DUPTABLE                         R2 K4 [{"top", "bottom", "left", "right"}]
        1 SETTABLEKS                       R1 R2 K0 ["top"]
        3 SETTABLEKS                       R1 R2 K1 ["bottom"]
        5 SETTABLEKS                       R0 R2 K2 ["left"]
        7 SETTABLEKS                       R0 R2 K3 ["right"]
        9 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"top", "bottom", "left", "right"}]
        1 SETTABLEKS                       R0 R1 K0 ["top"]
        3 SETTABLEKS                       R0 R1 K1 ["bottom"]
        5 SETTABLEKS                       R0 R1 K2 ["left"]
        7 SETTABLEKS                       R0 R1 K3 ["right"]
        9 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R4 K4 [{"top", "bottom", "left", "right"}]
        1 SETTABLEKS                       R0 R4 K0 ["top"]
        3 SETTABLEKS                       R2 R4 K1 ["bottom"]
        5 SETTABLEKS                       R3 R4 K2 ["left"]
        7 SETTABLEKS                       R1 R4 K3 ["right"]
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"rectangle", "square", "quad"}]
        2 DUPCLOSURE                       R1 K4 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["rectangle"]
        5 DUPCLOSURE                       R1 K5 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K1 ["square"]
        8 DUPCLOSURE                       R1 K6 [PROTO_2]
        9 SETTABLEKS                       R1 R0 K2 ["quad"]
       11 RETURN                           R0 1
