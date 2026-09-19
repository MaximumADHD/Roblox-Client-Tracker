PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K3 [Enum.RibbonTool.Move]
        5 LOADB                            R2 1
        6 SETTABLE                         R2 R0 R1
        7 GETIMPORT                        R1 K5 [Enum.RibbonTool.Rotate]
        9 LOADB                            R2 1
       10 SETTABLE                         R2 R0 R1
       11 GETIMPORT                        R1 K7 [Enum.RibbonTool.Scale]
       13 LOADB                            R2 1
       14 SETTABLE                         R2 R0 R1
       15 GETIMPORT                        R1 K9 [Enum.RibbonTool.Select]
       17 LOADB                            R2 1
       18 SETTABLE                         R2 R0 R1
       19 DUPCLOSURE                       R1 K10 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1
