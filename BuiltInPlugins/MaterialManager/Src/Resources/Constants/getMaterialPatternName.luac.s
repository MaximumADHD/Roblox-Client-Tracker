PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K3 [Enum.MaterialPattern.Regular]
        5 LOADK                            R2 K2 ["Regular"]
        6 SETTABLE                         R2 R0 R1
        7 GETIMPORT                        R1 K5 [Enum.MaterialPattern.Organic]
        9 LOADK                            R2 K4 ["Organic"]
       10 SETTABLE                         R2 R0 R1
       11 DUPCLOSURE                       R1 K6 [PROTO_0]
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1
