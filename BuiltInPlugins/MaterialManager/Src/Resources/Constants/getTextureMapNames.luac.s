PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{[1] = "ColorMap", ["MetalnessMap"] = "MetalnessMap", ["NormalMap"] = "NormalMap", ["RoughnessMap"] = "RoughnessMap", ["EmissiveMaskContent"] = "EmissiveMaskContent"}]
        2 DUPCLOSURE                       R1 K6 [PROTO_0]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
