MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 12
        4 SETTABLEKS                       R1 R0 K0 ["ItemOffset"]
        6 LOADK                            R1 K1 ["rbxasset://textures/StudioSharedUI/dot.png"]
        7 SETTABLEKS                       R1 R0 K2 ["MarkerImage"]
        9 LOADN                            R1 4
       10 SETTABLEKS                       R1 R0 K3 ["MarkerSize"]
       12 LOADN                            R1 6
       13 SETTABLEKS                       R1 R0 K4 ["Padding"]
       15 LOADN                            R1 18
       16 SETTABLEKS                       R1 R0 K5 ["LineHeight"]
       18 DUPTABLE                         R1 K8 [{["ItemIndentation"] = 20}]
       19 SETTABLEKS                       R1 R0 K9 ["&SubItem"]
       21 RETURN                           R0 1
