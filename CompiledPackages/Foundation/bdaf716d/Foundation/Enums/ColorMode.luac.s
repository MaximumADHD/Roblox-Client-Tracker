MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Color", "Inverse", "LightMode", "DarkMode"}]
        2 LOADK                            R1 K0 ["Color"]
        3 SETTABLEKS                       R1 R0 K0 ["Color"]
        5 LOADK                            R1 K1 ["Inverse"]
        6 SETTABLEKS                       R1 R0 K1 ["Inverse"]
        8 LOADK                            R1 K2 ["LightMode"]
        9 SETTABLEKS                       R1 R0 K2 ["LightMode"]
       11 LOADK                            R1 K3 ["DarkMode"]
       12 SETTABLEKS                       R1 R0 K3 ["DarkMode"]
       14 RETURN                           R0 1
