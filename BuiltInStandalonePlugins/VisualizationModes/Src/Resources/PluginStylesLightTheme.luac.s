MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K16 [{"VisualizationModesHighlightColor", "VisualizationModesHighlightTextColor", "VisualizationModesDivider", "VisualizationModesDimActionHover", "VisualizationModesBadgeBackground", "VisualizationModesBadgeText", "VisualizationModesCameraSpeedUnlocked", "VisualizationModesCameraSpeedLocked"}]
       15 LOADK                            R3 K17 ["$Blue70"]
       16 SETTABLEKS                       R3 R2 K8 ["VisualizationModesHighlightColor"]
       18 LOADK                            R3 K18 ["$White"]
       19 SETTABLEKS                       R3 R2 K9 ["VisualizationModesHighlightTextColor"]
       21 LOADK                            R3 K19 ["$Gray50"]
       22 SETTABLEKS                       R3 R2 K10 ["VisualizationModesDivider"]
       24 LOADK                            R3 K20 ["$Gray30"]
       25 SETTABLEKS                       R3 R2 K11 ["VisualizationModesDimActionHover"]
       27 LOADK                            R3 K21 ["$Gray40"]
       28 SETTABLEKS                       R3 R2 K12 ["VisualizationModesBadgeBackground"]
       30 LOADK                            R3 K22 ["$Black"]
       31 SETTABLEKS                       R3 R2 K13 ["VisualizationModesBadgeText"]
       33 LOADK                            R3 K23 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Light/Standard/cameraSpeedLockOpen.png"]
       34 SETTABLEKS                       R3 R2 K14 ["VisualizationModesCameraSpeedUnlocked"]
       36 LOADK                            R3 K24 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Light/Standard/cameraSpeedLockClosed.png"]
       37 SETTABLEKS                       R3 R2 K15 ["VisualizationModesCameraSpeedLocked"]
       39 GETTABLEKS                       R3 R1 K25 ["Styling"]
       41 GETTABLEKS                       R3 R3 K26 ["createStyleSheet"]
       43 LOADK                            R4 K27 ["VisualizationModesLightTheme"]
       44 NEWTABLE                         R5 0 0
       46 MOVE                             R6 R2
       47 CALL                             R3 3 -1
       48 RETURN                           R3 -1
