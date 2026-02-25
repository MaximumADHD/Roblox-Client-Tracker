MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Frame", "Source", "Function", "Line"}]
        2 LOADK                            R1 K5 ["FrameColumn"]
        3 SETTABLEKS                       R1 R0 K0 ["Frame"]
        5 LOADK                            R1 K6 ["SourceColumn"]
        6 SETTABLEKS                       R1 R0 K1 ["Source"]
        8 LOADK                            R1 K7 ["FunctionColumn"]
        9 SETTABLEKS                       R1 R0 K2 ["Function"]
       11 LOADK                            R1 K8 ["LineColumn"]
       12 SETTABLEKS                       R1 R0 K3 ["Line"]
       14 RETURN                           R0 1
