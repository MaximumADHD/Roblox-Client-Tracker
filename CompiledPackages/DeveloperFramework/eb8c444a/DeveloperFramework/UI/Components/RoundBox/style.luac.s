MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K19 [{["Color"], ["BorderColor"], ["Transparency"] = 0, ["BorderTransparency"] = 0, ["BackgroundImage"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["BorderImage"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"]}]
       17 GETTABLEKS                       R3 R1 K20 ["MainBackground"]
       19 SETTABLEKS                       R3 R2 K9 ["Color"]
       21 GETTABLEKS                       R3 R1 K21 ["Border"]
       23 SETTABLEKS                       R3 R2 K10 ["BorderColor"]
       25 GETIMPORT                        R3 K24 [Rect.new]
       27 LOADN                            R4 3
       28 LOADN                            R5 3
       29 LOADN                            R6 13
       30 LOADN                            R7 13
       31 CALL                             R3 4 1
       32 SETTABLEKS                       R3 R2 K18 ["SliceCenter"]
       34 RETURN                           R2 1
