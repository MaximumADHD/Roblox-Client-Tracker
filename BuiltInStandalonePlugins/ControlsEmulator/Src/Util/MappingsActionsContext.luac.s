MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createContext"]
       16 DUPTABLE                         R3 K20 [{"connectGamepadId", "setMapping", "loadMappingsForGamepad", "setIsUpdatingMappingFor", "restoreDefaults", "saveMappings", "setIsMappingsDialogOpen", "setVRConnected", "changeEmulatedDevice", "setVRUserCFrameActive", "setVRCFrameTranslationSensitivity"}]
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K9 ["connectGamepadId"]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K10 ["setMapping"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K11 ["loadMappingsForGamepad"]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K12 ["setIsUpdatingMappingFor"]
       29 LOADNIL                          R4
       30 SETTABLEKS                       R4 R3 K13 ["restoreDefaults"]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K14 ["saveMappings"]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K15 ["setIsMappingsDialogOpen"]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K16 ["setVRConnected"]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R3 K17 ["changeEmulatedDevice"]
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K18 ["setVRUserCFrameActive"]
       47 LOADNIL                          R4
       48 SETTABLEKS                       R4 R3 K19 ["setVRCFrameTranslationSensitivity"]
       50 CALL                             R2 1 1
       51 RETURN                           R2 1
