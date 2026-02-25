MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Local", "Upvalue", "Global"}]
        2 LOADK                            R1 K0 ["Local"]
        3 SETTABLEKS                       R1 R0 K0 ["Local"]
        5 LOADK                            R1 K1 ["Upvalue"]
        6 SETTABLEKS                       R1 R0 K1 ["Upvalue"]
        8 LOADK                            R1 K2 ["Global"]
        9 SETTABLEKS                       R1 R0 K2 ["Global"]
       11 RETURN                           R0 1
