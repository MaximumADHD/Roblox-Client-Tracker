PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R2 R2 K1 ["MinimumAge"]
        4 JUMPIFEQKN                       R2 K2 [17] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
