MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Expanded", "Collapsed", "Width", "IconSize"}]
        2 LOADK                            R1 K5 ["rbxasset://textures/MaterialManager/chevrons-left.png"]
        3 SETTABLEKS                       R1 R0 K0 ["Expanded"]
        5 LOADK                            R1 K6 ["rbxasset://textures/MaterialManager/chevrons-right.png"]
        6 SETTABLEKS                       R1 R0 K1 ["Collapsed"]
        8 LOADN                            R1 110
        9 SETTABLEKS                       R1 R0 K2 ["Width"]
       11 LOADN                            R1 16
       12 SETTABLEKS                       R1 R0 K3 ["IconSize"]
       14 RETURN                           R0 1
