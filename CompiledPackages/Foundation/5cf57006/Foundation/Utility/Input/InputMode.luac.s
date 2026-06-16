MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Directional", "Pointer", "Touch"}]
        2 LOADK                            R1 K0 ["Directional"]
        3 SETTABLEKS                       R1 R0 K0 ["Directional"]
        5 LOADK                            R1 K1 ["Pointer"]
        6 SETTABLEKS                       R1 R0 K1 ["Pointer"]
        8 LOADK                            R1 K2 ["Touch"]
        9 SETTABLEKS                       R1 R0 K2 ["Touch"]
       11 RETURN                           R0 1
