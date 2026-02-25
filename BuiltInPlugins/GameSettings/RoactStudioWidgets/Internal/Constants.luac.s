MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"RADIO_BUTTON_SIZE", "BUTTON_WIDTH", "BUTTON_HEIGHT", "ROUNDED_BACKGROUND_IMAGE", "ROUNDED_BORDER_IMAGE", "ROUNDED_FRAME_SLICE", "TEXT_SIZE"}]
        2 LOADN                            R1 16
        3 SETTABLEKS                       R1 R0 K0 ["RADIO_BUTTON_SIZE"]
        5 LOADN                            R1 125
        6 SETTABLEKS                       R1 R0 K1 ["BUTTON_WIDTH"]
        8 LOADN                            R1 35
        9 SETTABLEKS                       R1 R0 K2 ["BUTTON_HEIGHT"]
       11 LOADK                            R1 K8 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       12 SETTABLEKS                       R1 R0 K3 ["ROUNDED_BACKGROUND_IMAGE"]
       14 LOADK                            R1 K9 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
       15 SETTABLEKS                       R1 R0 K4 ["ROUNDED_BORDER_IMAGE"]
       17 GETIMPORT                        R1 K12 [Rect.new]
       19 LOADN                            R2 3
       20 LOADN                            R3 3
       21 LOADN                            R4 13
       22 LOADN                            R5 13
       23 CALL                             R1 4 1
       24 SETTABLEKS                       R1 R0 K5 ["ROUNDED_FRAME_SLICE"]
       26 LOADN                            R1 22
       27 SETTABLEKS                       R1 R0 K6 ["TEXT_SIZE"]
       29 RETURN                           R0 1
