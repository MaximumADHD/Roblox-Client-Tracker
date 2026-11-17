MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K13 [{[1] = 16, ["BUTTON_WIDTH"] = 125, ["BUTTON_HEIGHT"] = 35, ["ROUNDED_BACKGROUND_IMAGE"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["ROUNDED_BORDER_IMAGE"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["ROUNDED_FRAME_SLICE"], ["TEXT_SIZE"] = 22}]
        2 GETIMPORT                        R1 K16 [Rect.new]
        4 LOADN                            R2 3
        5 LOADN                            R3 3
        6 LOADN                            R4 13
        7 LOADN                            R5 13
        8 CALL                             R1 4 1
        9 SETTABLEKS                       R1 R0 K10 ["ROUNDED_FRAME_SLICE"]
       11 RETURN                           R0 1
