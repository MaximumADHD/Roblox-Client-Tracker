MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
        2 LOADK                            R1 K6 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png"]
        3 SETTABLEKS                       R1 R0 K0 ["PlayImage"]
        5 LOADK                            R1 K7 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
        6 SETTABLEKS                       R1 R0 K1 ["PauseImage"]
        8 LOADN                            R1 20
        9 SETTABLEKS                       R1 R0 K2 ["PlayButtonWidth"]
       11 LOADN                            R1 60
       12 SETTABLEKS                       R1 R0 K3 ["PlayTimeLabelWidth"]
       14 LOADN                            R1 24
       15 SETTABLEKS                       R1 R0 K4 ["Padding"]
       17 RETURN                           R0 1
