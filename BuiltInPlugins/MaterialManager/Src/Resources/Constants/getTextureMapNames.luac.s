PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap", "EmissiveMaskContent"}]
        2 LOADK                            R1 K0 ["ColorMap"]
        3 SETTABLEKS                       R1 R0 K0 ["ColorMap"]
        5 LOADK                            R1 K1 ["MetalnessMap"]
        6 SETTABLEKS                       R1 R0 K1 ["MetalnessMap"]
        8 LOADK                            R1 K2 ["NormalMap"]
        9 SETTABLEKS                       R1 R0 K2 ["NormalMap"]
       11 LOADK                            R1 K3 ["RoughnessMap"]
       12 SETTABLEKS                       R1 R0 K3 ["RoughnessMap"]
       14 LOADK                            R1 K4 ["EmissiveMaskContent"]
       15 SETTABLEKS                       R1 R0 K4 ["EmissiveMaskContent"]
       17 DUPCLOSURE                       R1 K6 [PROTO_0]
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1
