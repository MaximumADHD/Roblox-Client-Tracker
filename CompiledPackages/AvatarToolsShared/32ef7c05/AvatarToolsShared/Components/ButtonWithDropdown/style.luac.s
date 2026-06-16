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
       20 DUPTABLE                         R3 K19 [{"Color", "HoverColor", "SliceCenter", "SliceCenterFull", "BackgroundImageLeft", "BackgroundImageRight", "BackgroundImageFull", "ArrowSize", "ArrowIcon", "ButtonSpacing", "TextSize"}]
       21 GETTABLEKS                       R4 R2 K20 ["DialogMainButton"]
       23 SETTABLEKS                       R4 R3 K8 ["Color"]
       25 GETTABLEKS                       R4 R2 K21 ["DialogMainButtonHover"]
       27 SETTABLEKS                       R4 R3 K9 ["HoverColor"]
       29 GETIMPORT                        R4 K24 [Rect.new]
       31 LOADN                            R5 3
       32 LOADN                            R6 3
       33 LOADN                            R7 4
       34 LOADN                            R8 4
       35 CALL                             R4 4 1
       36 SETTABLEKS                       R4 R3 K10 ["SliceCenter"]
       38 GETIMPORT                        R4 K24 [Rect.new]
       40 LOADN                            R5 3
       41 LOADN                            R6 3
       42 LOADN                            R7 13
       43 LOADN                            R8 13
       44 CALL                             R4 4 1
       45 SETTABLEKS                       R4 R3 K11 ["SliceCenterFull"]
       47 LOADK                            R4 K25 ["rbxasset://textures/AvatarToolsShared/RoundedBackgroundLeft.png"]
       48 SETTABLEKS                       R4 R3 K12 ["BackgroundImageLeft"]
       50 LOADK                            R4 K26 ["rbxasset://textures/AvatarToolsShared/RoundedBackgroundRight.png"]
       51 SETTABLEKS                       R4 R3 K13 ["BackgroundImageRight"]
       53 LOADK                            R4 K27 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       54 SETTABLEKS                       R4 R3 K14 ["BackgroundImageFull"]
       56 LOADN                            R4 8
       57 SETTABLEKS                       R4 R3 K15 ["ArrowSize"]
       59 LOADK                            R4 K28 ["rbxasset://textures/DeveloperFramework/button_arrow_down.png"]
       60 SETTABLEKS                       R4 R3 K16 ["ArrowIcon"]
       62 LOADN                            R4 10
       63 SETTABLEKS                       R4 R3 K17 ["ButtonSpacing"]
       65 LOADN                            R4 16
       66 SETTABLEKS                       R4 R3 K18 ["TextSize"]
       68 RETURN                           R3 1
