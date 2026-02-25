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
       18 DUPTABLE                         R1 K7 [{"ItemIndentation"}]
       19 LOADN                            R2 20
       20 SETTABLEKS                       R2 R1 K6 ["ItemIndentation"]
       22 SETTABLEKS                       R1 R0 K8 ["&SubItem"]
       24 RETURN                           R0 1
