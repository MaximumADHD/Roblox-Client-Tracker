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
       23 DUPTABLE                         R3 K22 [{["VisualizationModesHighlightColor"] = "$Blue70", ["VisualizationModesHighlightTextColor"] = "$White", ["VisualizationModesDivider"] = "$Gray110", ["VisualizationModesDimActionHover"] = "$Gray80", ["VisualizationModesBadgeBackground"] = "$Gray70", ["VisualizationModesBadgeText"] = "$White"}]
       24 MOVE                             R4 R1
       25 CALL                             R4 0 1
       26 JUMPIF                           R4 ; [+6]
       27 LOADK                            R4 K23 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Dark/Standard/cameraSpeedLockOpen.png"]
       28 SETTABLEKS                       R4 R3 K24 ["VisualizationModesCameraSpeedUnlocked"]
       30 LOADK                            R4 K25 ["rbxasset://studio_svg_textures/Lua/VisualizationModes/Dark/Standard/cameraSpeedLockClosed.png"]
       31 SETTABLEKS                       R4 R3 K26 ["VisualizationModesCameraSpeedLocked"]
       33 GETTABLEKS                       R4 R2 K27 ["Styling"]
       35 GETTABLEKS                       R4 R4 K28 ["createStyleSheet"]
       37 LOADK                            R5 K29 ["VisualizationModesDarkTheme"]
       38 NEWTABLE                         R6 0 0
       40 MOVE                             R7 R3
       41 CALL                             R4 3 -1
       42 RETURN                           R4 -1
