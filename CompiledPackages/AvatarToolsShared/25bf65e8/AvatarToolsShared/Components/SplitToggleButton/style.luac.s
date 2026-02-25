MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R3 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K17 [{"Color", "HoverColor", "PressedColor", "BorderColor", "SliceCenter", "BackgroundImageLeft", "BorderImageLeft", "BackgroundImageRight", "BorderImageRight"}]
       21 GETTABLEKS                       R4 R2 K18 ["MainBackground"]
       23 SETTABLEKS                       R4 R3 K8 ["Color"]
       25 GETTABLEKS                       R4 R2 K19 ["ButtonHover"]
       27 SETTABLEKS                       R4 R3 K9 ["HoverColor"]
       29 GETTABLEKS                       R4 R2 K20 ["DialogMainButton"]
       31 SETTABLEKS                       R4 R3 K10 ["PressedColor"]
       33 GETTABLEKS                       R4 R2 K21 ["Border"]
       35 SETTABLEKS                       R4 R3 K11 ["BorderColor"]
       37 GETIMPORT                        R4 K24 [Rect.new]
       39 LOADN                            R5 3
       40 LOADN                            R6 3
       41 LOADN                            R7 4
       42 LOADN                            R8 4
       43 CALL                             R4 4 1
       44 SETTABLEKS                       R4 R3 K12 ["SliceCenter"]
       46 LOADK                            R4 K25 ["rbxasset://textures/AvatarToolsShared/RoundedBackgroundLeft.png"]
       47 SETTABLEKS                       R4 R3 K13 ["BackgroundImageLeft"]
       49 LOADK                            R4 K26 ["rbxasset://textures/AvatarToolsShared/RoundedBorderLeft.png"]
       50 SETTABLEKS                       R4 R3 K14 ["BorderImageLeft"]
       52 LOADK                            R4 K27 ["rbxasset://textures/AvatarToolsShared/RoundedBackgroundRight.png"]
       53 SETTABLEKS                       R4 R3 K15 ["BackgroundImageRight"]
       55 LOADK                            R4 K28 ["rbxasset://textures/AvatarToolsShared/RoundedBorderRight.png"]
       56 SETTABLEKS                       R4 R3 K16 ["BorderImageRight"]
       58 RETURN                           R3 1
