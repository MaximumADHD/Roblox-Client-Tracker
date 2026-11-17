PROTO_0:
        0 DUPTABLE                         R0 K12 [{[1] = "v", ["AddPoint"] = "p", ["AddTangent"] = "t", ["Done"] = "return", ["DeletePoint"] = "delete", ["DeletePoint2"] = "backspace"}]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
