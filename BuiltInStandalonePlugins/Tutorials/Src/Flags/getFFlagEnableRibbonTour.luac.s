PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableRibbonTour2"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
