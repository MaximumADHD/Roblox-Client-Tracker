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
       20 DUPTABLE                         R3 K21 [{["Color"], ["HoverColor"], ["PressedColor"], ["BorderColor"], ["SliceCenter"], ["BackgroundImageLeft"] = "rbxasset://textures/AvatarToolsShared/RoundedBackgroundLeft.png", ["BorderImageLeft"] = "rbxasset://textures/AvatarToolsShared/RoundedBorderLeft.png", ["BackgroundImageRight"] = "rbxasset://textures/AvatarToolsShared/RoundedBackgroundRight.png", ["BorderImageRight"] = "rbxasset://textures/AvatarToolsShared/RoundedBorderRight.png"}]
       21 GETTABLEKS                       R4 R2 K22 ["MainBackground"]
       23 SETTABLEKS                       R4 R3 K8 ["Color"]
       25 GETTABLEKS                       R4 R2 K23 ["ButtonHover"]
       27 SETTABLEKS                       R4 R3 K9 ["HoverColor"]
       29 GETTABLEKS                       R4 R2 K24 ["DialogMainButton"]
       31 SETTABLEKS                       R4 R3 K10 ["PressedColor"]
       33 GETTABLEKS                       R4 R2 K25 ["Border"]
       35 SETTABLEKS                       R4 R3 K11 ["BorderColor"]
       37 GETIMPORT                        R4 K28 [Rect.new]
       39 LOADN                            R5 3
       40 LOADN                            R6 3
       41 LOADN                            R7 4
       42 LOADN                            R8 4
       43 CALL                             R4 4 1
       44 SETTABLEKS                       R4 R3 K12 ["SliceCenter"]
       46 RETURN                           R3 1
