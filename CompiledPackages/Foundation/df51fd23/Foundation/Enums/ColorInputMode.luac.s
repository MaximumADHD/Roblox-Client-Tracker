MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"RGB", "RGBA", "HSV", "Hex", "Brick"}]
        2 LOADK                            R1 K0 ["RGB"]
        3 SETTABLEKS                       R1 R0 K0 ["RGB"]
        5 LOADK                            R1 K1 ["RGBA"]
        6 SETTABLEKS                       R1 R0 K1 ["RGBA"]
        8 LOADK                            R1 K2 ["HSV"]
        9 SETTABLEKS                       R1 R0 K2 ["HSV"]
       11 LOADK                            R1 K3 ["Hex"]
       12 SETTABLEKS                       R1 R0 K3 ["Hex"]
       14 LOADK                            R1 K4 ["Brick"]
       15 SETTABLEKS                       R1 R0 K4 ["Brick"]
       17 RETURN                           R0 1
