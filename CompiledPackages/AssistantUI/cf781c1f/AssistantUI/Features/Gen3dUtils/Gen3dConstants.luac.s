MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"PLACEHOLDER_IMAGE", "PREVIEW_CAMERA_DISTANCE_MULTIPLIER", "PREVIEW_GENERATION_DELAY_TIME", "PREVIEW_HEIGHT", "PREVIEW_IMAGE_COUNT", "PREVIEW_SIZE_PX"}]
        2 LOADK                            R1 K7 ["rbxasset://textures/ui/GuiImagePlaceholder.png"]
        3 SETTABLEKS                       R1 R0 K0 ["PLACEHOLDER_IMAGE"]
        5 LOADK                            R1 K8 [0.5]
        6 SETTABLEKS                       R1 R0 K1 ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"]
        8 LOADK                            R1 K8 [0.5]
        9 SETTABLEKS                       R1 R0 K2 ["PREVIEW_GENERATION_DELAY_TIME"]
       11 LOADN                            R1 225
       12 SETTABLEKS                       R1 R0 K3 ["PREVIEW_HEIGHT"]
       14 LOADN                            R1 4
       15 SETTABLEKS                       R1 R0 K4 ["PREVIEW_IMAGE_COUNT"]
       17 LOADN                            R1 225
       18 SETTABLEKS                       R1 R0 K5 ["PREVIEW_SIZE_PX"]
       20 RETURN                           R0 1
