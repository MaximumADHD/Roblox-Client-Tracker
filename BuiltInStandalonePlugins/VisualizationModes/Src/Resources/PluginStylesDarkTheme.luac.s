MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getEngineFeatureNewCameraControls_BetaUpdate"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K17 [{"VisualizationModesHighlightColor", "VisualizationModesHighlightTextColor", "VisualizationModesDivider", "VisualizationModesDimActionHover", "VisualizationModesBadgeBackground", "VisualizationModesBadgeText"}]
       24 LOADK                            R4 K18 ["$Blue70"]
       25 SETTABLEKS                       R4 R3 K11 ["VisualizationModesHighlightColor"]
       27 LOADK                            R4 K19 ["$White"]
       28 SETTABLEKS                       R4 R3 K12 ["VisualizationModesHighlightTextColor"]
       30 LOADK                            R4 K20 ["$Gray110"]
       31 SETTABLEKS                       R4 R3 K13 ["VisualizationModesDivider"]
       33 LOADK                            R4 K21 ["$Gray80"]
       34 SETTABLEKS                       R4 R3 K14 ["VisualizationModesDimActionHover"]
       36 LOADK                            R4 K22 ["$Gray70"]
       37 SETTABLEKS                       R4 R3 K15 ["VisualizationModesBadgeBackground"]
       39 LOADK                            R4 K19 ["$White"]
       40 SETTABLEKS                       R4 R3 K16 ["VisualizationModesBadgeText"]
       42 MOVE                             R4 R1
       43 CALL                             R4 0 1
       44 JUMPIF                           R4 ; [+6]
       45 LOADK                            R4 K23 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Dark/Standard/cameraSpeedLockOpen.png"]
       46 SETTABLEKS                       R4 R3 K24 ["VisualizationModesCameraSpeedUnlocked"]
       48 LOADK                            R4 K25 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Dark/Standard/cameraSpeedLockClosed.png"]
       49 SETTABLEKS                       R4 R3 K26 ["VisualizationModesCameraSpeedLocked"]
       51 GETTABLEKS                       R4 R2 K27 ["Styling"]
       53 GETTABLEKS                       R4 R4 K28 ["createStyleSheet"]
       55 LOADK                            R5 K29 ["VisualizationModesDarkTheme"]
       56 NEWTABLE                         R6 0 0
       58 MOVE                             R7 R3
       59 CALL                             R4 3 -1
       60 RETURN                           R4 -1
