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
       16 DUPTABLE                         R2 K16 [{"Color", "BorderColor", "Transparency", "BorderTransparency", "BackgroundImage", "BorderImage", "SliceCenter"}]
       17 GETTABLEKS                       R3 R1 K17 ["MainBackground"]
       19 SETTABLEKS                       R3 R2 K9 ["Color"]
       21 GETTABLEKS                       R3 R1 K18 ["Border"]
       23 SETTABLEKS                       R3 R2 K10 ["BorderColor"]
       25 LOADN                            R3 0
       26 SETTABLEKS                       R3 R2 K11 ["Transparency"]
       28 LOADN                            R3 0
       29 SETTABLEKS                       R3 R2 K12 ["BorderTransparency"]
       31 LOADK                            R3 K19 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       32 SETTABLEKS                       R3 R2 K13 ["BackgroundImage"]
       34 LOADK                            R3 K20 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
       35 SETTABLEKS                       R3 R2 K14 ["BorderImage"]
       37 GETIMPORT                        R3 K23 [Rect.new]
       39 LOADN                            R4 3
       40 LOADN                            R5 3
       41 LOADN                            R6 13
       42 LOADN                            R7 13
       43 CALL                             R3 4 1
       44 SETTABLEKS                       R3 R2 K15 ["SliceCenter"]
       46 RETURN                           R2 1
