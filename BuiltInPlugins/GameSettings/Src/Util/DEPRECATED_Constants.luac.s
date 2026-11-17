MAIN:
        0 PREPVARARGS                      0
        1 LOADN                            R0 267
        2 SETGLOBAL                        R0 K0 ["THUMBNAIL_WIDTH"]
        4 LOADN                            R0 150
        5 SETGLOBAL                        R0 K1 ["THUMBNAIL_HEIGHT"]
        7 DUPTABLE                         R0 K54 [{["MENU_BAR_WIDTH"] = 192, ["MENU_ENTRY_HEIGHT"] = 42, ["FRAME_PADDING"] = 36, ["CENTER_GUTTER"] = 180, ["ELEMENT_PADDING"] = 32, ["RADIO_BUTTON_SIZE"] = 16, ["RADIO_BUTTON_PADDING"] = 10, ["CHECKBOX_SIZE"] = 20, ["CHECKBOX_PADDING"] = 8, ["BUTTON_WIDTH"] = 125, ["BUTTON_HEIGHT"] = 35, ["HEADER_HEIGHT"] = 45, ["BLUE"], ["BLUE_DISABLED"], ["BLACK"], ["WHITE"], ["ROUNDED_BACKGROUND_IMAGE"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["ROUNDED_BORDER_IMAGE"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["ROUNDED_FRAME_SLICE"], ["ROUND_TEXT_BOX_DEFAULT_HEIGHT"] = 42, ["GRADIENT_IMAGE"] = "rbxasset://textures/gradient.png", ["GRADIENT_RECT_SIZE"], ["ERROR_IMAGE"] = "rbxasset://textures/GameSettings/ErrorIcon.png", ["ERROR_COLOR"], ["WARNING_IMAGE"] = "rbxasset://textures/GameSettings/Warning.png", ["MAX_THUMBNAILS"] = 10, ["VIDEO_PLACEHOLDER"] = "rbxasset://textures/GameSettings/placeholder.png", ["THUMBNAIL_PREVIEW_SIZE"], ["THUMBNAIL_SIZE"], ["BAD_REQUEST"] = 400, ["IMAGE_TYPES"], ["TEXT_SIZE"] = 22}]
        8 GETIMPORT                        R1 K57 [Color3.fromRGB]
       10 LOADN                            R2 0
       11 LOADN                            R3 162
       12 LOADN                            R4 255
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K26 ["BLUE"]
       16 GETIMPORT                        R1 K57 [Color3.fromRGB]
       18 LOADN                            R2 153
       19 LOADN                            R3 218
       20 LOADN                            R4 255
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K27 ["BLUE_DISABLED"]
       24 GETIMPORT                        R1 K59 [Color3.new]
       26 LOADN                            R2 0
       27 LOADN                            R3 0
       28 LOADN                            R4 0
       29 CALL                             R1 3 1
       30 SETTABLEKS                       R1 R0 K28 ["BLACK"]
       32 GETIMPORT                        R1 K59 [Color3.new]
       34 LOADN                            R2 1
       35 LOADN                            R3 1
       36 LOADN                            R4 1
       37 CALL                             R1 3 1
       38 SETTABLEKS                       R1 R0 K29 ["WHITE"]
       40 GETIMPORT                        R1 K61 [Rect.new]
       42 LOADN                            R2 3
       43 LOADN                            R3 3
       44 LOADN                            R4 13
       45 LOADN                            R5 13
       46 CALL                             R1 4 1
       47 SETTABLEKS                       R1 R0 K34 ["ROUNDED_FRAME_SLICE"]
       49 GETIMPORT                        R1 K63 [Vector2.new]
       51 LOADN                            R2 512
       52 LOADN                            R3 256
       53 CALL                             R1 2 1
       54 SETTABLEKS                       R1 R0 K38 ["GRADIENT_RECT_SIZE"]
       56 GETIMPORT                        R1 K59 [Color3.new]
       58 LOADN                            R2 1
       59 LOADK                            R3 K64 [0.266]
       60 LOADK                            R4 K64 [0.266]
       61 CALL                             R1 3 1
       62 SETTABLEKS                       R1 R0 K41 ["ERROR_COLOR"]
       64 GETIMPORT                        R1 K66 [UDim2.new]
       66 LOADN                            R2 0
       67 GETGLOBAL                        R4 K0 ["THUMBNAIL_WIDTH"]
       69 MULK                             R3 R4 K67 [2]
       70 LOADN                            R4 0
       71 GETGLOBAL                        R6 K1 ["THUMBNAIL_HEIGHT"]
       73 MULK                             R5 R6 K67 [2]
       74 CALL                             R1 4 1
       75 SETTABLEKS                       R1 R0 K47 ["THUMBNAIL_PREVIEW_SIZE"]
       77 GETIMPORT                        R1 K66 [UDim2.new]
       79 LOADN                            R2 0
       80 GETGLOBAL                        R3 K0 ["THUMBNAIL_WIDTH"]
       82 LOADN                            R4 0
       83 GETGLOBAL                        R5 K1 ["THUMBNAIL_HEIGHT"]
       85 CALL                             R1 4 1
       86 SETTABLEKS                       R1 R0 K48 ["THUMBNAIL_SIZE"]
       88 NEWTABLE                         R1 0 3
       90 LOADK                            R2 K68 ["jpg"]
       91 LOADK                            R3 K69 ["jpeg"]
       92 LOADK                            R4 K70 ["png"]
       93 SETLIST                          R1 R2 3 [1]
       95 SETTABLEKS                       R1 R0 K51 ["IMAGE_TYPES"]
       97 RETURN                           R0 1
