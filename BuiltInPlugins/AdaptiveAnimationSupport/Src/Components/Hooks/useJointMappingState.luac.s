PROTO_0:
        0 DUPTABLE                         R3 K2 [{"mapped", "label"}]
        1 GETTABLE                         R5 R2 R0
        2 JUMPIFEQKB                       R5 TRUE ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K0 ["mapped"]
        8 GETTABLE                         R4 R1 R0
        9 SETTABLEKS                       R4 R3 K1 ["label"]
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
