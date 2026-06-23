MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"TopLeft", "TopRight", "BottomRight", "BottomLeft"}]
        2 LOADK                            R1 K5 ["TopLeftRadius"]
        3 SETTABLEKS                       R1 R0 K0 ["TopLeft"]
        5 LOADK                            R1 K6 ["TopRightRadius"]
        6 SETTABLEKS                       R1 R0 K1 ["TopRight"]
        8 LOADK                            R1 K7 ["BottomRightRadius"]
        9 SETTABLEKS                       R1 R0 K2 ["BottomRight"]
       11 LOADK                            R1 K8 ["BottomLeftRadius"]
       12 SETTABLEKS                       R1 R0 K3 ["BottomLeft"]
       14 RETURN                           R0 1
