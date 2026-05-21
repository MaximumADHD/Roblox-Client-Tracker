MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Top", "Bottom", "Left", "Right"}]
        2 LOADK                            R1 K0 ["Top"]
        3 SETTABLEKS                       R1 R0 K0 ["Top"]
        5 LOADK                            R1 K1 ["Bottom"]
        6 SETTABLEKS                       R1 R0 K1 ["Bottom"]
        8 LOADK                            R1 K2 ["Left"]
        9 SETTABLEKS                       R1 R0 K2 ["Left"]
       11 LOADK                            R1 K3 ["Right"]
       12 SETTABLEKS                       R1 R0 K3 ["Right"]
       14 RETURN                           R0 1
