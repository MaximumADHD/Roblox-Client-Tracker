MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R2 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K26 [{["Color"], ["HoverColor"], ["SliceCenter"], ["SliceCenterFull"], ["BackgroundImageLeft"] = "rbxasset://textures/AvatarToolsShared/RoundedBackgroundLeft.png", ["BackgroundImageRight"] = "rbxasset://textures/AvatarToolsShared/RoundedBackgroundRight.png", ["BackgroundImageFull"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["ArrowSize"] = 8, ["ArrowIcon"] = "rbxasset://textures/DeveloperFramework/button_arrow_down.png", ["ButtonSpacing"] = 10, ["TextSize"] = 16}]
       21 GETTABLEKS                       R4 R2 K27 ["DialogMainButton"]
       23 SETTABLEKS                       R4 R3 K8 ["Color"]
       25 GETTABLEKS                       R4 R2 K28 ["DialogMainButtonHover"]
       27 SETTABLEKS                       R4 R3 K9 ["HoverColor"]
       29 GETIMPORT                        R4 K31 [Rect.new]
       31 LOADN                            R5 3
       32 LOADN                            R6 3
       33 LOADN                            R7 4
       34 LOADN                            R8 4
       35 CALL                             R4 4 1
       36 SETTABLEKS                       R4 R3 K10 ["SliceCenter"]
       38 GETIMPORT                        R4 K31 [Rect.new]
       40 LOADN                            R5 3
       41 LOADN                            R6 3
       42 LOADN                            R7 13
       43 LOADN                            R8 13
       44 CALL                             R4 4 1
       45 SETTABLEKS                       R4 R3 K11 ["SliceCenterFull"]
       47 RETURN                           R3 1
