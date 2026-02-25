PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K3 [Enum.TerrainFace.Top]
        5 LOADK                            R2 K2 ["Top"]
        6 SETTABLE                         R2 R0 R1
        7 GETIMPORT                        R1 K5 [Enum.TerrainFace.Side]
        9 LOADK                            R2 K4 ["Side"]
       10 SETTABLE                         R2 R0 R1
       11 GETIMPORT                        R1 K7 [Enum.TerrainFace.Bottom]
       13 LOADK                            R2 K6 ["Bottom"]
       14 SETTABLE                         R2 R0 R1
       15 DUPCLOSURE                       R1 K8 [PROTO_0]
       16 CAPTURE                          VAL R0
       17 RETURN                           R1 1
