MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Hue", "Alpha"}]
        2 LOADK                            R1 K0 ["Hue"]
        3 SETTABLEKS                       R1 R0 K0 ["Hue"]
        5 LOADK                            R1 K1 ["Alpha"]
        6 SETTABLEKS                       R1 R0 K1 ["Alpha"]
        8 RETURN                           R0 1
